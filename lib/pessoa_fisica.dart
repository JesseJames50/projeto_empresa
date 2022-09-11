import 'package:projeto_empresa/pessoa.dart';

class PessoaFisica extends Pessoa {

  String nomePessoa;
  String cpf;
  String telefone;
  List<String> endereco;

 
  PessoaFisica(
    this.endereco,{
    required this.nomePessoa,
    required this.cpf,
    required this.telefone,
    required super.pessoaId,
    required super.pessoaTipo,
    required super.dataCadastro
    });

}