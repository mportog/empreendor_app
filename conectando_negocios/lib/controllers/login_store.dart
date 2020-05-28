import 'package:conectando_negocios/repositories/login_repository.dart';
import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  LoginRepository _loginRepository;

  _LoginStoreBase() {
    _loginRepository = LoginRepository();
  }
  @observable
  bool isLoading = false;
  @observable
  bool loggedIn = false;
  @observable
  bool obscure = true;
  @observable
  String error = '';
  @observable
  String email = '';
  @observable
  String pass = '';
  @action
  void setLogin(String newValue) => email = newValue;
  @action
  void setPass(String newValue) => pass = newValue;
  @action
  void toggleObscure() => obscure = !obscure;
  @action
  Future<void> login() async {
    isLoading = true;
    error = '';
    error = email.length > 5
        ? pass.length > 4 ? '' : 'Tamanho minimo de senha (4) não atingido'
        : 'email com erros';
    try {
      if (error.isEmpty)
        loggedIn = await _loginRepository.getLogin(email, pass);
    } catch (e) {} finally {
      isLoading = false;
    }
  }

  @action
  createAccount(String user, String pass) async {
    isLoading = true;
    this.email = user;
    this.pass = pass;
    error = '';
    error = email.length > 5
        ? pass.length > 4 ? '' : 'Tamanho minimo de senha (6) não atingido'
        : 'email com erros';
    if (error.isEmpty)
      loggedIn = await _loginRepository.createUser(email, pass);
    isLoading = false;
  }
}
