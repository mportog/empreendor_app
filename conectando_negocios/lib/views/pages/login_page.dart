import 'package:conectando_negocios/controllers/login_store.dart';
import 'package:conectando_negocios/views/pages/cadastro/type_cadastro_page.dart';
import 'package:conectando_negocios/views/widgets/backgound.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loginStore = Provider.of<LoginStore>(context);
    _loginDisposer = reaction((_) => _loginStore.loggedIn, (loggedIn) {
      if (loggedIn) _loggedIn();
    });
  }

  ReactionDisposer _loginDisposer;
  LoginStore _loginStore;

  @override
  void dispose() {
    _loginDisposer.reaction.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      Background(MediaQuery.of(context).size.height * 0.45,
          MediaQuery.of(context).size.width),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: _loginStore.setLogin,
          decoration: InputDecoration(
              labelText: 'Email', enabled: !_loginStore.isLoading),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Observer(
          builder: (_) => TextField(
            onChanged: _loginStore.setPass,
            obscureText: _loginStore.obscure,
            decoration: InputDecoration(
              labelText: 'Senha',
              enabled: !_loginStore.isLoading,
              suffixIcon: GestureDetector(
                onTap: _loginStore.toggleObscure,
                child: Icon(
                  _loginStore.obscure ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: () {},
                    child: Text('Esqueci minha senha',
                        style: TextStyle(color: Colors.grey))),
                Observer(
                    builder: (_) => RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        onPressed: _loginStore.login,
                        child: Center(
                            child: _loginStore.isLoading
                                ? SpinKitThreeBounce(
                                    color: Colors.white, size: 20.0)
                                : Text('Entrar'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))),
                        color: Colors.indigoAccent)),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    textColor: Colors.grey,
                    onPressed: () {},
                    child: Text('CADASTRAR'),
                    color: Colors.white)
              ]))
    ])));
  }

  void _loggedIn() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => TypeCadastroPage()));
  }
}
