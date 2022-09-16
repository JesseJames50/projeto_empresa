class EnderecoFisica {

  String cep;
  String bairro;
  String cidade;
  String estado;
  String rua;
  String numero;

  EnderecoFisica({
    
    required this.cep,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.rua,
    required this.numero,
  }); 
}

class EnderecoJuridica {

  String cep;
  String bairro;
  String cidade;
  String estado;
  String rua;
  String numero;

  EnderecoJuridica({
    
    required this.cep,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.rua,
    required this.numero,
  });

  static add({required String cep, required String bairro, required String cidade, required String estado, required String rua, required String numero}) {} 
}