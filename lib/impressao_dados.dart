import 'dart:io';

import 'package:projeto_empresa/cadastro.dart';
import 'package:projeto_empresa/verificacao.dart';

import 'cpfcnpj.dart';
import 'menu.dart';

void imprime_empresa(String cnpj){

 
  var listapessoas = listapessoasJuridicas.map((pessoa){
    // print("o bairro é: ${pessoa.endereco[0].bairro}");
    // print("Esta é uma pessoa: ${pessoa.razaoSocial}");    
    return pessoa;
  });

  for (var pessoa in listapessoas) {
    if (pessoa.cnpj == cnpj){
      print("Dados da Empresa:");
      print("ID:            ${pessoa.pessoaId}");
      print("CNPJ:          ${CNPJ.format(pessoa.cnpj)}");
      print("Razao Spcial:  ${pessoa.razaoSocial}");
      print("Nome Fantasia: ${pessoa.nomeFantasia}");
      print("Telefone:      ${pessoa.telefone}");
      print("o valor é:     ${pessoa.telefone}");
      print("Endereço:");
      print("Rua:           ${pessoa.enderecoJuridica[0].rua}");
      print("Numero:        ${pessoa.enderecoJuridica[0].numero}");
      print("Bairro:        ${pessoa.enderecoJuridica[0].bairro}");
      print("Cidade:        ${pessoa.enderecoJuridica[0].cidade}");
      print("Estado:        ${pessoa.enderecoJuridica[0].estado}");
      print("CEP:           ${formatar_cep(pessoa.enderecoJuridica[0].cep)}");
      print("CPF/CNPJ Sócio:${pessoa.socio[0].documento}");
    
    }
   
  }

 
}


 void dados_pessoaFisica(String cpf){

    var listaFisica = listapessoasFisicas.map((pessoa){
      return pessoa;
  });

  for (var pessoa in listaFisica) {
    if (pessoa.cpf == cpf){
      print("Dados Pessoa Física Cadastrada:");
      print("ID:            ${pessoa.pessoaId}");
      print("CPF:           ${CPF.format(pessoa.cpf)}");
      print("Nome:          ${pessoa.nomePessoa}");
      print("Telefone:      ${pessoa.telefone}");
      print("Endereço:");
      print("Rua:           ${pessoa.enderecoFisica[0].rua}");
      print("Numero:        ${pessoa.enderecoFisica[0].numero}");
      print("Bairro:        ${pessoa.enderecoFisica[0].bairro}");
      print("Cidade:        ${pessoa.enderecoFisica[0].cidade}");
      print("Estado:        ${pessoa.enderecoFisica[0].estado}");
      print("CEP:           ${formatar_cep(pessoa.enderecoFisica[0].cep)}");
          
    }
     
 }
 }

 void dados_cnpj(){
  
  String cnpj; 

  stdout.write("Qual o CNPJ que deseja localizar?(apenas números) ");
  cnpj = stdin.readLineSync()!;

  var listaJuridica = listapessoasJuridicas.map((pessoa){
    return pessoa;
  });

  for (var pessoa in listaJuridica) {
    if (pessoa.cnpj == cnpj){
      print("Dados da Empresa:");
      print("ID:            ${pessoa.pessoaId}");
      print("CNPJ:          ${CNPJ.format(pessoa.cnpj)}");
      print("Razao Spcial:  ${pessoa.razaoSocial}");
      print("Nome Fantasia: ${pessoa.nomeFantasia}");
      print("Telefone:      ${pessoa.telefone}");
      print("o valor é:     ${pessoa.telefone}");
      print("Endereço:");
      print("Rua:           ${pessoa.enderecoJuridica[0].rua}");
      print("Numero:        ${pessoa.enderecoJuridica[0].numero}");
      print("Bairro:        ${pessoa.enderecoJuridica[0].bairro}");
      print("Cidade:        ${pessoa.enderecoJuridica[0].cidade}");
      print("Estado:        ${pessoa.enderecoJuridica[0].estado}");
      print("CEP:           ${formatar_cep(pessoa.enderecoJuridica[0].cep)}");
      print("CPF/CNPJ Sócio:${pessoa.socio[0].documento}");    
    }
     
  }
  menu_principal();  
 }

 void dados_socio(){
  
  String documento; 

  stdout.write("Qual o CPF/CNPJ do Sócio da Empresa?(apenas números) ");
  documento = stdin.readLineSync()!;

  var listaJuridica = listapessoasJuridicas.map((pessoa){
    return pessoa;
  });

  for (var pessoa in listaJuridica) {
    if (pessoa.socio[0].documento == documento){
      print("Dados da Empresa:");
      print("ID:            ${pessoa.pessoaId}");
      print("CNPJ:          ${CNPJ.format(pessoa.cnpj)}");
      print("Razao Spcial:  ${pessoa.razaoSocial}");
      print("Nome Fantasia: ${pessoa.nomeFantasia}");
      print("Telefone:      ${pessoa.telefone}");
      print("o valor é:     ${pessoa.telefone}");
      print("Endereço:");
      print("Rua:           ${pessoa.enderecoJuridica[0].rua}");
      print("Numero:        ${pessoa.enderecoJuridica[0].numero}");
      print("Bairro:        ${pessoa.enderecoJuridica[0].bairro}");
      print("Cidade:        ${pessoa.enderecoJuridica[0].cidade}");
      print("Estado:        ${pessoa.enderecoJuridica[0].estado}");
      print("CEP:           ${formatar_cep(pessoa.enderecoJuridica[0].cep)}");
      print("CPF/CNPJ Sócio:${pessoa.socio[0].documento}");    
    }
     
  }
 menu_principal();  
 }

void alfabetica_juridica(){
  
  print("\n");
  print("Lista das Empresas por Ordem Alfabetica( ID - Razão Social - CNPJ) ");
 
  listapessoasJuridicas.sort((a,b) => a.razaoSocial.compareTo(b.razaoSocial));
  for(var list in listapessoasJuridicas){
    print(list);
  }
  menu_principal(); 
}

void deletar_juridica(){

  print("\n");
  print("-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-");
  stdout.write("Qual empresa pretende deletar? (Digite CNPJ apenas números) ");
  

  listapessoasJuridicas.sort((a,b) => a.razaoSocial.compareTo(b.razaoSocial));
  for(var list in listapessoasJuridicas){
    print(list);
  }
  String cnpj = stdin.readLineSync()!;
  int indice = listapessoasJuridicas.indexWhere((id)=> id.cnpj == cnpj);
  print("O indice é: $indice");  //imprime_empresa(indice);

  listapessoasJuridicas.removeAt(indice);
  print("Registro ${CNPJ.format(cnpj)} deletado com sucesso!");

  menu_principal(); 

}