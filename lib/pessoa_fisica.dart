import 'package:projeto_empresa/pessoa.dart';

import 'endereco.dart';

class PessoaFisica extends Pessoa {

  String nomePessoa;
  String cpf;
  String telefone;
  late List<EnderecoFisica> enderecoFisica;

 
  PessoaFisica(
    {
    required this.nomePessoa,
    required this.cpf,
    required this.telefone,
    required super.pessoaId,
    required super.pessoaTipo,
    required super.dataCadastro,
    required this.enderecoFisica
    }); 

}