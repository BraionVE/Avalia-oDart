import 'dart:web_gl';

import '../model/aluno.dart';
import '../model/pessoa.dart';
import '../model/professor.dart';
import '../repository/implementacoes/interefacePessoa.dart';
import '../repository/implementacoes/repositorioPessoa.dart';

class PessoaService {
  InterfacePessoa pessoaRepository = RepositorioPessoa();

  int codigo = 0;

  Pessoa? buscarPorEmail(String email) {
    return pessoaRepository.buscarPorEmail(email);
  }

  void cadastrarAluno(
      String nome, String email, DateTime nascimento, String endereco) {
    Aluno aluno = Aluno();
    aluno.codigo = ++codigo;
    aluno.nome = nome;
    aluno.email = email;
    aluno.nascimento = nascimento;
    aluno.endereco = endereco;
    aluno.nota = [];
  }

  List<Aluno> listarAlunos() {
    List<Pessoa> pessoas = pessoaRepository.listar();

    List<Aluno> lista = [];

    for (Pessoa p in pessoas) {
      if (p is Aluno) {
        lista.add(p);
      }
    }
    return lista;
  }

  void cadastrarProfessor(
      String nome, String email, DateTime nascimento, String endereco) {
    Professor professor = Professor();
    professor.codigo = ++codigo;
    professor.nome = nome;
    professor.email = email;
    professor.nascimento = nascimento;
    professor.endereco = endereco;
    professor.salario = 0;
  }
}
