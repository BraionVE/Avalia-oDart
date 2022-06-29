import '../../model/pessoa.dart';
import 'interefacePessoa.dart';

class RepositorioPessoa implements InterfacePessoa {
  List<Pessoa> listaPessoas = [];

  @override
  void adicionar(Pessoa pessoa) {
    listaPessoas.add(pessoa);
  }

  @override
  void alterar(int codigo, Pessoa pessoa) {
    for (Pessoa element in listaPessoas) {
      if (element.codigo == codigo) {
        element.nome = pessoa.nome;
        element.nascimento = pessoa.nascimento;
        element.email == pessoa.email;
        element.endereco == pessoa.endereco;
      }
    }
  }

  @override
  Pessoa? buscarPorCodigo(int codigo) {
    for (Pessoa element in listaPessoas) {
      if (element.codigo == codigo) {
        return element;
      }
    }
    return null;
  }

  @override
  Pessoa? buscarPorEmail(String email) {
    for (Pessoa element in listaPessoas) {
      if (element.email == email) {
        return element;
      }
    }
    return null;
  }

  @override
  List<Pessoa> listar() {
    return listaPessoas;
  }

  @override
  void removerPorCodigo(int codigo) {
    listaPessoas.removeWhere((element) => element.codigo == codigo);
  }
}
