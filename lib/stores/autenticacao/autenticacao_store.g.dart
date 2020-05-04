// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autenticacao_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AutenticacaoStore on _AutenticacaoStoreBase, Store {
  final _$checkTermosDeUsoAtom =
      Atom(name: '_AutenticacaoStoreBase.checkTermosDeUso');

  @override
  bool get checkTermosDeUso {
    _$checkTermosDeUsoAtom.context.enforceReadPolicy(_$checkTermosDeUsoAtom);
    _$checkTermosDeUsoAtom.reportObserved();
    return super.checkTermosDeUso;
  }

  @override
  set checkTermosDeUso(bool value) {
    _$checkTermosDeUsoAtom.context.conditionallyRunInAction(() {
      super.checkTermosDeUso = value;
      _$checkTermosDeUsoAtom.reportChanged();
    }, _$checkTermosDeUsoAtom, name: '${_$checkTermosDeUsoAtom.name}_set');
  }
}
