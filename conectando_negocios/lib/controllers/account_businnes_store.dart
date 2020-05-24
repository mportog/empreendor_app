import 'package:conectando_negocios/repositories/business_repository.dart';
import 'package:mobx/mobx.dart';
part 'account_businnes_store.g.dart';

class AccountBusinessStore = _AccountBusinessStoreBase
    with _$AccountBusinessStore;

abstract class _AccountBusinessStoreBase with Store {
  BusinessRepository _businessRepository;
  _AccountBusinessStoreBase() {
    _businessRepository = BusinessRepository();
  }

  @observable
  int typeInvest = 0;
  @action
  void setTypeInvestor() => typeInvest = 1;
  @action
  void setTypeInvestee() => typeInvest = 2;
  @computed
  bool get getTypeAccount => typeInvest != 0;
}
