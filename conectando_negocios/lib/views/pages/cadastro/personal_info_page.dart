import 'package:conectando_negocios/controllers/login_store.dart';
import 'package:conectando_negocios/controllers/personal_info_store.dart';
import 'package:conectando_negocios/views/pages/cadastro/addres_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

class FormCadastroPage extends StatefulWidget {
  @override
  _FormCadastroPageState createState() => _FormCadastroPageState();
}

class _FormCadastroPageState extends State<FormCadastroPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _personalStore = Provider.of<PersonalStore>(context);
    _loginStore = Provider.of<LoginStore>(context);
    _loginDisposer = reaction((_) => _loginStore.loggedIn, (loggedIn) {
      if (loggedIn) _validForm();
    });
  }

  PersonalStore _personalStore;
  LoginStore _loginStore;
  ReactionDisposer _loginDisposer;
  @override
  void dispose() {
    _loginDisposer.reaction.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          elevation: 5,
          title: Text('Cadastro: Pessoal'),
        ),
        body: Container(
            child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10),
                TextField(
                  onChanged: _personalStore.setCpfNnpj,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      labelText: 'CPF ou CNPJ:',
                      prefix: Icon(Icons.assignment_ind)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.text,
                  onChanged: _personalStore.setFullName,
                  decoration: InputDecoration(
                      labelText: 'Nome completo:', prefix: Icon(Icons.person)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: _personalStore.setPhone,
                  decoration: InputDecoration(
                      hintText: '(XX) 9 4402-8922',
                      labelText: 'Celular:',
                      prefix: Icon(Icons.phone_android)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.datetime,
                  onChanged: _personalStore.setBirth,
                  decoration: InputDecoration(
                      hintText: 'dd/MM/aaaa',
                      errorText: _personalStore.getBirthConfirm,
                      labelText: 'Data de nascimento:',
                      prefix: Icon(Icons.event)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: _personalStore.setEmail,
                  decoration: InputDecoration(
                      labelText: 'E-mail:', prefix: Icon(Icons.mail)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: _personalStore.setConfirmMail,
                  decoration: InputDecoration(
                      errorText: _personalStore.getEmailConfirm,
                      labelText: 'Confirmar e-mail:',
                      prefix: Icon(Icons.contact_mail)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  onChanged: _personalStore.setSenha,
                  decoration: InputDecoration(
                      labelText: 'Senha:', prefix: Icon(Icons.lock)),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  onChanged: _personalStore.setConfirmSenha,
                  decoration: InputDecoration(
                      hintText: ' tamanho minimo 6',
                      errorText: _personalStore.getSenhaConfirm,
                      labelText: 'Confirmar senha:',
                      prefix: Icon(Icons.lock_outline)),
                ),
                SizedBox(height: 35),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Observer(
                        builder: (_) => RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: () => _loginStore.createAccount(
                              _personalStore.email, _personalStore.senha),
                          child: Center(
                              child: _loginStore.isLoading
                                  ? SpinKitThreeBounce(
                                      color: Colors.white, size: 20.0)
                                  : Text('CONTINUAR',
                                      style: TextStyle(color: Colors.white))),
                          color: Colors.indigoAccent,
                        ),
                      ),
                    ]),
              ]),
        )));
  }

  void _validForm() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => AddressPage()));
}
