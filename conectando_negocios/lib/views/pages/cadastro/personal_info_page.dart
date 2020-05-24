import 'package:conectando_negocios/controllers/account_businnes_store.dart';
import 'package:conectando_negocios/controllers/personal_info_store.dart';
import 'package:conectando_negocios/views/pages/cadastro/addres_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class FormCadastroPage extends StatefulWidget {
  @override
  _FormCadastroPageState createState() => _FormCadastroPageState();
}

class _FormCadastroPageState extends State<FormCadastroPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _businessStore = Provider.of<PersonalStore>(context);
  }

  PersonalStore _businessStore;
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
          child: Observer(
            builder: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10),
                  TextField(
                    onChanged: _businessStore.setCpfNnpj,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        labelText: 'CPF ou CNPJ:',
                        prefix: Icon(Icons.assignment_ind)),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.text,
                    onChanged: _businessStore.setFullName,
                    decoration: InputDecoration(
                        labelText: 'Nome completo:',
                        prefix: Icon(Icons.person)),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.number,
                    onChanged: _businessStore.setPhone,
                    decoration: InputDecoration(
                        hintText: '(XX) 9 4402-8922',
                        labelText: 'Celular:',
                        prefix: Icon(Icons.phone_android)),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.datetime,
                    onChanged: _businessStore.setBirth,
                    decoration: InputDecoration(
                        hintText: 'dd/MM/aaaa',
                        errorText: _businessStore.getBirthConfirm,
                        labelText: 'Data de nascimento:',
                        prefix: Icon(Icons.event)),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: _businessStore.setEmail,
                    decoration: InputDecoration(
                        labelText: 'E-mail:', prefix: Icon(Icons.mail)),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: _businessStore.setConfirmMail,
                    decoration: InputDecoration(
                        errorText: _businessStore.getEmailConfirm,
                        labelText: 'Confirmar e-mail:',
                        prefix: Icon(Icons.contact_mail)),
                  ),
                  SizedBox(height: 35),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          onPressed: _businessStore.getEmailConfirm == null
                              ? _validForm
                              : null,
                          child: Text('CONTINUAR',
                              style: TextStyle(color: Colors.white)),
                          color: Colors.indigoAccent,
                        ),
                      ]),
                ]),
          ),
        )));
  }

  void _validForm() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => AddressPage()));
}
