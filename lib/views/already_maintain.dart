import 'package:flutter/material.dart';

import 'package:lottery_random/components/select_sum.dart';
import 'package:lottery_random/components/toast.dart';

import 'package:lottery_random/model/lottery_already.dart';
import 'package:lottery_random/utils/my_icon.dart';

class AlreadyMaintain extends StatefulWidget {
  @override
  createState() => new _alreadyMaintainState();
}

class _alreadyMaintainState extends State<AlreadyMaintain> {

  LotteryAlreadyControlModel lotteryAlreadyControlModel = new LotteryAlreadyControlModel();

  List<LotteryAlready> list = List();

  @override
  void initState() {
    super.initState();
    getLotteryAlreadyList();
  }


  void getLotteryAlreadyList() async {
    list = await lotteryAlreadyControlModel.getLotteryAlreadyList();
    print(list);
    setState(() {
    });
  }

  void addLotteryAlreadyPress () {
    if (ThemeNums.numTextR1 == "" || ThemeNums.numTextR2 == "" ||
        ThemeNums.numTextR3 == "" || ThemeNums.numTextR4 == "" ||
        ThemeNums.numTextR5 == "" || ThemeNums.numTextR6 == "" ||
        ThemeNums.numTextB1 == "") {
      Toast.toast(context,msg: "请输入全部的选定号码!");
      return;
    }

    if (AlreadyDate.issueNo == "") {
      Toast.toast(context,msg: "请输入期号!");
      return;
    }

    LotteryAlready la = this.setSortLotteryAlready(ThemeNums.numTextR1, ThemeNums.numTextR2, ThemeNums.numTextR3
        , ThemeNums.numTextR4, ThemeNums.numTextR5, ThemeNums.numTextR6, ThemeNums.numTextB1
        , "${AlreadyDate.nowDate.year.toString()}-${AlreadyDate.nowDate.month.toString().padLeft(2,'0')}-${AlreadyDate.nowDate.day.toString().padLeft(2,'0')}");
    this.addLotteryAlready(la);
  }

  void addLotteryAlready(LotteryAlready lotteryAlready) async {
    lotteryAlreadyControlModel.addLotteryAlready(lotteryAlready).then((value){
      print(value);
//      Scaffold.of(context).showSnackBar(
//          new SnackBar(content: new Text("添加成功!")));
      LotteryAlready lotteryAlready = new LotteryAlready.fromJSON(value);
      list.add(lotteryAlready);
      setState(() {
        Navigator.pop(context);
      });

    });
  }

  LotteryAlready setSortLotteryAlready(String r1, String r2, String r3, String r4, String r5, String r6, String b1, String time){
    List<int> redList = List();
    redList.add(int.parse(r1));
    redList.add(int.parse(r2));
    redList.add(int.parse(r3));
    redList.add(int.parse(r4));
    redList.add(int.parse(r5));
    redList.add(int.parse(r6));

    redList.sort((num1, num2) => num1 - num2);
    int red1 = redList[0];
    int red2 = redList[1];
    int red3 = redList[2];
    int red4 = redList[3];
    int red5 = redList[4];
    int red6 = redList[5];

    LotteryAlready lotteryAlready = new LotteryAlready(intToString(red1), intToString(red2), intToString(red3),
        intToString(red4), intToString(red5), intToString(red6), b1, time, AlreadyDate.issueNo, AlreadyDate.remarks);
    return lotteryAlready;
  }

  String intToString(int dataSet) {
    if (dataSet < 10) {
      return "0" + dataSet.toString();
    }
    return dataSet.toString();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("往期维护"),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.add),
                color: Colors.white,
                onPressed: () {
                  ThemeNums.numTextR1 = "";
                  ThemeNums.numTextR2 = "";
                  ThemeNums.numTextR3 = "";
                  ThemeNums.numTextR4 = "";
                  ThemeNums.numTextR5 = "";
                  ThemeNums.numTextR6 = "";
                  ThemeNums.numTextB1 = "";
                  AlreadyDate.nowDate =  new DateTime.now();
                  AlreadyDate.issueNo = "";
                  AlreadyDate.remarks = "";
                  showAddDialog();
//                      _selectDate();

                }
            )
          ],
        ),
        body: new Container(
          color: Colors.white,
          child: new ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: list.length,
              itemBuilder: (context, i) {
                final LotteryAlready item = list[i];
                return new Dismissible(
                    key: new Key(item.id.toString()),
                    onDismissed: (DismissDirection direction){
                      setState(() {
                        list.removeAt(i);
                        lotteryAlreadyControlModel.deleteLotteryAlready(item.id.toString());
                      });
                      Scaffold.of(context).showSnackBar(
                          new SnackBar(content: new Text("删除成功!")));
                    },
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Row(
                            children: <Widget>[
                              new Expanded(
                                  child: new Row(
                                    children: <Widget>[
                                      new Icon(Icons.date_range),
                                      new Text("   " + "${list[i].time}",
                                        style: new TextStyle(
                                            fontSize: 17.0
                                        ),
                                      ),

                                    ],
                                  )
                              ),
                              new Text("   " + "${list[i].issueNo}",
                                style: new TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),

                            ],
                          ),
                        ),
                        new Divider(
                          color: Colors.white,
                        ),
                        new Container(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  "${list[i].red1}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                ),
                                new Text(
                                  "${list[i].red2}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                ),
                                new Text(
                                  "${list[i].red3}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                ),
                                new Text(
                                  "${list[i].red4}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                ),
                                new Text(
                                  "${list[i].red5}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                ),
                                new Text(
                                  "${list[i].red6}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                ),
                                new Text(
                                  "${list[i].blue1}",
                                  style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                                ),
                              ],
                            )
                        ),
                        new Divider()
                      ],
                    )
                );
              }
          ),
        ),
      ),
    );
  }

  void showAddDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                child: SimpleDialog(
                  titlePadding: EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  children: <Widget>[
                    new AddAlreadyPicker(onPress: addLotteryAlreadyPress,)
                  ],
                ),
              );
            },
          );
        });

  }

}

class AddAlreadyPicker extends StatefulWidget {

  @required VoidCallback onPress;
  AddAlreadyPicker({this.onPress});

  @override
  State<StatefulWidget> createState() => addAlreadyPickerScreen();
}

class addAlreadyPickerScreen extends State<AddAlreadyPicker> {

  String nowNum = "";

  DateTime nowDate = new DateTime.now();

  LotteryAlreadyControlModel lotteryAlreadyControlModel = new LotteryAlreadyControlModel();

  void checkScreenPress() {
    if (nowNum == "R1") {
      ThemeNums.numTextR1 = ThemeColors.numText;
    }else if (nowNum == "R2") {
      ThemeNums.numTextR2 = ThemeColors.numText;
    }else if (nowNum == "R3") {
      ThemeNums.numTextR3 = ThemeColors.numText;
    }else if (nowNum == "R4") {
      ThemeNums.numTextR4 = ThemeColors.numText;
    }else if (nowNum == "R5") {
      ThemeNums.numTextR5 = ThemeColors.numText;
    }else if (nowNum == "R6") {
      ThemeNums.numTextR6 = ThemeColors.numText;
    }else if (nowNum == "B1") {
      ThemeNums.numTextB1 = ThemeColorsBlue.numTextBlue;
    }
    Navigator.pop(context);
    setState(() {});
  }


  @override
  void initState() {
    super.initState();
    getFirstChildCategories();
  }

  @required VoidCallback onPress;
  getFirstChildCategories() async {
    onPress = widget.onPress;
  }


  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text("日期:"),
            new FlatButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: nowDate,
                      firstDate: new DateTime(2000, 1, 1, 0, 0, 0),
                      lastDate: nowDate.add(new Duration(days: 30)),
                      locale: Locale("zh")
                  ).then((DateTime val) {
//                            print(val);   // 2018-07-12 00:00:00.000
                    setState(() {
                      if (val != null) {
                        nowDate = val;
                        AlreadyDate.nowDate = nowDate;
                      }
                    });
                  }).catchError((err) {
                    print(err);
                  });
                },
                child: new Text("${nowDate.year.toString()}-${nowDate.month.toString().padLeft(2,'0')}-${nowDate.day.toString().padLeft(2,'0')}")
            )
          ],
        ),
        new Divider(
          color: Colors.white,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "R1";
                  ThemeColors.numText = ThemeNums.numTextR1;
                  changeBallColor();
                  showSumPicker(ThemeNums.numTextR1, nowNum, checkScreenPress);
                },
                backgroundColor: Colors.red,
                child: new Text(ThemeNums.numTextR1,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "R2";
                  ThemeColors.numText = ThemeNums.numTextR2;
                  changeBallColor();
                  showSumPicker(ThemeNums.numTextR2, nowNum, checkScreenPress);
                },
                backgroundColor: Colors.red,
                child: new Text(ThemeNums.numTextR2,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "R3";
                  ThemeColors.numText = ThemeNums.numTextR3;
                  changeBallColor();
                  showSumPicker(ThemeNums.numTextR3, nowNum, checkScreenPress);
                },
                backgroundColor: Colors.red,
                child: new Text(ThemeNums.numTextR3,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
        new Divider(
          color: Colors.white,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "R4";
                  ThemeColors.numText = ThemeNums.numTextR4;
                  changeBallColor();
                  showSumPicker(ThemeNums.numTextR4, nowNum, checkScreenPress);
                },
                backgroundColor: Colors.red,
                child: new Text(ThemeNums.numTextR4,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "R5";
                  ThemeColors.numText = ThemeNums.numTextR5;
                  changeBallColor();
                  showSumPicker(ThemeNums.numTextR5, nowNum, checkScreenPress);
                },
                backgroundColor: Colors.red,
                child: new Text(ThemeNums.numTextR5,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "R6";
                  ThemeColors.numText = ThemeNums.numTextR6;
                  changeBallColor();
                  showSumPicker(ThemeNums.numTextR6, nowNum, checkScreenPress);
                },
                backgroundColor: Colors.red,
                child: new Text(ThemeNums.numTextR6,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
        new Divider(
          color: Colors.white,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowNum = "B1";
                  ThemeColorsBlue.numTextBlue = ThemeNums.numTextB1;
                  changeBallColorBlue();
                  showSumPickerBlue(checkScreenPress);
                },
                backgroundColor: Colors.blue,
                child: new Text(ThemeNums.numTextB1,
                  style: new TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
        new TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            icon: Icon(MyIcon.math),
            labelText: '期号:',
          ),
          onChanged: issueNoChanged,
          autofocus: false,
        ),
        new TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            icon: Icon(MyIcon.remark),
            labelText: '备注:',
          ),
          onChanged: remarksChanged,
          autofocus: false,
        ),
        new Divider(
          color: Colors.white,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(icon: Icon(Icons.clear), onPressed: (){
              Navigator.pop(context);
            }),
            new IconButton(icon: Icon(Icons.check), onPressed: onPress),
          ],
        ),
      ],
    );
  }

  void issueNoChanged(String str) {
    AlreadyDate.issueNo = str;
  }
  void remarksChanged(String str) {
    AlreadyDate.remarks = str;
  }


  void showSumPicker(String numberBall, String nowNum, VoidCallback onPress) {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                child: SimpleDialog(
                  titlePadding: EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  children: <Widget>[
                    new SelectSum(numberBall: numberBall, nowRB: nowNum, onPress: onPress)
                  ],
                ),
              );
            },
          );
        });
  }

  void showSumPickerBlue(VoidCallback onPress) {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(
            builder: (context, state) {
              return GestureDetector(
                child: SimpleDialog(
                  titlePadding: EdgeInsets.all(10),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  children: <Widget>[
                    new SelectSumBlue(onPress: onPress)
                  ],
                ),
              );
            },
          );
        });
  }

  void changeBallColor() {
    ThemeColors.colorNum1 = Colors.white;
    ThemeColors.colorNum2 = Colors.white;
    ThemeColors.colorNum3 = Colors.white;
    ThemeColors.colorNum4 = Colors.white;
    ThemeColors.colorNum5 = Colors.white;
    ThemeColors.colorNum6 = Colors.white;
    ThemeColors.colorNum7 = Colors.white;
    ThemeColors.colorNum8 = Colors.white;
    ThemeColors.colorNum9 = Colors.white;
    ThemeColors.colorNum10 = Colors.white;
    ThemeColors.colorNum11 = Colors.white;
    ThemeColors.colorNum12 = Colors.white;
    ThemeColors.colorNum13 = Colors.white;
    ThemeColors.colorNum14 = Colors.white;
    ThemeColors.colorNum15 = Colors.white;
    ThemeColors.colorNum16 = Colors.white;
    ThemeColors.colorNum17 = Colors.white;
    ThemeColors.colorNum18 = Colors.white;
    ThemeColors.colorNum19 = Colors.white;
    ThemeColors.colorNum20 = Colors.white;
    ThemeColors.colorNum21 = Colors.white;
    ThemeColors.colorNum22 = Colors.white;
    ThemeColors.colorNum23 = Colors.white;
    ThemeColors.colorNum24 = Colors.white;
    ThemeColors.colorNum25 = Colors.white;
    ThemeColors.colorNum26 = Colors.white;
    ThemeColors.colorNum27 = Colors.white;
    ThemeColors.colorNum28 = Colors.white;
    ThemeColors.colorNum29 = Colors.white;
    ThemeColors.colorNum30 = Colors.white;
    ThemeColors.colorNum31 = Colors.white;
    ThemeColors.colorNum32 = Colors.white;
    ThemeColors.colorNum33 = Colors.white;

    ThemeColors.colorText1 = Colors.black;
    ThemeColors.colorText2 = Colors.black;
    ThemeColors.colorText3 = Colors.black;
    ThemeColors.colorText4 = Colors.black;
    ThemeColors.colorText5 = Colors.black;
    ThemeColors.colorText6 = Colors.black;
    ThemeColors.colorText7 = Colors.black;
    ThemeColors.colorText8 = Colors.black;
    ThemeColors.colorText9 = Colors.black;
    ThemeColors.colorText10 = Colors.black;
    ThemeColors.colorText11 = Colors.black;
    ThemeColors.colorText12 = Colors.black;
    ThemeColors.colorText13 = Colors.black;
    ThemeColors.colorText14 = Colors.black;
    ThemeColors.colorText15 = Colors.black;
    ThemeColors.colorText16 = Colors.black;
    ThemeColors.colorText17 = Colors.black;
    ThemeColors.colorText18 = Colors.black;
    ThemeColors.colorText19 = Colors.black;
    ThemeColors.colorText20 = Colors.black;
    ThemeColors.colorText21 = Colors.black;
    ThemeColors.colorText22 = Colors.black;
    ThemeColors.colorText23 = Colors.black;
    ThemeColors.colorText24 = Colors.black;
    ThemeColors.colorText25 = Colors.black;
    ThemeColors.colorText26 = Colors.black;
    ThemeColors.colorText27 = Colors.black;
    ThemeColors.colorText28 = Colors.black;
    ThemeColors.colorText29 = Colors.black;
    ThemeColors.colorText30 = Colors.black;
    ThemeColors.colorText31 = Colors.black;
    ThemeColors.colorText32 = Colors.black;
    ThemeColors.colorText33 = Colors.black;

    if (ThemeColors.numText == "01") { // 通过判断check 来 改变按钮颜色
      ThemeColors.colorNum1 = Colors.lightBlue;
      ThemeColors.colorText1 = Colors.white;
    } else if (ThemeColors.numText == "02") {
      ThemeColors.colorNum2 = Colors.lightBlue;
      ThemeColors.colorText2 = Colors.white;
    } else if (ThemeColors.numText == "03") {
      ThemeColors.colorNum3 = Colors.lightBlue;
      ThemeColors.colorText3 = Colors.white;
    } else if (ThemeColors.numText == "04") {
      ThemeColors.colorNum4 = Colors.lightBlue;
      ThemeColors.colorText4 = Colors.white;
    } else if (ThemeColors.numText == "05") {
      ThemeColors.colorNum5 = Colors.lightBlue;
      ThemeColors.colorText5 = Colors.white;
    } else if (ThemeColors.numText == "06") {
      ThemeColors.colorNum6 = Colors.lightBlue;
      ThemeColors.colorText6 = Colors.white;
    } else if (ThemeColors.numText == "07") {
      ThemeColors.colorNum7 = Colors.lightBlue;
      ThemeColors.colorText7 = Colors.white;
    } else if (ThemeColors.numText == "08") {
      ThemeColors.colorNum8 = Colors.lightBlue;
      ThemeColors.colorText8 = Colors.white;
    } else if (ThemeColors.numText == "09") {
      ThemeColors.colorNum9 = Colors.lightBlue;
      ThemeColors.colorText9 = Colors.white;
    } else if (ThemeColors.numText == "10") {
      ThemeColors.colorNum10 = Colors.lightBlue;
      ThemeColors.colorText10 = Colors.white;
    } else if (ThemeColors.numText == "11") {
      ThemeColors.colorNum11 = Colors.lightBlue;
      ThemeColors.colorText11 = Colors.white;
    } else if (ThemeColors.numText == "12") {
      ThemeColors.colorNum12 = Colors.lightBlue;
      ThemeColors.colorText12 = Colors.white;
    } else if (ThemeColors.numText == "13") {
      ThemeColors.colorNum13 = Colors.lightBlue;
      ThemeColors.colorText13 = Colors.white;
    } else if (ThemeColors.numText == "14") {
      ThemeColors.colorNum14 = Colors.lightBlue;
      ThemeColors.colorText14 = Colors.white;
    } else if (ThemeColors.numText == "15") {
      ThemeColors.colorNum15 = Colors.lightBlue;
      ThemeColors.colorText15 = Colors.white;
    } else if (ThemeColors.numText == "16") {
      ThemeColors.colorNum16 = Colors.lightBlue;
      ThemeColors.colorText16 = Colors.white;
    } else if (ThemeColors.numText == "17") {
      ThemeColors.colorNum17 = Colors.lightBlue;
      ThemeColors.colorText17 = Colors.white;
    } else if (ThemeColors.numText == "18") {
      ThemeColors.colorNum18 = Colors.lightBlue;
      ThemeColors.colorText18 = Colors.white;
    } else if (ThemeColors.numText == "19") {
      ThemeColors.colorNum19 = Colors.lightBlue;
      ThemeColors.colorText19 = Colors.white;
    } else if (ThemeColors.numText == "20") {
      ThemeColors.colorNum20 = Colors.lightBlue;
      ThemeColors.colorText20 = Colors.white;
    } else if (ThemeColors.numText == "21") {
      ThemeColors.colorNum21 = Colors.lightBlue;
      ThemeColors.colorText21 = Colors.white;
    } else if (ThemeColors.numText == "22") {
      ThemeColors.colorNum22 = Colors.lightBlue;
      ThemeColors.colorText22 = Colors.white;
    } else if (ThemeColors.numText == "23") {
      ThemeColors.colorNum23 = Colors.lightBlue;
      ThemeColors.colorText23 = Colors.white;
    } else if (ThemeColors.numText == "24") {
      ThemeColors.colorNum24 = Colors.lightBlue;
      ThemeColors.colorText24 = Colors.white;
    } else if (ThemeColors.numText == "25") {
      ThemeColors.colorNum25 = Colors.lightBlue;
      ThemeColors.colorText25 = Colors.white;
    } else if (ThemeColors.numText == "26") {
      ThemeColors.colorNum26 = Colors.lightBlue;
      ThemeColors.colorText26 = Colors.white;
    } else if (ThemeColors.numText == "27") {
      ThemeColors.colorNum27 = Colors.lightBlue;
      ThemeColors.colorText27 = Colors.white;
    } else if (ThemeColors.numText == "28") {
      ThemeColors.colorNum28 = Colors.lightBlue;
      ThemeColors.colorText28 = Colors.white;
    } else if (ThemeColors.numText == "29") {
      ThemeColors.colorNum29 = Colors.lightBlue;
      ThemeColors.colorText29 = Colors.white;
    } else if (ThemeColors.numText == "30") {
      ThemeColors.colorNum30 = Colors.lightBlue;
      ThemeColors.colorText30 = Colors.white;
    } else if (ThemeColors.numText == "31") {
      ThemeColors.colorNum31 = Colors.lightBlue;
      ThemeColors.colorText31 = Colors.white;
    } else if (ThemeColors.numText == "32") {
      ThemeColors.colorNum32 = Colors.lightBlue;
      ThemeColors.colorText32 = Colors.white;
    } else if (ThemeColors.numText == "33") {
      ThemeColors.colorNum33 = Colors.lightBlue;
      ThemeColors.colorText33 = Colors.white;
    }
  }

  void changeBallColorBlue() {

    ThemeColorsBlue.colorNumBlue1 = Colors.white;
    ThemeColorsBlue.colorNumBlue2 = Colors.white;
    ThemeColorsBlue.colorNumBlue3 = Colors.white;
    ThemeColorsBlue.colorNumBlue4 = Colors.white;
    ThemeColorsBlue.colorNumBlue5 = Colors.white;
    ThemeColorsBlue.colorNumBlue6 = Colors.white;
    ThemeColorsBlue.colorNumBlue7 = Colors.white;
    ThemeColorsBlue.colorNumBlue8 = Colors.white;
    ThemeColorsBlue.colorNumBlue9 = Colors.white;
    ThemeColorsBlue.colorNumBlue10 = Colors.white;
    ThemeColorsBlue.colorNumBlue11 = Colors.white;
    ThemeColorsBlue.colorNumBlue12 = Colors.white;
    ThemeColorsBlue.colorNumBlue13 = Colors.white;
    ThemeColorsBlue.colorNumBlue14 = Colors.white;
    ThemeColorsBlue.colorNumBlue15 = Colors.white;
    ThemeColorsBlue.colorNumBlue16 = Colors.white;

    ThemeColorsBlue.colorTextBlue1 = Colors.black;
    ThemeColorsBlue.colorTextBlue2 = Colors.black;
    ThemeColorsBlue.colorTextBlue3 = Colors.black;
    ThemeColorsBlue.colorTextBlue4 = Colors.black;
    ThemeColorsBlue.colorTextBlue5 = Colors.black;
    ThemeColorsBlue.colorTextBlue6 = Colors.black;
    ThemeColorsBlue.colorTextBlue7 = Colors.black;
    ThemeColorsBlue.colorTextBlue8 = Colors.black;
    ThemeColorsBlue.colorTextBlue9 = Colors.black;
    ThemeColorsBlue.colorTextBlue10 = Colors.black;
    ThemeColorsBlue.colorTextBlue11 = Colors.black;
    ThemeColorsBlue.colorTextBlue12 = Colors.black;
    ThemeColorsBlue.colorTextBlue13 = Colors.black;
    ThemeColorsBlue.colorTextBlue14 = Colors.black;
    ThemeColorsBlue.colorTextBlue15 = Colors.black;
    ThemeColorsBlue.colorTextBlue16 = Colors.black;


    if (ThemeColorsBlue.numTextBlue == "01") { // 通过判断check 来 改变按钮颜色
      ThemeColorsBlue.colorNumBlue1 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue1 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "02") {
      ThemeColorsBlue.colorNumBlue2 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue2 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "03") {
      ThemeColorsBlue.colorNumBlue3 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue3 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "04") {
      ThemeColorsBlue.colorNumBlue4 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue4 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "05") {
      ThemeColorsBlue.colorNumBlue5 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue5 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "06") {
      ThemeColorsBlue.colorNumBlue6 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue6 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "07") {
      ThemeColorsBlue.colorNumBlue7 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue7 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "08") {
      ThemeColorsBlue.colorNumBlue8 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue8 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "09") {
      ThemeColorsBlue.colorNumBlue9 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue9 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "10") {
      ThemeColorsBlue.colorNumBlue10 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue10 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "11") {
      ThemeColorsBlue.colorNumBlue11 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue11 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "12") {
      ThemeColorsBlue.colorNumBlue12 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue12 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "13") {
      ThemeColorsBlue.colorNumBlue13 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue13 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "14") {
      ThemeColorsBlue.colorNumBlue14 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue14 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "15") {
      ThemeColorsBlue.colorNumBlue15 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue15 = Colors.white;
    } else if (ThemeColorsBlue.numTextBlue == "16") {
      ThemeColorsBlue.colorNumBlue16 = Colors.lightBlue;
      ThemeColorsBlue.colorTextBlue16 = Colors.white;
    }
  }

}

class AlreadyDate {
  static DateTime nowDate = new DateTime.now();
  static String issueNo = "";
  static String remarks = "";
}

