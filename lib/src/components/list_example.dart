import 'package:flutter/material.dart';
import 'package:siteach/src/utils/my_colors.dart';

class ListExample {
  static Widget listExample(List<String> listExample) {
    return Center(
      child: Container(
          width: 338,
          margin: EdgeInsets.only(
            top: 16,
          ),
          padding: EdgeInsets.only(
            bottom: 21,
          ),
          decoration: BoxDecoration(
              border: Border.all(
                  color: MyColors.getColorFromHex('#7688A0'), width: 3.5)),
          child: Column(
            children: ListExample.generateListExample(listExample),
          )),
    );
  }

  static List<Widget> generateListExample(List<String> listExample) {
    List<Widget> listWidget = new List<Widget>();

    Set<String> setListExample = Set.from(listExample);
    setListExample.forEach((example) {
      Widget widgetExample = Container(
          padding: EdgeInsets.only(
            top: 22,
          ),
          child: Row(
            children: [
              Center(
                  child: Container(
                width: 17,
                height: 17,
                margin: EdgeInsets.only(
                  left: 11,
                  right: 11,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.5),
                    border: Border.all(
                        color: MyColors.getColorFromHex('#C6AB5C'),
                        width: 3.5)),
              )),
              Expanded(
                  child: Text(example,
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          fontSize: 17,
                          color: MyColors.getColorFromHex('#22384A'))))
            ],
          ));

      listWidget.add(widgetExample);
    });

    return listWidget;
  }
}
