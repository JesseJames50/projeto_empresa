import 'dart:io';
import 'package:projeto_empresa/endereco.dart';
import 'package:projeto_empresa/pessoa_fisica.dart';
import 'package:projeto_empresa/pessoa_juridica.dart';
import 'package:projeto_empresa/socio.dart';
import 'package:uuid/uuid.dart';

List<PessoaJuridica> pessoasJuridicas =[];
List<PessoaFisica> pessoasFisicas=[];
List<Endereco> endereco=[];
List<PessoaSocio> pessoaSocio=[];


void cadastro_empresa(String nomeFantasia, String razaoSocial,String cnpj, String telefone){
  var endereco = [];
  var socio = [];

// String  nomeFantasia;
// String  razaoSocial;
// String  cnpj;
// String  telefone;
// int  pessoaTipo;
// DateTime dataCadastro;

// stdout.write("Qual o NOME DE FANTASIA da Empresa?");
// nomeFantasia = stdin.readLineSync()!;
// stdout.write("Qual a RAZÃO SOCIAL da Empresa?");
// razaoSocial = stdin.readLineSync()!;
// stdout.write("Qual o CNPJ da Empresa?");
// cnpj = stdin.readLineSync()!;
// stdout.write("Qual o TELEFONE da Empresa?");
// telefone = stdin.readLineSync()!;
// pessoaTipo = 1;
// dataCadastro = DateTime.now();



  final pessoaJuridica =
  pessoasJuridicas.add(
    PessoaJuridica(
      pessoaId: Uuid().v1(),
      nomeFantasia: nomeFantasia,
      razaoSocial: razaoSocial,
      cnpj: cnpj,
      telefone: telefone,
      pessoaTipo: 1,
      dataCadastro:DateTime.now(),
      endereco,
      socio
      )
    );
}


void cadastro_endereco(String  registro, int tipopessoa, String cep, String bairro,  String cidade, String estado,String rua,String numero){

  // String cep;
  // String bairro;
  // String cidade;
  // String estado;
  // String rua;
  // String numero;

  // stdout.write("Qual o CEP da localidade?");
  // cep = stdin.readLineSync()!;
  // stdout.write("Qual o bairro?");
  // bairro = stdin.readLineSync()!;
  // stdout.write("Qual a cidade?");
  // cidade = stdin.readLineSync()!;
  // stdout.write("Qual o Estado?");
  // estado = stdin.readLineSync()!;
  // stdout.write("Qual a rua?");
  // rua = stdin.readLineSync()!;
  // stdout.write("Qual o CNPJ da Empresa?");
  // numero = stdin.readLineSync()!;

  // final cadastroEndereco
  endereco.clear(); //limpa lista endereço
//cadastra endereço da empresa pelo tipoPessoa 1 - juridica
if (endereco.isEmpty == true && tipopessoa ==1){
  final index = pessoasJuridicas.indexWhere((id)=> id.pessoaId == registro);
  final listaEndereco =
  endereco.add(
    Endereco(
    cep: cep,
    bairro: bairro,
    cidade: cidade,
    estado: estado,
    rua: rua,
    numero: numero)
    );
   pessoasJuridicas[index].endereco = [cep, bairro, cidade, estado, rua, numero];
  }
//cadastra endereço da pessoa pelo tipoPessoa 2 - Fisica
if (endereco.isEmpty == true && tipopessoa ==2){
  final index = pessoasFisicas.indexWhere((id)=> id.pessoaId == registro);
  final listaEndereco =
  endereco.add(
    Endereco(
    cep: cep,
    bairro: bairro,
    cidade: cidade,
    estado: estado,
    rua: rua,
    numero: numero)
    );
   pessoasFisicas[index].endereco = [cep, bairro, cidade, estado, rua, numero];
  }

}


void cadastro_socio(String  registro, String nomeSocio, String documento){

  // String nomeSocio;
  // String documento;

  // stdout.write("Qual o nome do sócio?");
  // nomeSocio = stdin.readLineSync()!;
  // stdout.write("Qual o documento CPF/CNPJ?");
  // documento = stdin.readLineSync()!;

  // final cadastroEndereco
  pessoaSocio.clear(); //limpa lista de endereço
  
if (pessoaSocio.isEmpty == true){
  final index = pessoasJuridicas.indexWhere((id)=> id.pessoaId == registro);
  // final listaSocio = pessoaSocio.add(
  //   PessoaSocio(
  //     nomeSocio: nomeSocio,
  //     documento: documento)
  // );
   pessoasJuridicas[index].socio = [nomeSocio, documento];
}

}

void cadastro_pfisica(String nomePessoa, String cpf,String cnpj, String telefone){
  var endereco = [];
 
// String  nomeFantasia;
// String  razaoSocial;
// String  cnpj;
// String  telefone;
// int  pessoaTipo;
// DateTime dataCadastro;

// stdout.write("Qual o NOME DE FANTASIA da Empresa?");
// nomeFantasia = stdin.readLineSync()!;
// stdout.write("Qual a RAZÃO SOCIAL da Empresa?");
// razaoSocial = stdin.readLineSync()!;
// stdout.write("Qual o CNPJ da Empresa?");
// cnpj = stdin.readLineSync()!;
// stdout.write("Qual o TELEFONE da Empresa?");
// telefone = stdin.readLineSync()!;
// pessoaTipo = 1;
// dataCadastro = DateTime.now();



  final pessoasFisicas =
    PessoaFisica(
      [],
      pessoaId: Uuid().v1(),
      nomePessoa: nomePessoa,
      cpf: cpf,
      telefone: telefone,
      pessoaTipo: 2,
      dataCadastro:DateTime.now()    
      )
    ;
}