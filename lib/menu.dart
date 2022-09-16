import 'dart:convert';
import 'dart:io';
import 'package:projeto_empresa/cadastro.dart';
import 'package:projeto_empresa/coleta_dados.dart';

import 'impressao_dados.dart';

void menu_principal(){

int resposta = 0;
  do {
  stdout.write(
  '''

  SISTEMA DE CONTROLE EMPRESARIAL

  MENU PRINCIPAL
  1.Cadastrar Pessoa Jurídica 
  2.Cadastrar Pessoa Física 
  3.Buscar Empresa por CNPJ
  4.Buscar Empresa cadastrada por CPF/CNPJ do Sócio
  5.Listar Empresas cadastradas em ordem alfabética(Razão Social)
  6.Deletar Pessoa Jurídica
  7.Sair do Sistema
  Escolha uma das opões: ''');

  int resposta = int.parse(stdin.readLineSync()!);

  switch(resposta){
    //chama a função de coleta de dados pessoa juridica no arquivo coleta_dados
    case 1:    
    coleta_pessoajuridica();
	  break;
     //chama a função de coleta de dados pessoa fisica no arquivo coleta_dados
    case 2:   
    coleta_pessoafisica();
	  break;
    
    case 3:
    dados_cnpj();
	  break;
    
    case 4:
    dados_socio();
	  break;

    case 5:
    alfabetica_juridica();
	  break;

    case 6:
    deletar_juridica();
	  break;
    

    case 7:
    resposta == 7;
	  break;
    }

  } while (resposta == 7);

} //encerra menu principal


