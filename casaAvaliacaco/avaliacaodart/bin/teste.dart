// import 'dart:io';

// void main(List<String> args) {
//   print(
//       "Digite o número do que deseja \n 1) cadastrar curso \n cadastrar professor \n cadastrar aluno");
//   String opcao = stdin.readLineSync()!;

//   switch (opcao) {
//     case '1':
//       print('cadastrar aluno');
//       break;
//     case '2':
//       print('cadastrar professor');
//       break;
//     case '3':
//       print('cadastrar aluno');
//       break;
//   }
// }

import 'dart:io';

import 'model/aluno.dart';
import 'service/pessoaService.dart';

PessoaService pessoaService = PessoaService();

void main(List<String> args) {
  dateFormat = DateFormat('dd/MM/yyyy');

  int opcao = 0;
  do {
    print('Informe a opção: 1 Cadastrar / 2 Alterar / 3 Excluir / 4 Listar');
    String texto = stdin.readLineSync()!;
    opcao = int.parse(texto);

    switch (opcao) {
      case 1:
        print('Infomre e-mail:');
        String email = stdin.readLineSync()!;
        if (pessoaService.buscarPorEmail(email) == null) {
          print('Nome Completo:');
          String nome = stdin.readLineSync()!;
          print('Data de nascimento:');
          String dtNasc = stdin.readLineSync()!;
          DateTime nascimento =  .parse(dtNasc);
          print('Endereço:');
          String endereco = stdin.readLineSync()!;

          pessoaService.cadastrarAluno(nome, email, nascimento, endereco);
        } else {
          print('Email já cadastrado!');
        }
        break;
      case 2:
        print('Nome completo');
        break;
      case 3:
        break;
      case 4:
        List<Aluno> alunos = pessoaService.listarAlunos();
        alunos.forEach(print);
        break;
    }
  } while (opcao != 5);
}
