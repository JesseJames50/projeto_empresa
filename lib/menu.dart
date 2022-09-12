import 'dart:convert';
import 'dart:io';
import 'package:projeto_empresa/cadastro.dart';

void menu_principal(){

int resposta = 0;
  do {
  stdout.write(
  '''

  SISTEMA DE CONTROLE EMPRESARIAL

  MENU PRINCIPAL
  1.Cadastrar Pessoa Jurídica 
  2.Cadastrar Pessoa Física 
  3.Cadastrar Sócio Empresa
  4.Cadastrar Endereço Pessoa Juridica
  5.Cadastrar Endereço Pessoa Física
  6.Buscar Empresa cadastrada por CNPJ
  7.Buscar Empresa por CPF do Sócio
  8.Listar Empresas cadastradas em ordem alfabética(Razão Social)
  9.Excluir uma empresa (por ID)
  10.Sair do Sistema
  Escolha uma das opões: ''');
  int resposta = int.parse(stdin.readLineSync()!);

  } while (resposta == 10);
} //encerra menu principal


void menu_cadastro(){

stdout.write("Qual o tipo de cadastro que deseja realizar? (1-pessoa física, 2-pessoa jurídica): ");
var input = int.parse(stdin.readLineSync()!);

if (input ==1){
  // cadastro_empresa();
} else {
  stdout.write("Opção ainda não cadastrada!");
}

}