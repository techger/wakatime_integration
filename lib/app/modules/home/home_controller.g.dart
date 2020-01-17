// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<bool> _$isPersistUserComputed;

  @override
  bool get isPersistUser =>
      (_$isPersistUserComputed ??= Computed<bool>(() => super.isPersistUser))
          .value;
  Computed<bool> _$isSearchWakatimeUserComputed;

  @override
  bool get isSearchWakatimeUser => (_$isSearchWakatimeUserComputed ??=
          Computed<bool>(() => super.isSearchWakatimeUser))
      .value;
  Computed<String> _$getMessageWelcomeComputed;

  @override
  String get getMessageWelcome => (_$getMessageWelcomeComputed ??=
          Computed<String>(() => super.getMessageWelcome))
      .value;

  final _$userAtom = Atom(name: '_HomeBase.user');

  @override
  User get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$isLoadingAtom = Atom(name: '_HomeBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$persistUserInBoxAtom = Atom(name: '_HomeBase.persistUserInBox');

  @override
  bool get persistUserInBox {
    _$persistUserInBoxAtom.context.enforceReadPolicy(_$persistUserInBoxAtom);
    _$persistUserInBoxAtom.reportObserved();
    return super.persistUserInBox;
  }

  @override
  set persistUserInBox(bool value) {
    _$persistUserInBoxAtom.context.conditionallyRunInAction(() {
      super.persistUserInBox = value;
      _$persistUserInBoxAtom.reportChanged();
    }, _$persistUserInBoxAtom, name: '${_$persistUserInBoxAtom.name}_set');
  }

  final _$appBarColorAtom = Atom(name: '_HomeBase.appBarColor');

  @override
  bool get appBarColor {
    _$appBarColorAtom.context.enforceReadPolicy(_$appBarColorAtom);
    _$appBarColorAtom.reportObserved();
    return super.appBarColor;
  }

  @override
  set appBarColor(bool value) {
    _$appBarColorAtom.context.conditionallyRunInAction(() {
      super.appBarColor = value;
      _$appBarColorAtom.reportChanged();
    }, _$appBarColorAtom, name: '${_$appBarColorAtom.name}_set');
  }

  final _$insertSecretApiAsyncAction = AsyncAction('insertSecretApi');

  @override
  Future<User> insertSecretApi(String _secretApi) {
    return _$insertSecretApiAsyncAction
        .run(() => super.insertSecretApi(_secretApi));
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void userAnotherAccount() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.userAnotherAccount();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void persistUser() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.persistUser();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void appBarColorDefault() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.appBarColorDefault();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
