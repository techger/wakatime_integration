// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<String> _$getUserComputed;

  @override
  String get getUser =>
      (_$getUserComputed ??= Computed<String>(() => super.getUser)).value;

  final _$emailAtom = Atom(name: '_HomeBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$insertSecretApiAsyncAction = AsyncAction('insertSecretApi');

  @override
  Future<String> insertSecretApi(String _secretApi) {
    return _$insertSecretApiAsyncAction
        .run(() => super.insertSecretApi(_secretApi));
  }
}
