import 'package:conectando_negocios/models/address.dart';
import 'package:conectando_negocios/models/business.dart';
import 'package:conectando_negocios/models/login.dart';
import 'package:conectando_negocios/models/personal.dart';
import 'package:conectando_negocios/models/revenue.dart';

class UserModel {
  Login login;
  Address address;
  Businness businness;
  Revenue revenue;
  Personal personal;

  UserModel(
      {this.login, this.address, this.businness, this.revenue, this.personal});

  UserModel.fromJson(Map<String, dynamic> json) {
    login = json['login'] != null ? new Login.fromJson(json['login']) : null;
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
    businness = json['businness'] != null
        ? new Businness.fromJson(json['businness'])
        : null;
    revenue =
        json['revenue'] != null ? new Revenue.fromJson(json['revenue']) : null;
    personal = json['personal'] != null
        ? new Personal.fromJson(json['personal'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.login != null) {
      data['login'] = this.login.toJson();
    }
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    if (this.businness != null) {
      data['businness'] = this.businness.toJson();
    }
    if (this.revenue != null) {
      data['revenue'] = this.revenue.toJson();
    }
    if (this.personal != null) {
      data['personal'] = this.personal.toJson();
    }
    return data;
  }
}
