import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'xxxx',
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  List<Widget> list=[Color35(),Color35()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
      ),
      body: Column(
        //children: list
          children: list
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          print('Colors');
          setState(() {
            Color30();
          });

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
  swap(){

  }
}


class Color35 extends StatefulWidget {
  const Color35({Key? key}) : super(key: key);

  @override
  _ColorState createState() => _ColorState();
}

class _ColorState extends State<Color35> {

  //Color _color=const Color(0xFFFFFF00);

  Random random=Random();
  int number1=0;
  int number2=0;
  List<Color> colorList=[Colors.blue,Colors.red,Colors.green,Colors.deepPurpleAccent];

  colorPalet(){
    return colorList.removeAt(random.nextInt(colorList.length));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      //color: Color(0xFFFFFF00),
      color: colorPalet(),
    );
  }
}

class Color30 extends StatefulWidget {
  const Color30({Key? key}) : super(key: key);

  @override
  _ColorState30 createState() => _ColorState30();
}

class _ColorState30 extends State<Color30> {

  //Color _color=const Color(0xFFFFFF00);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Color(0xFFFF0000),
    );
  }
}
