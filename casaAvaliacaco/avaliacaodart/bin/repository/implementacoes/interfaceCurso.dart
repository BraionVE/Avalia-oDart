import '../../model/curso.dart';

abstract class InterfaceCurso {
  void criarCurso(
      Curso
          curso); //Assim que se declara um método para ser chamado posteriormente

  void excluirCurso(int codigoCurso);

  //TODO alterar;
  void alterarCurso(int codigo, Curso curso);

  List<Curso>? listarCurso(); //Assim que se declara um método com lista

}
