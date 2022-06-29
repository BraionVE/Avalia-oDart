import '../../model/pessoa.dart';

abstract class InterfacePessoa {
  //interface
  @override
  void adicionar(Pessoa pessoa);

  @override
  void alterar(int codigo, Pessoa pessoa);

  @override
  List<Pessoa> listar();

  @override
  void removerPorCodigo(int codigo);

  Pessoa? buscarPorCodigo(int codigo);
  Pessoa? buscarPorEmail(String email);
}
