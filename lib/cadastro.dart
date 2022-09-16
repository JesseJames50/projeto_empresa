import 'package:projeto_empresa/endereco.dart';
import 'package:projeto_empresa/pessoa_fisica.dart';
import 'package:projeto_empresa/pessoa_juridica.dart';
import 'package:projeto_empresa/socio.dart';
import 'package:uuid/uuid.dart';

var listapessoasJuridicas = [];
var listapessoasFisicas = [];
List<PessoaJuridica> pessoasJuridicas =[];
List<PessoaFisica> pessoasFisicas=[];
List<PessoaSocio> pessoaSocio=[];
List<EnderecoFisica> enderecoFisica=[];
List<EnderecoJuridica> enderecoJuridica=[];


void cadastro_empresa(String nomeFantasia, String razaoSocial,String cnpj, String telefone,
       String cep, String bairro,  String cidade, String estado, String rua, String numero, String documento){
  
  final pessoaJuridica =
      PessoaJuridica(
        nomeFantasia: nomeFantasia,
        razaoSocial: razaoSocial,
        cnpj: cnpj,
        telefone: telefone,
        enderecoJuridica: [EnderecoJuridica(cep: cep, bairro: bairro, cidade: cidade, estado: estado, rua: rua, numero: numero)],
        socio: [PessoaSocio(documento: documento)],
        pessoaId: Uuid().v1(),
        pessoaTipo: 1,
        dataCadastro:DateTime.now(),      
      );

  
  listapessoasJuridicas.add(pessoaJuridica);
}


void cadastro_endereco(int index, int tipopessoa, String cep, String bairro,  String cidade, String estado, String rua, String numero){
  // final cadastroEndereco
 
  //cadastra endereço da empresa pelo tipoPessoa 1 - juridica
if (tipopessoa ==1){ 
  //final index = pessoasJuridicas.indexWhere((id)=> id.pessoaId == registro);
  //var listaEndereco = endereco.add(cadastroEndereco(cep, bairro, cidade, estado, rua, numero));
    //pessoasJuridicas[index].endereco.add(cadastroEndereco(cep, bairro, cidade, estado, rua, numero));  
  // pessoasJuridicas[index].endereco = endereco;
  //pessoasJuridicas[index].endereco.add(cadastroEndereco(cep, bairro, cidade, estado, rua, numero));
  //var novoEndereco = pessoasJuridicas[index].endereco.add(Endereco(cep: cep, bairro: bairro, cidade: cidade, estado: estado, rua: rua, numero: numero));
  var pessoajuridica = pessoasJuridicas[index].enderecoJuridica.add(EnderecoJuridica(cep: cep, bairro: bairro, cidade: cidade, estado: estado, rua: rua, numero: numero));
  // [index].endereco.add(cep: cep, bairro: bairro, cidade: cidade, estado: estado, rua: rua, numero: numero);
  print(pessoasJuridicas[index].enderecoJuridica[0]);
  print(pessoasJuridicas[index].enderecoJuridica[2]);
  }
//cadastra endereço da pessoa pelo tipoPessoa 2 - Fisica
if (tipopessoa ==2){
  //final index = pessoasFisicas.indexWhere((id)=> id.pessoaId == registro);
  final listaEndereco =
  // EnderecoFisica.add(
  //   Endereco(
  //   cep: cep,
  //   bairro: bairro,
  //   cidade: cidade,
  //   estado: estado,
  //   rua: rua,
  //   numero: numero)
  //   );
   pessoasFisicas[index].enderecoFisica.add(EnderecoFisica(cep: cep, bairro: bairro, cidade: cidade, estado: estado, rua: rua, numero: numero));
  }

}

void cadastro_socio(int index, dynamic documento){

pessoaSocio.clear(); //limpa lista de endereço
  
if (pessoaSocio.isEmpty == true){
  //int indice = pessoasJuridicas.indexWhere((id)=> id.cnpj == index);
  // final listaSocio = pessoaSocio.add(
  //   PessoaSocio(
  //     nomeSocio: nomeSocio,
  //     documento: documento)
  // );
   pessoasJuridicas[index].socio = [documento];
}

}

void cadastro_pfisica(String nomePessoa, String cpf, String telefone, String cep, String bairro,  String cidade, String estado, String rua, String numero){
  
  final pessoaFisica = 
    PessoaFisica(
      pessoaId: Uuid().v1(),
      nomePessoa: nomePessoa,
      cpf: cpf,
      telefone: telefone,
      pessoaTipo: 2,
      dataCadastro:DateTime.now(),
      enderecoFisica: [EnderecoFisica(cep: cep, bairro: bairro, cidade: cidade, estado: estado, rua: rua, numero: numero)],
      );

      //listapessoasJuridicas.add(pessoaJuridica);
      listapessoasFisicas.add(pessoaFisica);
}

