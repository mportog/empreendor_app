import 'package:conectando_negocios/repositories/personal_repository.dart';
import 'package:mobx/mobx.dart';
part 'personal_info_store.g.dart';

class PersonalStore = _PersonalStoreBase with _$PersonalStore;

abstract class _PersonalStoreBase with Store {
  PersonalInfoRepository _businnessRepository;

  _PersonalStoreBase() {
    _businnessRepository = PersonalInfoRepository();
  }

  @observable
  String cpfNnpj = '';
  @observable
  String fullName = '';
  @observable
  String phone = '';
  @observable
  String birth = '';
  @observable
  String email = '';
  @observable
  String confirmMail = '';

  DateTime dateOfBirth;

  @action
  String setCpfNnpj(String value) => cpfNnpj = value;
  @action
  String setFullName(String value) => fullName = value;
  @action
  String setPhone(String value) => phone = value;
  @action
  String setBirth(String value) => birth = value;
  @action
  String setEmail(String value) => email = value;
  @action
  String setConfirmMail(String value) => confirmMail = value;

  @computed
  String get getEmailConfirm =>
      email == confirmMail ? null : 'Email deve ser igual';
  @computed
  String get getBirthConfirm {
    if (birth.isNotEmpty) {
      try {
        var part = birth.split('/');
        var dateTime = '${part[2]}-${part[1]}-${part[0]}';
        dateOfBirth = DateTime.tryParse(dateTime);
        print('dateOfBirth: $dateOfBirth');
        return dateOfBirth != null ? null : 'Não corresponde a uma data';
      } catch (e) {
        print('error on datetime: $e');
        return null;
      }
    }

    return null;
  }
}
