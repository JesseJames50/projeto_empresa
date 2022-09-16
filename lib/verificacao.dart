 
 import 'dart:io';

import 'package:projeto_empresa/cadastro.dart';

import 'coleta_dados.dart';

String verificar_cep(String verificarcep){
  
  if (verificarcep.length <= 7 || verificarcep.length >= 9 ){    
      verificarcep = 'invalido';
      return verificarcep;
  } else if (verificarcep.isEmpty){
      verificarcep = 'invalido';
      return verificarcep;  
  } else { 
     return verificarcep;     
  }  
}

String formatar_cep(String formatacep){
  
  formatacep = "${formatacep.substring(0,2)}.${formatacep.substring(2,5)}-${formatacep.substring(5,8)}}";
  return formatacep;
  
}

void verifica_cadastrodocumento(String documento){

  if(documento.length == 11){
    verifica_cadastrosociofisica(documento);

  } else{
    verifica_cadastrosociojuridica(documento);
  }
}


void verifica_cadastrosociofisica(String documento){

int indice = listapessoasFisicas.indexWhere((id)=> id.cpf == documento);

  if (indice == -1){
    stdout.write('O sócio Pessoa Física ainda não se encontra cadastrado na base de dados. Deseja realizar o cadastro? (1-sim, 2 - não) ');
    int estado = int.parse(stdin.readLineSync()!);
    if(estado == 1){
      coleta_pessoafisica();
    }
  }
}

void verifica_cadastrosociojuridica(String documento){

int indice = listapessoasJuridicas.indexWhere((id)=> id.cnpj == documento);

if (indice == -1){
    stdout.write('O sócio Pessoa Jurídica ainda não se encontra cadastrado na base de dados.Deseja realizar o cadastro? (1-sim, 2 - não) ');
    int estado = int.parse(stdin.readLineSync()!);
    if(estado == 1){
      coleta_pessoajuridica();
    }
  }

}