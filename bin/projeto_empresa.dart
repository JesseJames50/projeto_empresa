import 'dart:io';
import 'package:projeto_empresa/pessoa_juridica.dart';
import 'package:projeto_empresa/cadastro.dart';
import 'package:uuid/uuid.dart';

void main(){

stdout.write("Qual o tipo de cadastro que deseja realizar? (1-pessoa física, 2-pessoa jurídica");
var input = int.parse(stdin.readLineSync()!);

if (input ==1){
  cadastro_empresa();
} else {
  stdout.write("Opção ainda não cadastrada!");
}
 





// for (var pessoa in pessoas) {

//   print( pessoa.nomeFantasia);
//   print( pessoa.razaoSocial);
//   print( pessoa.cnpj);
// }



}

