import '../../model/curso.dart';
import '../../model/pessoa.dart';
import 'interfaceCurso.dart';

class RepositorioCurso implements InterfaceCurso {
  List<Curso> listaCurso = [];

  @override
  criarCurso(Curso curso) {
    listaCurso.add(curso);
  }

  @override
  excluirCurso(int codCurso) {
    listaCurso.removeWhere((element) => element.codigoCurso == codCurso);
  }

  @override
  List<Curso>? listarCurso() {
    return listaCurso;
  }

  @override
  void alterarCurso(int codigo, Curso curso) {
    for (Curso element in listaCurso) {
      if (element.codigoCurso == codigo) {
        element.nome = curso.nome;
        element.totalDeAlunos = curso.totalDeAlunos;
      }
    }
  }
}
