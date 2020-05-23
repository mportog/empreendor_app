import 'package:mobx/mobx.dart';
part 'account_businnes_store.g.dart';

class AccountBusinessStore = _AccountBusinessStoreBase
    with _$AccountBusinessStore;

abstract class _AccountBusinessStoreBase with Store {
  // BusinessRepository _businnessRepository;

  // _AccountBusinessStoreBase() {
  //   _businnessRepository = BusinessRepository();
  // }
  @observable
  int typeInvest = 0;
  @action
  void setType(int value) => typeInvest = value;
}
