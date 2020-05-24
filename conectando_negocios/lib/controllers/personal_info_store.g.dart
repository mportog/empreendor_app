// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonalStore on _PersonalStoreBase, Store {
  Computed<String> _$getEmailConfirmComputed;

  @override
  String get getEmailConfirm => (_$getEmailConfirmComputed ??= Computed<String>(
          () => super.getEmailConfirm,
          name: '_PersonalStoreBase.getEmailConfirm'))
      .value;
  Computed<String> _$getBirthConfirmComputed;

  @override
  String get getBirthConfirm => (_$getBirthConfirmComputed ??= Computed<String>(
          () => super.getBirthConfirm,
          name: '_PersonalStoreBase.getBirthConfirm'))
      .value;

  final _$cpfNnpjAtom = Atom(name: '_PersonalStoreBase.cpfNnpj');

  @override
  String get cpfNnpj {
    _$cpfNnpjAtom.reportRead();
    return super.cpfNnpj;
  }

  @override
  set cpfNnpj(String value) {
    _$cpfNnpjAtom.reportWrite(value, super.cpfNnpj, () {
      super.cpfNnpj = value;
    });
  }

  final _$fullNameAtom = Atom(name: '_PersonalStoreBase.fullName');

  @override
  String get fullName {
    _$fullNameAtom.reportRead();
    return super.fullName;
  }

  @override
  set fullName(String value) {
    _$fullNameAtom.reportWrite(value, super.fullName, () {
      super.fullName = value;
    });
  }

  final _$phoneAtom = Atom(name: '_PersonalStoreBase.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  final _$birthAtom = Atom(name: '_PersonalStoreBase.birth');

  @override
  String get birth {
    _$birthAtom.reportRead();
    return super.birth;
  }

  @override
  set birth(String value) {
    _$birthAtom.reportWrite(value, super.birth, () {
      super.birth = value;
    });
  }

  final _$emailAtom = Atom(name: '_PersonalStoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$confirmMailAtom = Atom(name: '_PersonalStoreBase.confirmMail');

  @override
  String get confirmMail {
    _$confirmMailAtom.reportRead();
    return super.confirmMail;
  }

  @override
  set confirmMail(String value) {
    _$confirmMailAtom.reportWrite(value, super.confirmMail, () {
      super.confirmMail = value;
    });
  }

  final _$_PersonalStoreBaseActionController =
      ActionController(name: '_PersonalStoreBase');

  @override
  String setCpfNnpj(String value) {
    final _$actionInfo = _$_PersonalStoreBaseActionController.startAction(
        name: '_PersonalStoreBase.setCpfNnpj');
    try {
      return super.setCpfNnpj(value);
    } finally {
      _$_PersonalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setFullName(String value) {
    final _$actionInfo = _$_PersonalStoreBaseActionController.startAction(
        name: '_PersonalStoreBase.setFullName');
    try {
      return super.setFullName(value);
    } finally {
      _$_PersonalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setPhone(String value) {
    final _$actionInfo = _$_PersonalStoreBaseActionController.startAction(
        name: '_PersonalStoreBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_PersonalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setBirth(String value) {
    final _$actionInfo = _$_PersonalStoreBaseActionController.startAction(
        name: '_PersonalStoreBase.setBirth');
    try {
      return super.setBirth(value);
    } finally {
      _$_PersonalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setEmail(String value) {
    final _$actionInfo = _$_PersonalStoreBaseActionController.startAction(
        name: '_PersonalStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_PersonalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String setConfirmMail(String value) {
    final _$actionInfo = _$_PersonalStoreBaseActionController.startAction(
        name: '_PersonalStoreBase.setConfirmMail');
    try {
      return super.setConfirmMail(value);
    } finally {
      _$_PersonalStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cpfNnpj: ${cpfNnpj},
fullName: ${fullName},
phone: ${phone},
birth: ${birth},
email: ${email},
confirmMail: ${confirmMail},
getEmailConfirm: ${getEmailConfirm},
getBirthConfirm: ${getBirthConfirm}
    ''';
  }
}
