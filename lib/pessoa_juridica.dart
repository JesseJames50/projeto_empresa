import 'package:projeto_empresa/pessoa.dart';

class PessoaJuridica extends Pessoa {

  String nomeFantasia;
  String razaoSocial;
  String cnpj;
  String telefone;
  List<dynamic> endereco;
 
  PessoaJuridica(
    this.endereco, {
    required this.nomeFantasia,
    required this.razaoSocial,
    required this.cnpj,
    required this.telefone,   
    required super.pessoaId,
    required super.pessoaTipo,
    required super.dataCadastro,
    });

}

