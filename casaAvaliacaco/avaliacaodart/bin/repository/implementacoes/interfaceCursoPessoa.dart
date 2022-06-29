import '../../model/pessoa.dart';

abstract class interfaceCursoPessoa {
  void adicionarPessoa(); //Adicionar alunos e professorers no curso

  void excluirPessoa(); //Excluir alunos e professorers no curso

  List<Pessoa>?
      listaPessoaNoCurso(); //Lista os alunos e professores matriculados no curso

}
