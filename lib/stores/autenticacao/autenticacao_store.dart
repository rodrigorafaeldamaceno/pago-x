import 'package:mobx/mobx.dart';
part 'autenticacao_store.g.dart';

class AutenticacaoStore = _AutenticacaoStoreBase with _$AutenticacaoStore;

abstract class _AutenticacaoStoreBase with Store {
  @observable
  bool checkTermosDeUso = false;
}
