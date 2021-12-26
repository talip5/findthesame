import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
      home: PositionedTiles(),
      debugShowCheckedModeBanner: false,
    ));

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

Color purple = Colors.deepPurple;
Color colorOn0 = purple;
Color colorOn1 = purple;
Color colorOn2 = purple;
Color colorOn3 = purple;
Color colorOn4 = purple;
Color colorOn5 = purple;
Color colorOn6 = purple;
Color colorOn7 = purple;
Color colorOn8 = purple;
Color colorOn9 = purple;
Color colorOn10 = purple;
Color colorOn11 = purple;
Color colorOn12 = purple;
Color colorOn13 = purple;
Color colorOn14 = purple;
Color colorOn15 = purple;
Color colorOn16 = purple;
Color colorOn17 = purple;
Color colorOn18 = purple;
Color colorOn19 = purple;
Color colorOn20 = purple;
Color colorOn21 = purple;
Color colorOn22 = purple;
Color colorOn23 = purple;

Color green = Colors.green;
Color color0 = green;
Color color1 = green;
Color color2 = green;
Color color3 = green;
Color color4 = green;
Color color5 = green;
Color color6 = green;
Color color7 = green;
Color color8 = green;
Color color9 = green;
Color color10 = green;
Color color11 = green;
Color color12 = green;
Color color13 = green;
Color color14 = green;
Color color15 = green;
Color color16 = green;
Color color17 = green;
Color color18 = green;
Color color19 = green;
Color color20 = green;
Color color21 = green;
Color color22 = green;
Color color23 = green;

String label0 = '';
String label1 = '';
String label2 = '';
String label3 = '';
String label4 = '';
String label5 = '';
String label6 = '';
String label7 = '';
String label8 = '';
String label9 = '';
String label10 = '';
String label11 = '';
String label12 = '';
String label13 = '';
String label14 = '';
String label15 = '';
String label16 = '';
String label17 = '';
String label18 = '';
String label19 = '';
String label20 = '';
String label21 = '';
String label22 = '';
String label23 = '';

bool buttonState0 = true;
bool buttonState1 = true;
bool buttonState2 = true;
bool buttonState3 = true;
bool buttonState4 = true;
bool buttonState5 = true;
bool buttonState6 = true;
bool buttonState7 = true;
bool buttonState8 = true;
bool buttonState9 = true;
bool buttonState10 = true;
bool buttonState11 = true;
bool buttonState12 = true;
bool buttonState13 = true;
bool buttonState14 = true;
bool buttonState15 = true;
bool buttonState16 = true;
bool buttonState17 = true;
bool buttonState18 = true;
bool buttonState19 = true;
bool buttonState20 = true;
bool buttonState21 = true;
bool buttonState22 = true;
bool buttonState23 = true;

int buttonNumber0 = 0;
int buttonNumber1 = 1;
int buttonNumber2 = 2;
int buttonNumber3 = 3;
int buttonNumber4 = 4;
int buttonNumber5 = 5;
int buttonNumber6 = 6;
int buttonNumber7 = 7;
int buttonNumber8 = 8;
int buttonNumber9 = 9;
int buttonNumber10 = 10;
int buttonNumber11 = 11;
int buttonNumber12 = 12;
int buttonNumber13 = 13;
int buttonNumber14 = 14;
int buttonNumber15 = 15;
int buttonNumber16 = 16;
int buttonNumber17 = 17;
int buttonNumber18 = 18;
int buttonNumber19 = 19;
int buttonNumber20 = 20;
int buttonNumber21 = 21;
int buttonNumber22 = 22;
int buttonNumber23 = 23;

String selectedCount1 = '';
String selectedCount2 = '';
int selectedCount = 0;
int selectedButtonNumber1 = 0;
int selectedButtonNumber2 = 0;
bool newGameControl=false;

int listNumber = 0;
Random random = Random();
Random random1 = Random();

int count = 0;

List<String> selectedList = [];
List<int> list = [];
List<int> listRandomSelected = [];
List<int> listRandomControl = [];
List<String> listFinish = [];
List<bool> listFirstPress=[];

bool enableButton0 = true;
bool enableButton1 = true;
bool enableButton2 = true;
bool enableButton3 = true;
bool enableButton4 = true;
bool enableButton5 = true;
bool enableButton6 = true;
bool enableButton7 = true;
bool enableButton8 = true;
bool enableButton9 = true;
bool enableButton10 = true;
bool enableButton11 = true;
bool enableButton12 = true;
bool enableButton13 = true;
bool enableButton14 = true;
bool enableButton15 = true;
bool enableButton16 = true;
bool enableButton17 = true;
bool enableButton18 = true;
bool enableButton19 = true;
bool enableButton20 = true;
bool enableButton21 = true;
bool enableButton22 = true;
bool enableButton23 = true;

class PositionedTilesState extends State<PositionedTiles> {
  // int i = 0;
  //int randomRange = 3;

  var f = new NumberFormat("000");
  Timer? timer;
  int score = 0;
  String scoreText='000';
   timeStart() {
     score = 0;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        score++;
        if(newGameControl==true){
          score=0;
          timer.cancel();
        }
        if(score>999){
          score=0;
          timeStop();
          newGame();
        }
        scoreText=f.format(score);
      });
    });
  }

  timeStop(){
    timer!.cancel();
  }

  listRandom() {
    final items2 = List<int>.generate(100, (index) => index);
    List<int> createRandomList = [];
    Random getRandom = Random();
    for (int i = 0; i < 12; i++) {
      int getNumber = getRandom.nextInt(items2.length);
      int randomItems = items2[getNumber];
      createRandomList.add(randomItems);
      list.add(randomItems);
      list.add(randomItems);
      items2.removeAt(getNumber);
      setState(() {
        int itemsLength = items2.length;
      });
    }
  }

  listReduce() {
    final items5 = List<int>.generate(24, (index1) => index1);
    int cycle = 24;
    for (int k = 1; k <= cycle; k++) {
      if (list.isNotEmpty) {
        count = list.length;
        int value = random.nextInt(count);
        int listValue = list[value];
        listRandomSelected.add(listValue);
        list.removeAt(value);
      }
    }
    print('listRandomSelected $items5');
    print('listRandomSelected $listRandomSelected');
  }

  firstPressControl(){
    if(listFirstPress.isEmpty){
      listFirstPress.add(true);
      newGameControl=false;
      timeStart();
    }
  }

  delayed(@required bool buttonState, Color color, String label) {
    Future.delayed(Duration(seconds: 3), () {
      buttonState = true;
      color = Colors.green;
      label = '';
      switchState(selectedButtonNumber1);
      selectedList = [];
    });
  }

  newGame() {
    setState(() {
      selectedList = [];
      list = [];
      listRandomSelected = [];
      listFinish = [];
      setUp();
      listRandom();
      listReduce();
    });
  }

  enableButtonListFalse() {
    enableButton0 = false;
    enableButton1 = false;
    enableButton2 = false;
    enableButton3 = false;
    enableButton4 = false;
    enableButton5 = false;
    enableButton6 = false;
    enableButton7 = false;
    enableButton8 = false;
    enableButton9 = false;
    enableButton10 = false;
    enableButton11 = false;
    enableButton12 = false;
    enableButton13 = false;
    enableButton14 = false;
    enableButton15 = false;
    enableButton16 = false;
    enableButton17 = false;
    enableButton18 = false;
    enableButton19 = false;
    enableButton20 = false;
    enableButton21 = false;
    enableButton22 = false;
    enableButton23 = false;
  }

  enableButtonListTrue() {
    enableButton0 = true;
    enableButton1 = true;
    enableButton2 = true;
    enableButton3 = true;
    enableButton4 = true;
    enableButton5 = true;
    enableButton6 = true;
    enableButton7 = true;
    enableButton8 = true;
    enableButton9 = true;
    enableButton10 = true;
    enableButton11 = true;
    enableButton12 = true;
    enableButton13 = true;
    enableButton14 = true;
    enableButton15 = true;
    enableButton16 = true;
    enableButton17 = true;
    enableButton18 = true;
    enableButton19 = true;
    enableButton20 = true;
    enableButton21 = true;
    enableButton22 = true;
    enableButton23 = true;
  }

  screenSize(){
    var dimension=MediaQuery.of(context).size.width;
    print(dimension);
  }

  @override
  void initState() {
    listRandom();
    listReduce();
    //print(enableButton0);
    super.initState();
  }

  setUp() {
    color0 = green;
    color1 = green;
    color2 = green;
    color3 = green;
    color4 = green;
    color5 = green;
    color6 = green;
    color7 = green;
    color8 = green;
    color9 = green;
    color10 = green;
    color11 = green;
    color12 = green;
    color13 = green;
    color14 = green;
    color15 = green;
    color16 = green;
    color17 = green;
    color18 = green;
    color19 = green;
    color20 = green;
    color21 = green;
    color22 = green;
    color23 = green;

    label0 = '';
    label1 = '';
    label2 = '';
    label3 = '';
    label4 = '';
    label5 = '';
    label6 = '';
    label7 = '';
    label8 = '';
    label9 = '';
    label10 = '';
    label11 = '';
    label12 = '';
    label13 = '';
    label14 = '';
    label15 = '';
    label16 = '';
    label17 = '';
    label18 = '';
    label19 = '';
    label20 = '';
    label21 = '';
    label22 = '';
    label23 = '';

    buttonState0 = true;
    buttonState1 = true;
    buttonState2 = true;
    buttonState3 = true;
    buttonState4 = true;
    buttonState5 = true;
    buttonState6 = true;
    buttonState7 = true;
    buttonState8 = true;
    buttonState9 = true;
    buttonState10 = true;
    buttonState11 = true;
    buttonState12 = true;
    buttonState13 = true;
    buttonState14 = true;
    buttonState15 = true;
    buttonState16 = true;
    buttonState17 = true;
    buttonState18 = true;
    buttonState19 = true;
    buttonState20 = true;
    buttonState21 = true;
    buttonState22 = true;
    buttonState23 = true;

    buttonNumber0 = 0;
    buttonNumber1 = 1;
    buttonNumber2 = 2;
    buttonNumber3 = 3;
    buttonNumber4 = 4;
    buttonNumber5 = 5;
    buttonNumber6 = 6;
    buttonNumber7 = 7;
    buttonNumber8 = 8;
    buttonNumber9 = 9;
    buttonNumber10 = 10;
    buttonNumber11 = 11;
    buttonNumber12 = 12;
    buttonNumber13 = 13;
    buttonNumber14 = 14;
    buttonNumber15 = 15;
    buttonNumber16 = 16;
    buttonNumber17 = 17;
    buttonNumber18 = 18;
    buttonNumber19 = 19;
    buttonNumber20 = 20;
    buttonNumber21 = 21;
    buttonNumber22 = 22;
    buttonNumber23 = 23;

    selectedCount1 = '';
    selectedCount2 = '';
    selectedCount = 0;
    selectedButtonNumber1 = 0;
    selectedButtonNumber2 = 0;
    listFirstPress=[];

    enableButton0 = true;
    enableButton1 = true;
    enableButton2 = true;
    enableButton3 = true;
    enableButton4 = true;
    enableButton5 = true;
    enableButton6 = true;
    enableButton7 = true;
    enableButton8 = true;
    enableButton9 = true;
    enableButton10 = true;
    enableButton11 = true;
    enableButton12 = true;
    enableButton13 = true;
    enableButton14 = true;
    enableButton15 = true;
    enableButton16 = true;
    enableButton17 = true;
    enableButton18 = true;
    enableButton19 = true;
    enableButton20 = true;
    enableButton21 = true;
    enableButton22 = true;
    enableButton23 = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width/40,),
              //Text(MediaQuery.of(context).size.width.toInt().toString()),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 18),
                      primary: Colors.deepPurple),
                  onPressed: () {
                    setState(() {
                      newGameControl=true;
                      newGame();
                    });
                  },
                  child: Text('New Game')),
              SizedBox(
                width:MediaQuery.of(context).size.width/100*8,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 18),
                    primary: Colors.deepPurple),
                onPressed: () {},
                child: Text('Score : $scoreText'),
              ),
            ],
          ),
        ),
        body: Center(
          child: GridView.builder(
            primary: false,
            padding: const EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 4),
            itemCount: 24,
            itemBuilder: (BuildContext context, int index) {
              Widget? widget;
              switch (index) {
                case 0:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color0),
                      onPressed: () {
                        if (buttonState0 && enableButton0) {
                          ////print('Button0');
                          setState(() {
                            firstPressControl();
                            color0 = Colors.deepPurple;
                            label0 = listRandomSelected[0].toString();
                            selectedList.add(label0);
                            ////print(selectedList);
                            buttonState0 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label0;
                              selectedButtonNumber1 = 0;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label0;
                              selectedButtonNumber2 = 0;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                ////print('Ayni');
                                ////print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState0 = true;
                                    color0 = Colors.green;
                                    label0 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label0),
                    ),
                  );
                  break;
                case 1:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color1),
                      onPressed: () {
                        if (buttonState1 && enableButton1) {
                          ////print('Button1');
                          setState(() {
                            firstPressControl();
                            color1 = Colors.deepPurple;
                            label1 = listRandomSelected[1].toString();
                            selectedList.add(label1);
                            ////print(selectedList);
                            buttonState1 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label1;
                              selectedButtonNumber1 = 1;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label1;
                              selectedButtonNumber2 = 1;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                ////print('Ayni');
                                ////print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState1 = true;
                                    color1 = Colors.green;
                                    label1 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label1),
                    ),
                  );
                  break;
                case 2:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color2),
                      onPressed: () {
                        if (buttonState2 && enableButton2) {
                          ////print('Button2');
                          setState(() {
                            firstPressControl();
                            color2 = Colors.deepPurple;
                            label2 = listRandomSelected[2].toString();
                            selectedList.add(label2);
                            ////print(selectedList);
                            buttonState2 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label2;
                              selectedButtonNumber1 = 2;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label2;
                              selectedButtonNumber2 = 2;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                ////print('Ayni');
                                ////print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState2 = true;
                                    color2 = Colors.green;
                                    label2 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label2),
                    ),
                  );
                  break;
                case 3:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color3),
                      onPressed: () {
                        if (buttonState3 && enableButton3) {
                          ////print('Button3');
                          setState(() {
                            firstPressControl();
                            color3 = Colors.deepPurple;
                            label3 = listRandomSelected[3].toString();
                            selectedList.add(label3);
                            //print(selectedList);
                            buttonState3 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label3;
                              selectedButtonNumber1 = 3;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label3;
                              selectedButtonNumber2 = 3;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState3 = true;
                                    color3 = Colors.green;
                                    label3 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label3),
                    ),
                  );
                  break;
                case 4:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color4),
                      onPressed: () {
                        if (buttonState4 && enableButton4) {
                          //print('Button4');
                          setState(() {
                            firstPressControl();
                            color4 = Colors.deepPurple;
                            label4 = listRandomSelected[4].toString();
                            selectedList.add(label4);
                            //print(selectedList);
                            buttonState4 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label4;
                              selectedButtonNumber1 = 4;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label4;
                              selectedButtonNumber2 = 4;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState4 = true;
                                    color4 = Colors.green;
                                    label4 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label4),
                    ),
                  );
                  break;
                case 5:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color5),
                      onPressed: () {
                        if (buttonState5 && enableButton5) {
                          //print('Button5');
                          setState(() {
                            firstPressControl();
                            color5 = Colors.deepPurple;
                            label5 = listRandomSelected[5].toString();
                            selectedList.add(label5);
                            //print(selectedList);
                            buttonState5 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label5;
                              selectedButtonNumber1 = 5;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label5;
                              selectedButtonNumber2 = 5;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState5 = true;
                                    color5 = Colors.green;
                                    label5 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label5),
                    ),
                  );
                  break;
                case 6:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color6),
                      onPressed: () {
                        if (buttonState6 && enableButton6) {
                          //print('Button6');
                          setState(() {
                            firstPressControl();
                            color6 = Colors.deepPurple;
                            label6 = listRandomSelected[6].toString();
                            selectedList.add(label6);
                            //print(selectedList);
                            buttonState6 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label6;
                              selectedButtonNumber1 = 6;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label6;
                              selectedButtonNumber2 = 6;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState6 = true;
                                    color6 = Colors.green;
                                    label6 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label6),
                    ),
                  );
                  break;
                case 7:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color7),
                      onPressed: () {
                        if (buttonState7 && enableButton7) {
                          //print('Button7');
                          setState(() {
                            firstPressControl();
                            color7 = Colors.deepPurple;
                            label7 = listRandomSelected[7].toString();
                            selectedList.add(label7);
                            //print(selectedList);
                            buttonState7 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label7;
                              selectedButtonNumber1 = 7;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label7;
                              selectedButtonNumber2 = 7;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState7 = true;
                                    color7 = Colors.green;
                                    label7 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label7),
                    ),
                  );
                  break;
                case 8:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color8),
                      onPressed: () {
                        if (buttonState8 && enableButton8) {
                          //print('Button8');
                          setState(() {
                            firstPressControl();
                            color8 = Colors.deepPurple;
                            label8 = listRandomSelected[8].toString();
                            selectedList.add(label8);
                            //print(selectedList);
                            buttonState8 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label8;
                              selectedButtonNumber1 = 8;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label8;
                              selectedButtonNumber2 = 8;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState8 = true;
                                    color8 = Colors.green;
                                    label8 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label8),
                    ),
                  );
                  break;
                case 9:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color9),
                      onPressed: () {
                        if (buttonState9 && enableButton9) {
                          //print('Button9');
                          setState(() {
                            firstPressControl();
                            color9 = Colors.deepPurple;
                            label9 = listRandomSelected[9].toString();
                            selectedList.add(label9);
                            //print(selectedList);
                            buttonState9 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label9;
                              selectedButtonNumber1 = 9;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label9;
                              selectedButtonNumber2 = 9;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState9 = true;
                                    color9 = Colors.green;
                                    label9 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label9),
                    ),
                  );
                  break;
                case 10:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color10),
                      onPressed: () {
                        if (buttonState10 && enableButton10) {
                          //print('Button10');
                          setState(() {
                            firstPressControl();
                            color10 = Colors.deepPurple;
                            label10 = listRandomSelected[10].toString();
                            selectedList.add(label10);
                            //print(selectedList);
                            buttonState10 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label10;
                              selectedButtonNumber1 = 10;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label10;
                              selectedButtonNumber2 = 10;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState10 = true;
                                    color10 = Colors.green;
                                    label10 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label10),
                    ),
                  );
                  break;
                case 11:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color11),
                      onPressed: () {
                        if (buttonState11 && enableButton11) {
                          //print('Button11');
                          setState(() {
                            firstPressControl();
                            color11 = Colors.deepPurple;
                            label11 = listRandomSelected[11].toString();
                            selectedList.add(label11);
                            //print(selectedList);
                            buttonState11 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label11;
                              selectedButtonNumber1 = 11;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label11;
                              selectedButtonNumber2 = 11;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState11 = true;
                                    color11 = Colors.green;
                                    label11 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label11),
                    ),
                  );
                  break;
                case 12:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color12),
                      onPressed: () {
                        if (buttonState12 && enableButton12) {
                          //print('Button12');
                          setState(() {
                            firstPressControl();
                            color12 = Colors.deepPurple;
                            label12 = listRandomSelected[12].toString();
                            selectedList.add(label12);
                            //print(selectedList);
                            buttonState12 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label12;
                              selectedButtonNumber1 = 12;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label12;
                              selectedButtonNumber2 = 12;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState12 = true;
                                    color12 = Colors.green;
                                    label12 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label12),
                    ),
                  );
                  break;
                case 13:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color13),
                      onPressed: () {
                        if (buttonState13 && enableButton13) {
                          //print('Button13');
                          setState(() {
                            firstPressControl();
                            color13 = Colors.deepPurple;
                            label13 = listRandomSelected[13].toString();
                            selectedList.add(label13);
                            //print(selectedList);
                            buttonState13 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label13;
                              selectedButtonNumber1 = 13;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label13;
                              selectedButtonNumber2 = 13;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState13 = true;
                                    color13 = Colors.green;
                                    label13 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label13),
                    ),
                  );
                  break;
                case 14:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color14),
                      onPressed: () {
                        if (buttonState14 && enableButton14) {
                          //print('Button14');
                          setState(() {
                            firstPressControl();
                            color14 = Colors.deepPurple;
                            label14 = listRandomSelected[14].toString();
                            selectedList.add(label14);
                            //print(selectedList);
                            buttonState14 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label14;
                              selectedButtonNumber1 = 14;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label14;
                              selectedButtonNumber2 = 14;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState14 = true;
                                    color14 = Colors.green;
                                    label14 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label14),
                    ),
                  );
                  break;
                case 15:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color15),
                      onPressed: () {
                        if (buttonState15 && enableButton15) {
                          //print('Button15');
                          setState(() {
                            firstPressControl();
                            color15 = Colors.deepPurple;
                            label15 = listRandomSelected[15].toString();
                            selectedList.add(label15);
                            //print(selectedList);
                            buttonState15 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label15;
                              selectedButtonNumber1 = 15;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label15;
                              selectedButtonNumber2 = 15;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState15 = true;
                                    color15 = Colors.green;
                                    label15 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label15),
                    ),
                  );
                  break;
                case 16:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color16),
                      onPressed: () {
                        if (buttonState16 && enableButton16) {
                          //print('Button16');
                          setState(() {
                            firstPressControl();
                            color16 = Colors.deepPurple;
                            label16 = listRandomSelected[16].toString();
                            selectedList.add(label16);
                            //print(selectedList);
                            buttonState16 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label16;
                              selectedButtonNumber1 = 16;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label16;
                              selectedButtonNumber2 = 16;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState16 = true;
                                    color16 = Colors.green;
                                    label16 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label16),
                    ),
                  );
                  break;
                case 17:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color17),
                      onPressed: () {
                        if (buttonState17 && enableButton17) {
                          //print('Button17');
                          setState(() {
                            firstPressControl();
                            color17 = Colors.deepPurple;
                            label17 = listRandomSelected[17].toString();
                            selectedList.add(label17);
                            //print(selectedList);
                            buttonState17 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label17;
                              selectedButtonNumber1 = 17;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label17;
                              selectedButtonNumber2 = 17;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState17 = true;
                                    color17 = Colors.green;
                                    label17 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label17),
                    ),
                  );
                  break;
                case 18:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color18),
                      onPressed: () {
                        if (buttonState18 && enableButton18) {
                          //print('Button18');
                          setState(() {
                            firstPressControl();
                            color18 = Colors.deepPurple;
                            label18 = listRandomSelected[18].toString();
                            selectedList.add(label18);
                            //print(selectedList);
                            buttonState18 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label18;
                              selectedButtonNumber1 = 18;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label18;
                              selectedButtonNumber2 = 18;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState18 = true;
                                    color18 = Colors.green;
                                    label18 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label18),
                    ),
                  );
                  break;
                case 19:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color19),
                      onPressed: () {
                        if (buttonState19 && enableButton19) {
                          //print('Button19');
                          setState(() {
                            firstPressControl();
                            color19 = Colors.deepPurple;
                            label19 = listRandomSelected[19].toString();
                            selectedList.add(label19);
                            //print(selectedList);
                            buttonState19 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label19;
                              selectedButtonNumber1 = 19;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label19;
                              selectedButtonNumber2 = 19;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState19 = true;
                                    color19 = Colors.green;
                                    label19 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label19),
                    ),
                  );
                  break;
                case 20:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color20),
                      onPressed: () {
                        if (buttonState20 && enableButton20) {
                          //print('Button20');
                          setState(() {
                            firstPressControl();
                            color20 = Colors.deepPurple;
                            label20 = listRandomSelected[20].toString();
                            selectedList.add(label20);
                            //print(selectedList);
                            buttonState20 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label20;
                              selectedButtonNumber1 = 20;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label20;
                              selectedButtonNumber2 = 20;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState20 = true;
                                    color20 = Colors.green;
                                    label20 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label20),
                    ),
                  );
                  break;
                case 21:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color21),
                      onPressed: () {
                        if (buttonState21 && enableButton21) {
                          //print('Button21');
                          setState(() {
                            firstPressControl();
                            color21 = Colors.deepPurple;
                            label21 = listRandomSelected[21].toString();
                            selectedList.add(label21);
                            //print(selectedList);
                            buttonState21 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label21;
                              selectedButtonNumber1 = 21;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label21;
                              selectedButtonNumber2 = 21;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState21 = true;
                                    color21 = Colors.green;
                                    label21 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label21),
                    ),
                  );
                  break;
                case 22:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color22),
                      onPressed: () {
                        if (buttonState22 && enableButton22) {
                          //print('Button22');
                          setState(() {
                            firstPressControl();
                            color22 = Colors.deepPurple;
                            label22 = listRandomSelected[22].toString();
                            selectedList.add(label22);
                            //print(selectedList);
                            buttonState22 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label22;
                              selectedButtonNumber1 = 22;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label22;
                              selectedButtonNumber2 = 22;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState22 = true;
                                    color22 = Colors.green;
                                    label22 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label22),
                    ),
                  );
                  break;
                case 23:
                  widget = Container(
                    margin: EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 17),
                          primary: color23),
                      onPressed: () {
                        if (buttonState23 && enableButton23) {
                          //print('Button23');
                          setState(() {
                            firstPressControl();
                            color23 = Colors.deepPurple;
                            label23 = listRandomSelected[23].toString();
                            selectedList.add(label23);
                            //print(selectedList);
                            buttonState23 = false;
                            selectedCount = selectedList.length;
                            if (selectedCount == 1) {
                              selectedCount1 = label23;
                              selectedButtonNumber1 = 23;
                            } else if (selectedCount == 2) {
                              selectedCount2 = label23;
                              selectedButtonNumber2 = 23;
                              if (selectedCount1 == selectedCount2) {
                                enableButtonListFalse();
                                //print('Ayni');
                                //print(selectedCount1 + '   ' + selectedCount2);
                                Future.delayed(Duration(seconds: 1), () {
                                  listFinish.add(selectedCount1);
                                  listFinish.add(selectedCount2);
                                  if (listFinish.length == 24) {
                                    timeStop();
                                    newGame();
                                  }
                                  enableButtonListTrue();
                                });
                                selectedList = [];
                              } else {
                                enableButtonListFalse();
                                //print('selectedButtonNumber2 $selectedButtonNumber2');
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    buttonState23 = true;
                                    color23 = Colors.green;
                                    label23 = '';
                                    switchState(selectedButtonNumber1);
                                    selectedList = [];
                                    enableButtonListTrue();
                                  });
                                });
                              }
                            }
                          });
                        }
                      },
                      child: Text(label23),
                    ),
                  );
                  break;
              }
              return widget!;
            },
          ),
        ),
      ),
    );
  }

  switchState(int selectedButtonNumberSwitch) {
    switch (selectedButtonNumberSwitch) {
      case (0):
        {
          buttonState0 = true;
          color0 = Colors.green;
          label0 = '';
        }
        break;
      case (1):
        {
          setState(() {
            buttonState1 = true;
            color1 = Colors.green;
            label1 = '';
          });
        }
        break;
      case (2):
        {
          buttonState2 = true;
          color2 = Colors.green;
          label2 = '';
        }
        break;
      case (3):
        {
          buttonState3 = true;
          color3 = Colors.green;
          label3 = '';
        }
        break;
      case (4):
        {
          buttonState4 = true;
          color4 = Colors.green;
          label4 = '';
        }
        break;
      case (5):
        {
          buttonState5 = true;
          color5 = Colors.green;
          label5 = '';
        }
        break;
      case (6):
        {
          buttonState6 = true;
          color6 = Colors.green;
          label6 = '';
        }
        break;
      case (7):
        {
          buttonState7 = true;
          color7 = Colors.green;
          label7 = '';
        }
        break;
      case (8):
        {
          buttonState8 = true;
          color8 = Colors.green;
          label8 = '';
        }
        break;
      case (9):
        {
          buttonState9 = true;
          color9 = Colors.green;
          label9 = '';
        }
        break;
      case (10):
        {
          buttonState10 = true;
          color10 = Colors.green;
          label10 = '';
        }
        break;
      case (11):
        {
          setState(() {
            buttonState11 = true;
            color11 = Colors.green;
            label11 = '';
          });
        }
        break;
      case (12):
        {
          buttonState12 = true;
          color12 = Colors.green;
          label12 = '';
        }
        break;
      case (13):
        {
          buttonState13 = true;
          color13 = Colors.green;
          label13 = '';
        }
        break;
      case (14):
        {
          buttonState14 = true;
          color14 = Colors.green;
          label14 = '';
        }
        break;
      case (15):
        {
          buttonState15 = true;
          color15 = Colors.green;
          label15 = '';
        }
        break;
      case (16):
        {
          buttonState16 = true;
          color16 = Colors.green;
          label16 = '';
        }
        break;
      case (17):
        {
          buttonState17 = true;
          color17 = Colors.green;
          label17 = '';
        }
        break;
      case (18):
        {
          buttonState18 = true;
          color18 = Colors.green;
          label18 = '';
        }
        break;
      case (19):
        {
          buttonState19 = true;
          color19 = Colors.green;
          label19 = '';
        }
        break;
      case (20):
        {
          buttonState20 = true;
          color20 = Colors.green;
          label20 = '';
        }
        break;
      case (21):
        {
          setState(() {
            buttonState21 = true;
            color21 = Colors.green;
            label21 = '';
          });
        }
        break;
      case (22):
        {
          buttonState22 = true;
          color22 = Colors.green;
          label22 = '';
        }
        break;
      case (23):
        {
          buttonState23 = true;
          color23 = Colors.green;
          label23 = '';
        }
        break;
    }
  }
}
