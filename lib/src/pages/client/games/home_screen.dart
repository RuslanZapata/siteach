// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers
// ignore_for_file: sized_box_for_whitespace
// ignore_for_file: prefer_final_fields
// ignore_for_file: unnecessary_new
// ignore_for_file: unused_field
// ignore_for_file: todo
// ignore_for_file: must_call_super
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unused_element
// ignore_for_file: missing_return
// ignore_for_file: unused_local_variable
// ignore_for_file: avoid_print
// ignore_for_file: dead_code
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: camel_case_types

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:game/item_model.dart';
import 'package:siteach/src/pages/client/games/item_model.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  var player = AudioCache();
  List<item_model> items;
  List<item_model> items2;
  int score;
  bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      item_model(
          value: 'dependencias',
          name: 'Cambio dependencias',
          img: 'assets/img/game/cambio_dependencias_game.png'),
      item_model(
          value: 'cualidades',
          name: 'Cambio cualidades',
          img: 'assets/img/game/cambio_cualidades_game.png'),
      item_model(
          value: 'division',
          name: 'División',
          img: 'assets/img/game/division_game.png'),
      item_model(
          value: 'herramientas',
          name: 'Herramientas',
          img: 'assets/img/game/herramientas_game.png'),
      item_model(
          value: 'multiplicacion',
          name: 'Multiplicación',
          img: 'assets/img/game/multiplicacion_game.png'),
      item_model(
          value: 'mundocerrado',
          name: 'Mundo cerrado',
          img: 'assets/img/game/mundo_cerrado_game.png'),
      item_model(
          value: 'pensamiento',
          name: 'Pensamiento',
          img: 'assets/img/game/pensamiento_game.png'),
      item_model(
          value: 'principios',
          name: 'Principios',
          img: 'assets/img/game/principios_game.png'),
      item_model(
          value: 'sustraccion',
          name: 'Sustracción',
          img: 'assets/img/game/sustraccion_game.png'),
      item_model(
          value: 'unificacion_tareas',
          name: 'Unificación de Tareas',
          img: 'assets/img/game/unificacion_tareas_game.png'),
    ];
    items2 = List<item_model>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
  }

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) gameOver = true;
    return Scaffold(
      backgroundColor: Color(0xFF22384A), //fondo de pantalla
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Relaciona las imágenes arrastrándolas a sus conceptos correspondientes.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quando',
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Puntuación: ',
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Quando',
                            ),
                      ),
                      TextSpan(
                        text: '$score',
                        style: Theme.of(context).textTheme.headline3.copyWith(
                              color: Color(0xffFAAA33),
                            ), //fondo del score
                      ),
                    ],
                  ),
                ),
              ),
              if (!gameOver)
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Draggable<item_model>(
                            data: item,
                            childWhenDragging: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 100,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 50,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(flex: 2),
                    Column(
                      children: items2.map((item) {
                        return DragTarget<item_model>(
                          onAccept: (receivedItem) {
                            if (item.value == receivedItem.value) {
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                              });
                              score += 10;
                              item.accepting = false;

                              player.play('audio/true.wav');
                            } else {
                              setState(() {
                                score -= 5;
                                item.accepting = false;
                                player.play('audio/false.wav');
                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: item.accepting
                                  ? Color(0xffECD591)
                                  : Color(0xffDFEEFF),
                            ),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.width / 4.5,
                            width: MediaQuery.of(context).size.width / 3,
                            margin: EdgeInsets.all(12),
                            child: Text(
                              item.name,
                              style: Theme.of(context).textTheme.headline6,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Spacer(),
                  ],
                ),
              if (gameOver)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Game Over',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              if (gameOver)
                Container(
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: BoxDecoration(
                      color: Color(0xffFAAA33),
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          initGame();
                        });
                      },
                      child: Text(
                        'Nuevo juego',
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  String result() {
    if (score == 100) {
      player.play('audio/success.wav');
      return '¡Genial!';
    } else {
      player.play('audio/tryAgain.wav');
      return 'Juega de nuevo para tener un mejor puntaje.';
    }
  }
}
