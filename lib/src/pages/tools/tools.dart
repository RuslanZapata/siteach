import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:siteach/src/components/bar_top.dart';
import 'package:siteach/src/components/list_example.dart';
import 'package:siteach/src/utils/my_colors.dart';

class Tools extends StatefulWidget {
  const Tools({Key key}) : super(key: key);

  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  void initState() {
    super.initState();

    // SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    //   _con.init(context);
    // });
  }

  @override
  Widget build(BuildContext context) {
    List<String> list = new List<String>();
    list.add(
        'Las tazas negras que reaccionan al estar en contacto con altas temperaturas, mostrando un diseño o estampado diferente al inicial.');
    list.add(
        'Anteojos que se oscurecen al encontrarse en ambientes con luz solar o muy iluminados.');

    return Scaffold(
        appBar: BarTop.bar(title: 'Herramientas'),
        backgroundColor: MyColors.primaryColorBackground_01,
        // ignore: avoid_unnecessary_containers
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
              child: Column(
            children: [
              getSubTitle(),
              Text(
                'You have pushed the button this many times:',
              ),
              ListExample.listExample(list)
            ],
          )),
          // child: Text(
          //   'You have pushed the button this many times:',
          // ),
        ));
  }

  Widget getSubTitle() {
    return Center(
      child: Container(
          width: 338,
          height: 42,
          margin: EdgeInsets.only(
              top: 16, bottom: MediaQuery.of(context).size.height * 0.1),
          decoration: BoxDecoration(
              border: Border.all(
                  color: MyColors.getColorFromHex('#7688A0'), width: 3.5)),
          child: Center(
              child: Text('CAMBIO DE DEPENDENCIAS',
                  style: TextStyle(
                      fontSize: 18,
                      color: MyColors.getColorFromHex('#22384A'))))),
    );
  }
}
