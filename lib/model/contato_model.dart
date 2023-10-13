class ContatoModel {
  List<Results> results = [];

  ContatoModel(this.results);

  ContatoModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['results'] = results.map((v) => v.toJson()).toList();
      return data;
  }
}

class Results {
  String objectId = "";
  String nome = "";
  String telefone = "";
  String email = "";
  String pathImage = "";
  String createdAt = "";
  String updatedAt = "";

  Results(
      this.objectId,
      this.nome,
      this.telefone,
      this.email,
      this.pathImage,
      this.createdAt,
      this.updatedAt
  );

  Results.vazio(){
    objectId = "";
    nome = "";
    telefone = "";
    email = "";
    pathImage = "";
    createdAt = "";
    updatedAt = "";
  }

  Results.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    nome = json['nome'];
    telefone = json['telefone'];
    email = json['email'];
    pathImage = json['path_image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['objectId'] = objectId;
    data['nome'] = nome;
    data['telefone'] = telefone;
    data['email'] = email;
    data['path_image'] = pathImage;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }

  Map<String, dynamic> toJsonEndpoint() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nome'] = nome;
    data['telefone'] = telefone;
    data['email'] = email;
    data['path_image'] = pathImage;
    return data;
  }
}