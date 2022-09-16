import 'package:projeto_empresa/cadastro.dart';
import 'package:projeto_empresa/endereco.dart';
import 'package:projeto_empresa/menu.dart';
import 'package:projeto_empresa/pessoa_juridica.dart';
import 'package:projeto_empresa/socio.dart';
import 'package:uuid/uuid.dart';

void main(){
  print("\x1B[2J\x1B[0;0H");
  menu_principal();

  
// var pessoaJuridica = PessoaJuridica(
//     nomeFantasia: 'Marcelo Drinks',
//     razaoSocial: 'Primo Menezão',
//     cnpj: '11941838000104',
//     telefone: '84998332801',
//     enderecoJuridica: [EnderecoJuridica(bairro: 'Bola', cep: '4545', cidade: 'Natal', estado: '454', numero: '454', rua: '54545',),
//                       EnderecoJuridica(bairro: 'Bila', cep: '65656565', cidade: 'Jauru', estado: '454', numero: '454', rua: '54545',)],
//     socio: [PessoaSocio(documento:'13677511879')],
//     pessoaId: Uuid().v1(),
//     pessoaTipo: 1,
//     dataCadastro:DateTime.now(),      
// );
// var pessoaJuridica2 = PessoaJuridica(
//     nomeFantasia: 'Todinho Drinks',
//     razaoSocial: 'Cogumelo Doido',
//     cnpj: '11941838000104',
//     telefone: '84998332801',
//     enderecoJuridica: [EnderecoJuridica(bairro: 'Bola', cep: '4545', cidade: 'Natal', estado: '454', numero: '454', rua: '54545',),
//                       EnderecoJuridica(bairro: 'Bila', cep: '65656565', cidade: 'Jauru', estado: '454', numero: '454', rua: '54545',)],
//     socio: [PessoaSocio(documento:'23976799300')],
//     pessoaId: Uuid().v1(),
//     pessoaTipo: 1,
//     dataCadastro:DateTime.now(),      
// );
  
//   var lista = [];
//   lista.add(pessoaJuridica);
//   lista.add(pessoaJuridica2);
 //var lista = [pessoaJuridica, pessoaJuridica2];

//   var listaPessoas = lista.map((pessoa){
//     print("A razão Social é: ${pessoa.razaoSocial}");
//     return pessoa.razaoSocial;
//   });

//  var lista_ordenada = [...listaPessoas];
//  print("Temos uma lista normal: $lista_ordenada");
//  //lista_ordenada.sort((a,b) => a.razaoSocial.compareTo(b.razaoSocial));
//  lista_ordenada.sort();
//  print('Temos uma lista ordenada: $lista_ordenada');
 
//  print("Lista de Empresas Cadastradas por Ordem Alfabética:");
//   int contador =0;
//   for (var empresa in lista_ordenada) {
//     contador +=1;
//     print("$contador: $empresa");

//   }

 
  // print("Lista ordenada é: ${lista.toString()}");
  // lista.sort((a,b) => a.razaoSocial.compareTo(b.razaoSocial));
  // for(var list in lista){
  //   print(list);
  // }
 
  

//  for (int i =0; (novaLista.length-1);i++ ){

//   print(novalista[i]);
//  }

//   var listaPessoas = lista.map((pessoa){
//     print("A razão Social é: ${pessoa.razaoSocial}");
//     return pessoa.razaoSocial;
//   });


}