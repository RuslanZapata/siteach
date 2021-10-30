class OpcionList {
  int opcionId;
  String opcion;
  String value;

  OpcionList({this.opcionId, this.opcion, this.value});

  static List<OpcionList> getOpcionList() {
    return <OpcionList>[
      OpcionList(opcionId: 1, opcion: "Nada motivado", value: 'true'),
      OpcionList(opcionId: 2, opcion: "Poco motivado", value: 'false'),
      OpcionList(
          opcionId: 3, opcion: "Ni poco ni muy motivado", value: 'false'),
      OpcionList(opcionId: 4, opcion: "Muy motivado", value: 'false'),
      OpcionList(opcionId: 5, opcion: "Bastante motivado", value: 'false')
    ];
  }
}
