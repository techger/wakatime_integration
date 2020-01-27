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
  Computed<int> _$getCurrentIndexOnPageViewComputed;

  @override
  int get getCurrentIndexOnPageView => (_$getCurrentIndexOnPageViewComputed ??=
          Computed<int>(() => super.getCurrentIndexOnPageView))
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

  final _$loggedUserAtom = Atom(name: '_HomeBase.loggedUser');

  @override
  User get loggedUser {
    _$loggedUserAtom.context.enforceReadPolicy(_$loggedUserAtom);
    _$loggedUserAtom.reportObserved();
    return super.loggedUser;
  }

  @override
  set loggedUser(User value) {
    _$loggedUserAtom.context.conditionallyRunInAction(() {
      super.loggedUser = value;
      _$loggedUserAtom.reportChanged();
    }, _$loggedUserAtom, name: '${_$loggedUserAtom.name}_set');
  }

  final _$isLoadingLoggedUserAtom = Atom(name: '_HomeBase.isLoadingLoggedUser');

  @override
  bool get isLoadingLoggedUser {
    _$isLoadingLoggedUserAtom.context
        .enforceReadPolicy(_$isLoadingLoggedUserAtom);
    _$isLoadingLoggedUserAtom.reportObserved();
    return super.isLoadingLoggedUser;
  }

  @override
  set isLoadingLoggedUser(bool value) {
    _$isLoadingLoggedUserAtom.context.conditionallyRunInAction(() {
      super.isLoadingLoggedUser = value;
      _$isLoadingLoggedUserAtom.reportChanged();
    }, _$isLoadingLoggedUserAtom,
        name: '${_$isLoadingLoggedUserAtom.name}_set');
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

  final _$positionPageViewAtom = Atom(name: '_HomeBase.positionPageView');

  @override
  int get positionPageView {
    _$positionPageViewAtom.context.enforceReadPolicy(_$positionPageViewAtom);
    _$positionPageViewAtom.reportObserved();
    return super.positionPageView;
  }

  @override
  set positionPageView(int value) {
    _$positionPageViewAtom.context.conditionallyRunInAction(() {
      super.positionPageView = value;
      _$positionPageViewAtom.reportChanged();
    }, _$positionPageViewAtom, name: '${_$positionPageViewAtom.name}_set');
  }

  final _$insertSecretApiAsyncAction = AsyncAction('insertSecretApi');

  @override
  Future<User> insertSecretApi(String _secretApi) {
    return _$insertSecretApiAsyncAction
        .run(() => super.insertSecretApi(_secretApi));
  }

  final _$launchSecretApiKeyAsyncAction = AsyncAction('launchSecretApiKey');

  @override
  Future<void> launchSecretApiKey() {
    return _$launchSecretApiKeyAsyncAction
        .run(() => super.launchSecretApiKey());
  }

  final _$saveUserInHiveAsyncAction = AsyncAction('saveUserInHive');

  @override
  Future<dynamic> saveUserInHive() {
    return _$saveUserInHiveAsyncAction.run(() => super.saveUserInHive());
  }

  final _$checkIfLoggedUserAsyncAction = AsyncAction('checkIfLoggedUser');

  @override
  Future<void> checkIfLoggedUser() {
    return _$checkIfLoggedUserAsyncAction.run(() => super.checkIfLoggedUser());
  }

  final _$logoutAsyncAction = AsyncAction('logout');

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void onPageChanged(int index) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.onPageChanged(index);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

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
  void appBarColorDefault() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.appBarColorDefault();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
