// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_businnes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AccountBusinessStore on _AccountBusinessStoreBase, Store {
  Computed<bool> _$getTypeAccountComputed;

  @override
  bool get getTypeAccount =>
      (_$getTypeAccountComputed ??= Computed<bool>(() => super.getTypeAccount,
              name: '_AccountBusinessStoreBase.getTypeAccount'))
          .value;

  final _$typeInvestAtom = Atom(name: '_AccountBusinessStoreBase.typeInvest');

  @override
  int get typeInvest {
    _$typeInvestAtom.reportRead();
    return super.typeInvest;
  }

  @override
  set typeInvest(int value) {
    _$typeInvestAtom.reportWrite(value, super.typeInvest, () {
      super.typeInvest = value;
    });
  }

  final _$_AccountBusinessStoreBaseActionController =
      ActionController(name: '_AccountBusinessStoreBase');

  @override
  void setTypeInvestor() {
    final _$actionInfo = _$_AccountBusinessStoreBaseActionController
        .startAction(name: '_AccountBusinessStoreBase.setTypeInvestor');
    try {
      return super.setTypeInvestor();
    } finally {
      _$_AccountBusinessStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTypeInvestee() {
    final _$actionInfo = _$_AccountBusinessStoreBaseActionController
        .startAction(name: '_AccountBusinessStoreBase.setTypeInvestee');
    try {
      return super.setTypeInvestee();
    } finally {
      _$_AccountBusinessStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
typeInvest: ${typeInvest},
getTypeAccount: ${getTypeAccount}
    ''';
  }
}
