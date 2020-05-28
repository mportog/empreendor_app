import 'package:conectando_negocios/shared/user_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserProfile _userModel = UserProfile.getInstance();
  FirebaseUser user;

  Future<bool> getLogin(String username, String pass) async {
    try {
      user = await _auth
          .signInWithEmailAndPassword(
            email: username,
            password: pass,
          )
          .then((value) => value.user);
      print('print user: ${user.email}');
      _userModel.login.error = '';
      _userModel.login.token =
          await user.getIdToken().then((value) => value.token.toString());
      _userModel.login.username = user.email;
      return true;
    } catch (e) {
      _userModel.login.error = '';
      _userModel.login.token = '';
      _userModel.login.username = '';
      print('error: $e');
      return false;
    }
  }

  Future<bool> createUser(String username, String pass) async {
    try {
      user = (await _auth.createUserWithEmailAndPassword(
              email: username, password: pass))
          .user;
      print('print user: ${user.email}');
      _userModel.login.error = '';
      _userModel.login.token =
          await user.getIdToken().then((value) => value.token.toString());
      _userModel.login.username = user.email;
      return true;
    } catch (e) {
      _userModel.login.error = '';
      _userModel.login.token = '';
      _userModel.login.username = '';
      print('error: $e');
      return false;
    }
  }
}
