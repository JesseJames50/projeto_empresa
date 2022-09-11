import 'dart:io';

import 'package:projeto_empresa/endereco.dart';
import 'package:projeto_empresa/pessoa_fisica.dart';
import 'package:projeto_empresa/pessoa_juridica.dart';
import 'package:uuid/uuid.dart';

List<PessoaJuridica> pessoasJuridicas =[];
List<PessoaFisica> pessoasFisicas=[];
List<Endereco> endereco=[];


void cadastro_empresa(){

String  nomeFantasia;
String  razaoSocial;
String  cnpj;
String  telefone;
int  pessoaTipo;
DateTime dataCadastro;

stdout.write("Qual o NOME DE FANTASIA da Empresa?");
nomeFantasia = stdin.readLineSync()!;
stdout.write("Qual a RAZÃO SOCIAL da Empresa?");
razaoSocial = stdin.readLineSync()!;
stdout.write("Qual o CNPJ da Empresa?");
cnpj = stdin.readLineSync()!;
stdout.write("Qual o TELEFONE da Empresa?");
telefone = stdin.readLineSync()!;
pessoaTipo = 1;
dataCadastro = DateTime.now();

var endereco = [];
pessoasJuridicas.add(
  PessoaJuridica(
    pessoaId: Uuid().v1(),
    nomeFantasia: nomeFantasia,
    razaoSocial: razaoSocial,
    cnpj: cnpj,
    telefone: telefone,
    pessoaTipo: pessoaTipo,
    dataCadastro:dataCadastro,
    endereco
    )
  );

 for (var pessoasJuridicas in pessoasJuridicas) {
  print(pessoasJuridicas.cnpj);
  print(pessoasJuridicas.nomeFantasia);

 }

}




