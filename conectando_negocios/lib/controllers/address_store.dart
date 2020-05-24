import 'package:conectando_negocios/repositories/address_repository.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'address_store.g.dart';

class AddressStore = _AddressStoreBase with _$AddressStore;

abstract class _AddressStoreBase with Store {
  AddressRepository _addressRepository;
  _AddressStoreBase() {
    _addressRepository = AddressRepository();
  }
  @observable
  String cep = '';
  @observable
  bool isLoading = false;
  @observable
  bool typeCep = false;
  @observable
  TextEditingController txtState = TextEditingController();
  @observable
  TextEditingController txtStreet = TextEditingController();
  @observable
  TextEditingController txtCity = TextEditingController();
  @observable
  TextEditingController txtNumberComple = TextEditingController();

  @action
  void toggleTypeCep() => typeCep = !typeCep;
  @action
  void setCep(String value) => cep = value;
  @action
  void setStreet(String value) => txtStreet.text = value;
  @action
  void setCity(String value) => txtCity.text = value;
  @action
  void setState(String value) => txtState.text = value;
  @action
  void setNumbCompl(String value) => txtNumberComple.text = value;

  @action
  void getCepFromApi() async {
    if (cep.length == 8) {
      isLoading = true;
      var data = await _addressRepository.getFromApi(cep);
      if (data.status == 200) {
        txtStreet.text = '${data.logradouro}. ${data.bairro}';
        txtCity.text = '${data.localidade}';
        txtState.text = '${data.uf}';
      }
    }
    isLoading = false;
  }
}
