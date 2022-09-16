 
 import 'dart:io';

String cnpjFormatado (String cnpjverificar){
  String cnpj;
  if (cnpjverificar.length < 14 || cnpjverificar.length > 14 ){    
      print("O campo não pode ser menor/maior do que 14 dígitos!");
      stdout.write("Qual o CNPJ da Empresa? ");
      cnpj = stdin.readLineSync()!;
      cnpjFormatado(cnpj);
  } else if (cnpjverificar.isEmpty){
      print("O campo não pode vazio!");
      stdout.write("Qual o CNPJ da Empresa? ");
      cnpj = stdin.readLineSync()!;
      cnpjFormatado(cnpj);
  
  } else { 
     cnpj =  "${cnpjverificar.substring(0,2)}.${cnpjverificar.substring(2,5)}.${cnpjverificar.substring(5,8)}/${cnpjverificar.substring(8,12)}-${cnpjverificar.substring(12,14)}";
     
  } 
  return cnpj;
}