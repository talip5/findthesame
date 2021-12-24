import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MaterialApp(home: PositionedTiles()));

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

Color colorOn0 = Colors.deepPurple;
Color colorOn1 = Colors.deepPurple;
Color colorOn2 = Colors.deepPurple;
Color colorOn3 = Colors.deepPurple;
Color colorOn4 = Colors.deepPurple;
Color colorOn5 = Colors.deepPurple;

Color color0 = Colors.green;
Color color1 = Colors.green;
Color color2 = Colors.green;
Color color3 = Colors.green;
Color color4 = Colors.green;
Color color5 = Colors.green;

String label0 = '';
String label1 = '';
String label2 = '';
String label3 = '';
String label4 = '';
String label5 = '';

bool buttonState0 = true;
bool buttonState1 = true;
bool buttonState2 = true;
bool buttonState3 = true;
bool buttonState4 = true;
bool buttonState5 = true;

int buttonNumber0 = 0;
int buttonNumber1 = 1;
int buttonNumber2 = 2;
int buttonNumber3 = 3;
int buttonNumber4 = 4;
int buttonNumber5 = 5;

String selectedCount1 = '';
String selectedCount2 = '';
int selectedCount = 0;
int selectedButtonNumber1 = 0;
int selectedButtonNumber2 = 0;

int listNumber = 0;
Random random = Random();
Random random1 = Random();

int count = 0;

List<String> selectedList = [];
List<int> list = [];
List<int> listRandomSelected = [];
List<int> listRandomControl = [];
List<String> listFinish = [];

class PositionedTilesState extends State<PositionedTiles> {
  int i = 0;
  int randomRange = 3;

  listRandom1() {
    for (i = 1; i <= randomRange; i++) {
      listNumber = random.nextInt(15);
      if (i == 1) {
        listRandomControl.add(listNumber);
        list.add(listNumber);
        list.add(listNumber);
      } else {
        listRandomControl.forEach((element) {
          print('$i element $element');
          if (element != listNumber) {
            print('listNumber $listNumber');
          } else {
            setState(() {
              randomRange++;
            });
            print('ayni');
          }
        });
      }
    }
    print('list $list');
  }

  listRandom() {
    for (int i = 1; i <= 3; i++) {
      listNumber = random.nextInt(100);
      list.add(listNumber);
      list.add(listNumber);
    }
  }

  listReduce() {
    int cycle = 6;
    for (int k = 1; k <= cycle; k++) {
      if (list.isNotEmpty) {
        count = list.length;
        int value = random.nextInt(count);
        int listValue = list[value];
        listRandomSelected.add(listValue);
        list.removeAt(value);
      }
    }
    print('listRandomSelected $listRandomSelected');
  }

  randomSpeed() {
    //int valueRandom = random1.nextInt(100-80);  // 0 -19
    int valueRandom = random1.nextInt(10) + 80;
    print(valueRandom);
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
      setUp();
      listRandom();
      listReduce();
      listFinish = [];
    });
  }

  random2() {
    List<int> random5 = [];
    List<int> temporary5=[];
    Random random2 = Random();
    for (int i = 0; i <= 4; i++) {
      int valueRandom = random2.nextInt(10);
      if(random5.isEmpty) {
        random5.add(valueRandom);
        temporary5=random5;
        print(random5.length);
      }
      if(i>=1){
        random5.forEach((element) {
          if(valueRandom==random5[i-1]){
            print('ayni');
          }else{
            temporary5.add(valueRandom);
          }
        });
      }
      random5=temporary5;
      print(temporary5);
    }
    print(random5);
  }

  listdeneme(){
    var list = [1, 2, 3, 4, 5];
    var toRemove = [];

    list.forEach( (e) {
      if(e % 2 == 1)
        toRemove.add(e);
      print(toRemove);
    });

    //list.removeWhere( (e) => toRemove.contains(e));
    list.removeWhere((element) => toRemove.contains(element));
    print('list $list');
  }
  @override
  void initState() {
    //listRandom();
    //listReduce();
    //random2();
    listdeneme();
    super.initState();
  }

  setUp() {
    color0 = Colors.green;
    color1 = Colors.green;
    color2 = Colors.green;
    color3 = Colors.green;
    color4 = Colors.green;
    color5 = Colors.green;

    label0 = '';
    label1 = '';
    label2 = '';
    label3 = '';
    label4 = '';
    label5 = '';

    buttonState0 = true;
    buttonState1 = true;
    buttonState2 = true;
    buttonState3 = true;
    buttonState4 = true;
    buttonState5 = true;

    buttonNumber0 = 0;
    buttonNumber1 = 1;
    buttonNumber2 = 2;
    buttonNumber3 = 3;
    buttonNumber4 = 4;
    buttonNumber5 = 5;

    selectedCount1 = '';
    selectedCount2 = '';
    selectedCount = 0;
    selectedButtonNumber1 = 0;
    selectedButtonNumber2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color0),
              onPressed: () {
                if (buttonState0) {
                  print('Button0');
                  setState(() {
                    color0 = Colors.deepPurple;
                    label0 = listRandomSelected[0].toString();
                    selectedList.add(label0);
                    print(selectedList);
                    buttonState0 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label0;
                      selectedButtonNumber1 = 0;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label0;
                      selectedButtonNumber2 = 0;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState0 = true;
                            color0 = Colors.green;
                            label0 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color1),
              onPressed: () {
                if (buttonState1) {
                  print('Button1');
                  setState(() {
                    color1 = Colors.deepPurple;
                    label1 = listRandomSelected[1].toString();
                    selectedList.add(label1);
                    print(selectedList);
                    buttonState1 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label1;
                      selectedButtonNumber1 = 1;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label1;
                      selectedButtonNumber2 = 1;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState1 = true;
                            color1 = Colors.green;
                            label1 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label1),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color2),
              onPressed: () {
                if (buttonState2) {
                  print('Button2');
                  setState(() {
                    color2 = Colors.deepPurple;
                    label2 = listRandomSelected[2].toString();
                    selectedList.add(label2);
                    print(selectedList);
                    buttonState2 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label2;
                      selectedButtonNumber1 = 2;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label2;
                      selectedButtonNumber2 = 2;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState2 = true;
                            color2 = Colors.green;
                            label2 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label2),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color3),
              onPressed: () {
                if (buttonState3) {
                  print('Button3');
                  setState(() {
                    color3 = Colors.deepPurple;
                    label3 = listRandomSelected[3].toString();
                    selectedList.add(label3);
                    print(selectedList);
                    buttonState3 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label3;
                      selectedButtonNumber1 = 3;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label3;
                      selectedButtonNumber2 = 3;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState3 = true;
                            color3 = Colors.green;
                            label3 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label3),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color4),
              onPressed: () {
                if (buttonState4) {
                  print('Button4');
                  setState(() {
                    color4 = Colors.deepPurple;
                    label4 = listRandomSelected[4].toString();
                    selectedList.add(label4);
                    print(selectedList);
                    buttonState4 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label4;
                      selectedButtonNumber1 = 4;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label4;
                      selectedButtonNumber2 = 4;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState4 = true;
                            color4 = Colors.green;
                            label4 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label4),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color5),
              onPressed: () {
                if (buttonState5) {
                  print('Button5');
                  setState(() {
                    color5 = Colors.deepPurple;
                    label5 = listRandomSelected[5].toString();
                    selectedList.add(label5);
                    print(selectedList);
                    buttonState5 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label5;
                      selectedButtonNumber1 = 5;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label5;
                      selectedButtonNumber2 = 5;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState5 = true;
                            color5 = Colors.green;
                            label5 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label5),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.sentiment_very_satisfied),
            onPressed: () {
              print('FloatingActionButton');
              newGame();
            }),
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
    }
  }
}
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MaterialApp(home: PositionedTiles()));

class PositionedTiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

Color colorOn0 = Colors.deepPurple;
Color colorOn1 = Colors.deepPurple;
Color colorOn2 = Colors.deepPurple;
Color colorOn3 = Colors.deepPurple;
Color colorOn4 = Colors.deepPurple;
Color colorOn5 = Colors.deepPurple;

Color color0 = Colors.green;
Color color1 = Colors.green;
Color color2 = Colors.green;
Color color3 = Colors.green;
Color color4 = Colors.green;
Color color5 = Colors.green;

String label0 = '';
String label1 = '';
String label2 = '';
String label3 = '';
String label4 = '';
String label5 = '';

bool buttonState0 = true;
bool buttonState1 = true;
bool buttonState2 = true;
bool buttonState3 = true;
bool buttonState4 = true;
bool buttonState5 = true;

int buttonNumber0 = 0;
int buttonNumber1 = 1;
int buttonNumber2 = 2;
int buttonNumber3 = 3;
int buttonNumber4 = 4;
int buttonNumber5 = 5;

String selectedCount1 = '';
String selectedCount2 = '';
int selectedCount = 0;
int selectedButtonNumber1 = 0;
int selectedButtonNumber2 = 0;

int listNumber = 0;
Random random = Random();
Random random1 = Random();

int count = 0;

List<String> selectedList = [];
List<int> list = [];
List<int> listRandomSelected = [];
List<int> listRandomControl = [];
List<String> listFinish = [];

class PositionedTilesState extends State<PositionedTiles> {
  int i = 0;
  int randomRange = 3;

  listRandom1() {
    for (i = 1; i <= randomRange; i++) {
      listNumber = random.nextInt(15);
      if (i == 1) {
        listRandomControl.add(listNumber);
        list.add(listNumber);
        list.add(listNumber);
      } else {
        listRandomControl.forEach((element) {
          print('$i element $element');
          if (element != listNumber) {
            print('listNumber $listNumber');
          } else {
            setState(() {
              randomRange++;
            });
            print('ayni');
          }
        });
      }
    }
    print('list $list');
  }

  listRandom() {
    for (int i = 1; i <= 3; i++) {
      listNumber = random.nextInt(100);
      list.add(listNumber);
      list.add(listNumber);
    }
  }

  listReduce() {
    int cycle = 6;
    for (int k = 1; k <= cycle; k++) {
      if (list.isNotEmpty) {
        count = list.length;
        int value = random.nextInt(count);
        int listValue = list[value];
        listRandomSelected.add(listValue);
        list.removeAt(value);
      }
    }
    print('listRandomSelected $listRandomSelected');
  }

  randomSpeed() {
    //int valueRandom = random1.nextInt(100-80);  // 0 -19
    int valueRandom = random1.nextInt(10) + 80;
    print(valueRandom);
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
      setUp();
      listRandom();
      listReduce();
      listFinish = [];
    });
  }

  random2() {
    List<int> random5 = [];
    List<int> temporary5=[];
    Random random2 = Random();
    for (int i = 0; i <= 4; i++) {
      int valueRandom = random2.nextInt(10);
      if(random5.isEmpty) {
        random5.add(valueRandom);
        temporary5=random5;
        print(random5.length);
      }
      if(i>=1){
        random5.forEach((element) {
          if(valueRandom==random5[i-1]){
            print('ayni');
          }else{
            temporary5.add(valueRandom);
          }
        });
      }
      random5=temporary5;
      print(temporary5);
    }
    print(random5);
  }

  listdeneme(){
    var list = [1, 2, 3, 4, 5];
    var toRemove = [];

    list.forEach( (e) {
      if(e % 2 == 1)
        toRemove.add(e);
      print(toRemove);
    });

    //list.removeWhere( (e) => toRemove.contains(e));
    list.removeWhere((element) => toRemove.contains(element));
    print('list $list');
  }

  createList(){
    final items = List<String>.generate(10, (i) => "Item $i");
    // print(items);
    final items1=List<String>.generate(10, (index) => 'null $index');
    //print(items1);
    final items2=List<int>.generate(10, (index) => index);
    //print(items2);
  }

  createRandom(){
    final items2=List<int>.generate(10, (index) => index);
    List<int> createRandomList=[];
    Random getRandom=Random();
    for(int i=0; i<3; i++) {
      int getNumber = getRandom.nextInt(items2.length);
      print('getNumber $getNumber');
      int randomItems = items2[getNumber];
      createRandomList.add(randomItems);
      items2.removeAt(getNumber);
      setState(() {
        int itemsLength=items2.length;
        print(itemsLength);
      });
    }
    print(createRandomList);
    print(items2);
  }

  @override
  void initState() {
    //listRandom();
    //listReduce();
    //random2();
    //listdeneme();
    //createList();
    createRandom();
    super.initState();
  }

  setUp() {
    color0 = Colors.green;
    color1 = Colors.green;
    color2 = Colors.green;
    color3 = Colors.green;
    color4 = Colors.green;
    color5 = Colors.green;

    label0 = '';
    label1 = '';
    label2 = '';
    label3 = '';
    label4 = '';
    label5 = '';

    buttonState0 = true;
    buttonState1 = true;
    buttonState2 = true;
    buttonState3 = true;
    buttonState4 = true;
    buttonState5 = true;

    buttonNumber0 = 0;
    buttonNumber1 = 1;
    buttonNumber2 = 2;
    buttonNumber3 = 3;
    buttonNumber4 = 4;
    buttonNumber5 = 5;

    selectedCount1 = '';
    selectedCount2 = '';
    selectedCount = 0;
    selectedButtonNumber1 = 0;
    selectedButtonNumber2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color0),
              onPressed: () {
                if (buttonState0) {
                  print('Button0');
                  setState(() {
                    color0 = Colors.deepPurple;
                    label0 = listRandomSelected[0].toString();
                    selectedList.add(label0);
                    print(selectedList);
                    buttonState0 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label0;
                      selectedButtonNumber1 = 0;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label0;
                      selectedButtonNumber2 = 0;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState0 = true;
                            color0 = Colors.green;
                            label0 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label0),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color1),
              onPressed: () {
                if (buttonState1) {
                  print('Button1');
                  setState(() {
                    color1 = Colors.deepPurple;
                    label1 = listRandomSelected[1].toString();
                    selectedList.add(label1);
                    print(selectedList);
                    buttonState1 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label1;
                      selectedButtonNumber1 = 1;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label1;
                      selectedButtonNumber2 = 1;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState1 = true;
                            color1 = Colors.green;
                            label1 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label1),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color2),
              onPressed: () {
                if (buttonState2) {
                  print('Button2');
                  setState(() {
                    color2 = Colors.deepPurple;
                    label2 = listRandomSelected[2].toString();
                    selectedList.add(label2);
                    print(selectedList);
                    buttonState2 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label2;
                      selectedButtonNumber1 = 2;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label2;
                      selectedButtonNumber2 = 2;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState2 = true;
                            color2 = Colors.green;
                            label2 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label2),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color3),
              onPressed: () {
                if (buttonState3) {
                  print('Button3');
                  setState(() {
                    color3 = Colors.deepPurple;
                    label3 = listRandomSelected[3].toString();
                    selectedList.add(label3);
                    print(selectedList);
                    buttonState3 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label3;
                      selectedButtonNumber1 = 3;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label3;
                      selectedButtonNumber2 = 3;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState3 = true;
                            color3 = Colors.green;
                            label3 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label3),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color4),
              onPressed: () {
                if (buttonState4) {
                  print('Button4');
                  setState(() {
                    color4 = Colors.deepPurple;
                    label4 = listRandomSelected[4].toString();
                    selectedList.add(label4);
                    print(selectedList);
                    buttonState4 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label4;
                      selectedButtonNumber1 = 4;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label4;
                      selectedButtonNumber2 = 4;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState4 = true;
                            color4 = Colors.green;
                            label4 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label4),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20), primary: color5),
              onPressed: () {
                if (buttonState5) {
                  print('Button5');
                  setState(() {
                    color5 = Colors.deepPurple;
                    label5 = listRandomSelected[5].toString();
                    selectedList.add(label5);
                    print(selectedList);
                    buttonState5 = false;
                    selectedCount = selectedList.length;
                    if (selectedCount == 1) {
                      selectedCount1 = label5;
                      selectedButtonNumber1 = 5;
                    } else if (selectedCount == 2) {
                      selectedCount2 = label5;
                      selectedButtonNumber2 = 5;
                      if (selectedCount1 == selectedCount2) {
                        print('Ayni');
                        print(selectedCount1 + '   ' + selectedCount2);
                        Future.delayed(Duration(seconds: 2), () {
                          listFinish.add(selectedCount1);
                          listFinish.add(selectedCount2);
                          if (listFinish.length == 6) {
                            newGame();
                          }
                        });
                        selectedList = [];
                      } else {
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            buttonState5 = true;
                            color5 = Colors.green;
                            label5 = '';
                            switchState(selectedButtonNumber1);
                            selectedList = [];
                          });
                        });
                      }
                    }
                  });
                }
              },
              child: Text(label5),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.sentiment_very_satisfied),
            onPressed: () {
              print('FloatingActionButton');
              newGame();
            }),
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
    }
  }
}
