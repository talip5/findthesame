import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MaterialApp(home: PositionedTiles()));

int count=0;

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
  List<Widget> tiles = [
    Padding(
      // Place the keys at the *top* of the tree of the items in the collection.
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatefulColorfulTile(),
    ),
    Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(8.0),
      child: StatefulColorfulTile(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(children: tiles),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
      ),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}


class StatefulColorfulTile extends StatefulWidget {
  StatefulColorfulTile({Key? key}) : super(key: key);

  @override
  ColorfulTileState createState() => ColorfulTileState();
}

class ColorfulTileState extends State<StatefulColorfulTile> {
  Color? myColor;

  Random random=Random();
  int sumCount=0;

  int increment(){
    setState(() {
      count=count+1;
    });
    return count;
  }
  @override
  void initState() {
    super.initState();
    myColor = UniqueColorGenerator.getColor();
    //sumCount=random.nextInt(100);
    sumCount=increment();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          color: myColor,
          child: Padding(
            padding: EdgeInsets.all(70.0),
            child: Text(sumCount.toString()),
          )),
    );
  }
}


//this code snippet tells you how UniqueColorGenerator works
class UniqueColorGenerator {
  static List colorOptions = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.amber,
    Colors.black,
  ];
  static Random random = Random();
  static Color getColor() {
    if (colorOptions.isNotEmpty) {
      print(colorOptions.length);
      var xColor=colorOptions.removeAt(random.nextInt(colorOptions.length));
      print(xColor);
      //return colorOptions.removeAt(random.nextInt(colorOptions.length));
      return xColor;
    } else {
      //return Color.fromARGB(random.nextInt(256), random.nextInt(256),
      // random.nextInt(256), random.nextInt(256));
      return Color.fromARGB(240,random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    }
  }
}
