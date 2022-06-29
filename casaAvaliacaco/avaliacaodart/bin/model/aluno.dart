import 'notaAluno.dart';
import 'pessoa.dart';

class Aluno extends Pessoa {
  //é uma classe filha da classe Pessoa e pode usar seus atributos

  List<NotaAluno>? nota = []; //Cria uma lista de objetos de nota aluno

  @override
  String toString() {
    return 'Aluno(código=$codigo, nome=$nome, email=$email, nascimento=$nascimento, endereço=$endereco)';
  }
}
