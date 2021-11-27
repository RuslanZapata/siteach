import 'dart:convert';

Sesion sesionFromJson(String str) => Sesion.fromJson(json.decode(str));

String sesionToJson(Sesion data) => json.encode(data.toJson());

class Sesion {
  String idSession;
  String idUser;
  String fecha;
  String starthora;
  String closinghora;

  Sesion({
    this.idSession,
    this.idUser,
    this.fecha,
    this.starthora,
    this.closinghora,
  });

  factory Sesion.fromJson(Map<String, dynamic> json) => Sesion(
        idSession: json["idSession"],
        idUser: json["idUser"],
        fecha: json["fecha"],
        starthora: json["starthora"],
        closinghora: json["closinghora"],
      );

  Map<String, dynamic> toJson() => {
        "idSession": idSession,
        "idUser": idUser,
        "fecha": fecha,
        "starthora": starthora,
        "closinghora": closinghora,
      };
}
