import 'dart:convert';

import 'package:conectando_negocios/models/cep.dart';
import 'package:http/http.dart' as http;

class AddressRepository {
//     final FirebaseAuth _auth = FirebaseAuth.instance;
//   final UserProfile _userModel = UserProfile.getInstance();
  Future<Cep> getFromApi(String endPoint) async {
    try {
      String completUrl = 'https://viacep.com.br/ws/$endPoint/json/';
      http.Response response = await http.get(completUrl);
      var ret = Cep.fromJson(jsonDecode(response.body));
      ret.status = response.statusCode;
      return ret;
    } catch (e) {
      print('ERROR ON HTTP GET CEP - $endPoint:  $e');
      return Cep();
    }
  }
}
