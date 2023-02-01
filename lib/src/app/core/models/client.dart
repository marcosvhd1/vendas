import 'dart:convert';

class ClientModel {
  String id;
  String cod;
  String razao;
  String fantasia;
  String cnpj;
  String endereco;
  String bairro;
  String numero;
  String complemento;
  String cep;
  String uf;
  String cidade;
  String telefone1;
  String telefone2;
  String email;
  String tipo;

  ClientModel({
    required this.id,
    required this.cod,
    required this.razao,
    required this.fantasia,
    required this.cnpj,
    required this.endereco,
    required this.bairro,
    required this.numero,
    required this.complemento,
    required this.cep,
    required this.uf,
    required this.cidade,
    required this.telefone1,
    required this.telefone2,
    required this.email,
    required this.tipo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'cod': cod,
      'razao': razao,
      'fantasia': fantasia,
      'cnpj': cnpj,
      'endereco': endereco,
      'bairro': bairro,
      'numero': numero,
      'complemento': complemento,
      'cep': cep,
      'uf': uf,
      'cidade': cidade,
      'telefone1': telefone1,
      'telefone2': telefone2,
      'email': email,
      'tipo': tipo,
    };
  }

  factory ClientModel.fromMap(Map<String, dynamic> map) {
    return ClientModel(
      id: map['id'] as String,
      cod: map['cod'] as String,
      razao: map['razao'] as String,
      fantasia: map['fantasia'] as String,
      cnpj: map['cnpj'] as String,
      endereco: map['endereco'] as String,
      bairro: map['bairro'] as String,
      numero: map['numero'] as String,
      complemento: map['complemento'] as String,
      cep: map['cep'] as String,
      uf: map['uf'] as String,
      cidade: map['cidade'] as String,
      telefone1: map['telefone1'] as String,
      telefone2: map['telefone2'] as String,
      email: map['email'] as String,
      tipo: map['tipo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ClientModel.fromJson(String source) => ClientModel.fromMap(json.decode(source) as Map<String, dynamic>);

}
