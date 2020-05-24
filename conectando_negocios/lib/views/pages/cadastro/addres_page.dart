import 'package:conectando_negocios/controllers/address_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _addressStore = Provider.of<AddressStore>(context);
  }

  AddressStore _addressStore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        elevation: 5,
        title: Text('Cadastro: Endereço'),
      ),
      body: Container(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              SizedBox(height: 20),
              Observer(
                builder: (_) => TextField(
                  enabled: !_addressStore.isLoading,
                  onChanged: _addressStore.setCep,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'CEP:',
                      prefix: Icon(Icons.location_on),
                      suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: _addressStore.isLoading
                              ? null
                              : _addressStore.getCepFromApi)),
                ),
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) => TextField(
                  onChanged: _addressStore.setStreet,
                  controller: _addressStore.txtStreet,
                  enabled: !_addressStore.isLoading && _addressStore.typeCep,
                  decoration: InputDecoration(labelText: 'Endereço:'),
                ),
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) => TextField(
                  onChanged: _addressStore.setCity,
                  controller: _addressStore.txtCity,
                  enabled: !_addressStore.isLoading && _addressStore.typeCep,
                  decoration: InputDecoration(labelText: 'Cidade:'),
                ),
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) => TextField(
                  onChanged: _addressStore.setState,
                  controller: _addressStore.txtState,
                  enabled: !_addressStore.isLoading && _addressStore.typeCep,
                  decoration: InputDecoration(labelText: 'Estado:'),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  enabled: !_addressStore.isLoading,
                  onChanged: _addressStore.setNumbCompl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Número:', prefix: Icon(Icons.location_city)),
                ),
              ),
              SizedBox(height: 20),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Observer(
                      builder: (_) => FlatButton(
                          onPressed: _addressStore.toggleTypeCep,
                          child: Text(
                            'Digitar endereço completo',
                            style: TextStyle(color: Colors.grey),
                          )),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      onPressed: () {},
                      child: Text('CONTINUAR',
                          style: TextStyle(color: Colors.white)),
                      color: Colors.indigoAccent,
                    ),
                  ]),
            ]),
      )),
    );
  }
}
