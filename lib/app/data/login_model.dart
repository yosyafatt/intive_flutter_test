class Login {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? apiToken;
  String? createdAt;
  String? updatedAt;

  Login(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.apiToken,
      this.createdAt,
      this.updatedAt});

  Login.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    apiToken = json['api_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['api_token'] = apiToken;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
