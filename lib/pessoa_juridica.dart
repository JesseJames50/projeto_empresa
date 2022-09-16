import 'package:projeto_empresa/pessoa.dart';
import 'cpfcnpj.dart';
import 'endereco.dart';
import 'socio.dart';

class PessoaJuridica extends Pessoa {

  String nomeFantasia;
  String razaoSocial;
  String cnpj;
  String telefone;
  List<EnderecoJuridica> enderecoJuridica;
  List<PessoaSocio> socio;
 
  PessoaJuridica(
    {
    required this.nomeFantasia,
    required this.razaoSocial,
    required this.cnpj,
    required this.telefone,   
    required this.enderecoJuridica,
    required this.socio,
    required super.pessoaId,
    required super.pessoaTipo,
    required super.dataCadastro,

    });
    
  @override
  toString() {
    return ('Razão Social: $razaoSocial  CNPJ: ${CNPJ.format(cnpj)}');
  }
}

