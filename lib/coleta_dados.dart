import 'dart:io';
import 'package:projeto_empresa/menu.dart';
import 'package:projeto_empresa/pessoa_juridica.dart';
import 'package:projeto_empresa/verificacao.dart';
import 'cadastro.dart';
import 'cpfcnpj.dart';
import 'impressao_dados.dart';

coleta_pessoajuridica(){
    int     documentovalida =0;
    int     validasocio = 0;
    String  nomeFantasia;
    String  razaoSocial;
    String  cnpj;
    String  telefone;
    String  cnpjValor;
    String  cep;
    String  bairro;
    String  cidade;
    String  estado;
    String  rua;
    String  numero;
    String  documento = '';
          
    stdout.write("Qual o NOME DE FANTASIA da Empresa? ");
    nomeFantasia = stdin.readLineSync()!;
    stdout.write("Qual a RAZÃO SOCIAL da Empresa? ");
    razaoSocial = stdin.readLineSync()!;
    //valida o CNPJ 
    cnpj = "";
    do{
      stdout.write("Qual o CNPJ da Empresa? (apenas números)");
      cnpjValor = stdin.readLineSync()!;
      
      if (CNPJ.isValid(cnpjValor)) {
      cnpj = cnpjValor;
      documentovalida = 1;
    } else {
      print("Este CNPJ é inválido. Gentileza cadastrar novamente!");
    }
    } while (documentovalida !=1 );

    stdout.write("Qual o TELEFONE da Empresa? ");
    telefone = stdin.readLineSync()!;
  
    print("\n");
    print("Cadastro do Endereço:");
    stdout.write("Qual o CEP? ");
    cep = stdin.readLineSync()!;
    stdout.write("Qual a RUA? ");
    rua = stdin.readLineSync()!;
    stdout.write("Qual o NÚMERO? ");
    numero = stdin.readLineSync()!;
    stdout.write("Qual o BAIRRO? ");
    bairro = stdin.readLineSync()!;
    stdout.write("Qual a CIDADE? ");
    cidade = stdin.readLineSync()!;
    stdout.write("Qual o ESTADO? ");
    estado = stdin.readLineSync()!;


    print("\n");
    print("Cadastro do Sócio");
    
    do{
      String cpfcnpjSocio;
      stdout.write("Qual o CPF/CNPJ do SÓCIO? (apenas números)");
      cpfcnpjSocio = stdin.readLineSync()!;
      if (cpfcnpjSocio.length == 11){
        if (CPF.isValid(cpfcnpjSocio)){
          documento = cpfcnpjSocio;
          validasocio = 1;
        } else {
          print("CPF inválido");
        }
      } else if(cpfcnpjSocio.length == 14){
        if (CNPJ.isValid(cpfcnpjSocio)){
          documento = cpfcnpjSocio;
          validasocio = 1;
        } else {
          print("CNPJ inválido");
        }
      } else {
        print("Documento inválido. Digite CPF/CNPJ válido!");
      }

    } while (validasocio != 1);
      
      
    //dados_empresa(pessoasJuridicas.lastIndexOf(pessoasJuridicas.last));
    //final index = pessoasJuridicas.indexWhere((id)=> id.cnpj == cnpj);
  cadastro_empresa(nomeFantasia, razaoSocial, cnpj, telefone,
      cep, bairro,  cidade, estado, rua, numero, documento);
  
  print("-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-");
  imprime_empresa(cnpj);
  print("Cadastro Pessoa Jurídica realizado com sucesso!");
  menu_principal();
} //fecha função coleta_pessoajuridica

coleta_pessoafisica(){

  String  nomePessoa;
  String  cpf;
  String  telefone;
  int documentovalida = 0;
  String  cep;
  String  bairro;
  String  cidade;
  String  estado;
  String  rua;
  String  numero;
  String cpfValor;

  stdout.write("Qual o NOME da pessoa?");
  nomePessoa = stdin.readLineSync()!;
  //Verifica se o CPF é válido
  cpf = "";
  do{
    stdout.write("Qual o CPF? (apenas números)");
    cpfValor = stdin.readLineSync()!;
    
    if (CPF.isValid(cpfValor)) {
    print("Este CNPJ é válido.");
    cpf = cpfValor;
    documentovalida = 1;
  } else {
    print("Este CPF é inválido.");
  }
  } while (documentovalida !=1 );

  stdout.write("Qual o TELEFONE?");
  telefone= stdin.readLineSync()!;

  print("\n");
  print("Cadastro do Endereço Pessoa Física:");
  stdout.write("Qual o CEP? ");
  cep = stdin.readLineSync()!;
  stdout.write("Qual a RUA? ");
  rua = stdin.readLineSync()!;
  stdout.write("Qual o NÚMERO? ");
  numero = stdin.readLineSync()!;
  stdout.write("Qual o BAIRRO? ");
  bairro = stdin.readLineSync()!;
  stdout.write("Qual a CIDADE? ");
  cidade = stdin.readLineSync()!;
  stdout.write("Qual o ESTADO? ");
  estado = stdin.readLineSync()!;

  cadastro_pfisica(nomePessoa, cpf, telefone, cep, bairro,  cidade, estado, rua, numero);

  dados_pessoaFisica(cpf);
  print("\n");
  print("Cadastro Pessoa Fisica realizado com sucesso!");
  menu_principal();  
}


    
 


