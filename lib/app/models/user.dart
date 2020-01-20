class User {
  final String name;
  final String fullName;
  final String email;
  final String photo;
  final bool isEmailConfirmed;
  final String apiKey;

  User.fromJson(Map<String, dynamic> json)
      : name = json['username'] ?? "Não informado",
        fullName = json['fullName'] ?? "Não informado",
        isEmailConfirmed = json['is_email_confirmed'] ?? null,
        email = json['email'] ?? "",
        photo = json['photo'] ?? "",
        apiKey = json['apiKey'] ?? "";

  Map<String, dynamic> toJson() => {
    'name': name,
    'fullName': fullName,
    'email': email,
    'photo': photo,
    'isEmailConfirmed': isEmailConfirmed,
    'apiKey': apiKey ?? ""
  };

}
