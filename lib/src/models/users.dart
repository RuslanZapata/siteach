import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  String idUser;
  String username;
  String name;
  String lastname;
  String password;
  String sessionToken;

  User({
    this.idUser,
    this.username,
    this.name,
    this.lastname,
    this.password,
    this.sessionToken,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json["idUser"],
        username: json["username"],
        name: json["name"],
        lastname: json["lastname"],
        password: json["password"],
        sessionToken: json["session_token"],
      );

  Map<String, dynamic> toJson() => {
        "idUser": idUser,
        "username": username,
        "name": name,
        "lastname": lastname,
        "password": password,
        "session_token": sessionToken,
      };
}
