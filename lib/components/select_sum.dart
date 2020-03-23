import 'package:flutter/material.dart';

class SelectSum extends StatefulWidget {

  @required VoidCallback onPress;

  String nowRB = "";
  String numberBall = "";
  SelectSum({this.numberBall, this.nowRB, this.onPress});

  @override
  State<StatefulWidget> createState() => FirstScreen();
}
class FirstScreen extends State<SelectSum> {
  bool check = true;
  String nowClick = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFirstChildCategories();
  }

  @required VoidCallback onPress;
  String nowRB;
  String numberBall;
  getFirstChildCategories() async {
    onPress = widget.onPress;
    nowRB = widget.nowRB;
    numberBall = widget.numberBall;
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final double wh = 50 * size.width/411.4;

    return new Column(
      children: <Widget>[
        new Container(
          width: 300.0,
          height: 100.0,
          alignment: Alignment.center,
          color: Colors.lightBlue,
          child:  new Text(ThemeColors.numText,
            textAlign:TextAlign.center ,
            style: new TextStyle(
                color: Colors.white,
                fontSize: 70.0,
                fontWeight:FontWeight.bold
            ),
          ),
        ),
        new Divider(
          color: Colors.white,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "01";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum1,
                child: new Text("01",
                  style: new TextStyle(
                      color: ThemeColors.colorText1
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "02";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum2,
                child: new Text("02",
                  style: new TextStyle(
                      color: ThemeColors.colorText2
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "03";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum3,
                child: new Text("03",
                  style: new TextStyle(
                      color: ThemeColors.colorText3
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "04";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum4,
                child: new Text("04",
                  style: new TextStyle(
                      color: ThemeColors.colorText4
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "05";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum5,
                child: new Text("05",
                  style: new TextStyle(
                      color: ThemeColors.colorText5
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "06";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum6,
                child: new Text("06",
                  style: new TextStyle(
                      color: ThemeColors.colorText6
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "07";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum7,
                child: new Text("07",
                  style: new TextStyle(
                      color: ThemeColors.colorText7
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "08";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum8,
                child: new Text("08",
                  style: new TextStyle(
                      color: ThemeColors.colorText8
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "09";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum9,
                child: new Text("09",
                  style: new TextStyle(
                      color: ThemeColors.colorText9
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "10";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum10,
                child: new Text("10",
                  style: new TextStyle(
                      color: ThemeColors.colorText10
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "11";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum11,
                child: new Text("11",
                  style: new TextStyle(
                      color: ThemeColors.colorText11
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "12";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum12,
                child: new Text("12",
                  style: new TextStyle(
                      color: ThemeColors.colorText12
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "13";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum13,
                child: new Text("13",
                  style: new TextStyle(
                      color: ThemeColors.colorText13
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "14";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum14,
                child: new Text("14",
                  style: new TextStyle(
                      color: ThemeColors.colorText14
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "15";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum15,
                child: new Text("15",
                  style: new TextStyle(
                      color: ThemeColors.colorText15
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "16";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum16,
                child: new Text("16",
                  style: new TextStyle(
                      color: ThemeColors.colorText16
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "17";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum17,
                child: new Text("17",
                  style: new TextStyle(
                      color: ThemeColors.colorText17
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "18";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum18,
                child: new Text("18",
                  style: new TextStyle(
                      color: ThemeColors.colorText18
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "19";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum19,
                child: new Text("19",
                  style: new TextStyle(
                      color: ThemeColors.colorText19
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "20";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum20,
                child: new Text("20",
                  style: new TextStyle(
                      color: ThemeColors.colorText20
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "21";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum21,
                child: new Text("21",
                  style: new TextStyle(
                      color: ThemeColors.colorText21
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "22";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum22,
                child: new Text("22",
                  style: new TextStyle(
                      color: ThemeColors.colorText22
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "23";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum23,
                child: new Text("23",
                  style: new TextStyle(
                      color: ThemeColors.colorText23
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "24";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum24,
                child: new Text("24",
                  style: new TextStyle(
                      color: ThemeColors.colorText24
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "25";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum25,
                child: new Text("25",
                  style: new TextStyle(
                      color: ThemeColors.colorText25
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "26";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum26,
                child: new Text("26",
                  style: new TextStyle(
                      color: ThemeColors.colorText26
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "27";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum27,
                child: new Text("27",
                  style: new TextStyle(
                      color: ThemeColors.colorText27
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "28";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum28,
                child: new Text("28",
                  style: new TextStyle(
                      color: ThemeColors.colorText28
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "29";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum29,
                child: new Text("29",
                  style: new TextStyle(
                      color: ThemeColors.colorText29
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "30";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum30,
                child: new Text("30",
                  style: new TextStyle(
                      color: ThemeColors.colorText30
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "31";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum31,
                child: new Text("31",
                  style: new TextStyle(
                      color: ThemeColors.colorText31
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "32";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum32,
                child: new Text("32",
                  style: new TextStyle(
                      color: ThemeColors.colorText32
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation:10.0,
                onPressed: () {
                  nowClick = "33";
                  clickColor();
                },
                backgroundColor: ThemeColors.colorNum33,
                child: new Text("33",
                  style: new TextStyle(
                      color: ThemeColors.colorText33
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: null,
            ),
            new Container(
              width: wh,
              height: wh,
              child: null,
            ),
            new Container(
              width: wh,
              height: wh,
              child: null,
            ),

          ],
        ),
        new Divider(
          color: Colors.white,
        ),

        new ListTile(
          title: Center(
              child: new Container(
                width: 300.0,
                height: wh,
                child: new FlatButton(
                  onPressed: onPress,
                  child: new Text("确  定",
                    textAlign:TextAlign.center ,
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                ),
              )
          ),
//          onTap: (){
//            Navigator.pop(context);
//          },
        ),
      ],

    );
  }

  void clickColor() {

    if (nowRB == "R1") {
      if (ThemeNums.numTextR2 == nowClick
          || ThemeNums.numTextR3 == nowClick || ThemeNums.numTextR4 == nowClick
          || ThemeNums.numTextR5 == nowClick || ThemeNums.numTextR6 == nowClick) {
        return;
      }
    }else if (nowRB == "R2") {
      if (ThemeNums.numTextR1 == nowClick
          || ThemeNums.numTextR3 == nowClick || ThemeNums.numTextR4 == nowClick
          || ThemeNums.numTextR5 == nowClick || ThemeNums.numTextR6 == nowClick) {
        return;
      }
    }else if (nowRB == "R3") {
      if (ThemeNums.numTextR1 == nowClick || ThemeNums.numTextR2 == nowClick
          || ThemeNums.numTextR4 == nowClick
          || ThemeNums.numTextR5 == nowClick || ThemeNums.numTextR6 == nowClick) {
        return;
      }
    }else if (nowRB == "R4") {
      if (ThemeNums.numTextR1 == nowClick || ThemeNums.numTextR2 == nowClick
          || ThemeNums.numTextR3 == nowClick
          || ThemeNums.numTextR5 == nowClick || ThemeNums.numTextR6 == nowClick) {
        return;
      }
    }else if (nowRB == "R5") {
      if (ThemeNums.numTextR1 == nowClick || ThemeNums.numTextR2 == nowClick
          || ThemeNums.numTextR3 == nowClick || ThemeNums.numTextR4 == nowClick
          || ThemeNums.numTextR6 == nowClick) {
        return;
      }
    }else if (nowRB == "R6") {
      if (ThemeNums.numTextR1 == nowClick || ThemeNums.numTextR2 == nowClick
          || ThemeNums.numTextR3 == nowClick || ThemeNums.numTextR4 == nowClick
          || ThemeNums.numTextR5 == nowClick ) {
        return;
      }
    }

    setState(() {

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

      if (nowClick == "01") { // 通过判断check 来 改变按钮颜色
        ThemeColors.colorNum1 = Colors.lightBlue;
        ThemeColors.colorText1 = Colors.white;
      } else if (nowClick == "02") {
        print("YYYYYYYY");
        ThemeColors.colorNum2 = Colors.lightBlue;
        ThemeColors.colorText2 = Colors.white;
      } else if (nowClick == "03") {
        ThemeColors.colorNum3 = Colors.lightBlue;
        ThemeColors.colorText3 = Colors.white;
      } else if (nowClick == "04") {
        ThemeColors.colorNum4 = Colors.lightBlue;
        ThemeColors.colorText4 = Colors.white;
      } else if (nowClick == "05") {
        ThemeColors.colorNum5 = Colors.lightBlue;
        ThemeColors.colorText5 = Colors.white;
      } else if (nowClick == "06") {
        ThemeColors.colorNum6 = Colors.lightBlue;
        ThemeColors.colorText6 = Colors.white;
      } else if (nowClick == "07") {
        ThemeColors.colorNum7 = Colors.lightBlue;
        ThemeColors.colorText7 = Colors.white;
      } else if (nowClick == "08") {
        ThemeColors.colorNum8 = Colors.lightBlue;
        ThemeColors.colorText8 = Colors.white;
      } else if (nowClick == "09") {
        ThemeColors.colorNum9 = Colors.lightBlue;
        ThemeColors.colorText9 = Colors.white;
      } else if (nowClick == "10") {
        ThemeColors.colorNum10 = Colors.lightBlue;
        ThemeColors.colorText10 = Colors.white;
      } else if (nowClick == "11") {
        ThemeColors.colorNum11 = Colors.lightBlue;
        ThemeColors.colorText11 = Colors.white;
      } else if (nowClick == "12") {
        ThemeColors.colorNum12 = Colors.lightBlue;
        ThemeColors.colorText12 = Colors.white;
      } else if (nowClick == "13") {
        ThemeColors.colorNum13 = Colors.lightBlue;
        ThemeColors.colorText13 = Colors.white;
      } else if (nowClick == "14") {
        ThemeColors.colorNum14 = Colors.lightBlue;
        ThemeColors.colorText14 = Colors.white;
      } else if (nowClick == "15") {
        ThemeColors.colorNum15 = Colors.lightBlue;
        ThemeColors.colorText15 = Colors.white;
      } else if (nowClick == "16") {
        ThemeColors.colorNum16 = Colors.lightBlue;
        ThemeColors.colorText16 = Colors.white;
      } else if (nowClick == "17") {
        ThemeColors.colorNum17 = Colors.lightBlue;
        ThemeColors.colorText17 = Colors.white;
      } else if (nowClick == "18") {
        ThemeColors.colorNum18 = Colors.lightBlue;
        ThemeColors.colorText18 = Colors.white;
      } else if (nowClick == "19") {
        ThemeColors.colorNum19 = Colors.lightBlue;
        ThemeColors.colorText19 = Colors.white;
      } else if (nowClick == "20") {
        ThemeColors.colorNum20 = Colors.lightBlue;
        ThemeColors.colorText20 = Colors.white;
      } else if (nowClick == "21") {
        ThemeColors.colorNum21 = Colors.lightBlue;
        ThemeColors.colorText21 = Colors.white;
      } else if (nowClick == "22") {
        ThemeColors.colorNum22 = Colors.lightBlue;
        ThemeColors.colorText22 = Colors.white;
      } else if (nowClick == "23") {
        ThemeColors.colorNum23 = Colors.lightBlue;
        ThemeColors.colorText23 = Colors.white;
      } else if (nowClick == "24") {
        ThemeColors.colorNum24 = Colors.lightBlue;
        ThemeColors.colorText24 = Colors.white;
      } else if (nowClick == "25") {
        ThemeColors.colorNum25 = Colors.lightBlue;
        ThemeColors.colorText25 = Colors.white;
      } else if (nowClick == "26") {
        ThemeColors.colorNum26 = Colors.lightBlue;
        ThemeColors.colorText26 = Colors.white;
      } else if (nowClick == "27") {
        ThemeColors.colorNum27 = Colors.lightBlue;
        ThemeColors.colorText27 = Colors.white;
      } else if (nowClick == "28") {
        ThemeColors.colorNum28 = Colors.lightBlue;
        ThemeColors.colorText28 = Colors.white;
      } else if (nowClick == "29") {
        ThemeColors.colorNum29 = Colors.lightBlue;
        ThemeColors.colorText29 = Colors.white;
      } else if (nowClick == "30") {
        ThemeColors.colorNum30 = Colors.lightBlue;
        ThemeColors.colorText30 = Colors.white;
      } else if (nowClick == "31") {
        ThemeColors.colorNum31 = Colors.lightBlue;
        ThemeColors.colorText31 = Colors.white;
      } else if (nowClick == "32") {
        ThemeColors.colorNum32 = Colors.lightBlue;
        ThemeColors.colorText32 = Colors.white;
      } else if (nowClick == "33") {
        ThemeColors.colorNum33 = Colors.lightBlue;
        ThemeColors.colorText33 = Colors.white;
      }
      ThemeColors.numText = nowClick;
    });

  }

}

class ThemeNums {

  static String numTextR1 = "";
  static String numTextR2 = "";
  static String numTextR3 = "";
  static String numTextR4 = "";
  static String numTextR5 = "";
  static String numTextR6 = "";

  static String numTextB1 = "";

}

class ThemeColors {

  static Color colorNum1 = Colors.white;
  static Color colorNum2 = Colors.white;
  static Color colorNum3 = Colors.white;
  static Color colorNum4 = Colors.white;
  static Color colorNum5 = Colors.white;
  static Color colorNum6 = Colors.white;
  static Color colorNum7 = Colors.white;
  static Color colorNum8 = Colors.white;
  static Color colorNum9 = Colors.white;
  static Color colorNum10 = Colors.white;
  static Color colorNum11 = Colors.white;
  static Color colorNum12 = Colors.white;
  static Color colorNum13 = Colors.white;
  static Color colorNum14 = Colors.white;
  static Color colorNum15 = Colors.white;
  static Color colorNum16 = Colors.white;
  static Color colorNum17 = Colors.white;
  static Color colorNum18 = Colors.white;
  static Color colorNum19 = Colors.white;
  static Color colorNum20 = Colors.white;
  static Color colorNum21 = Colors.white;
  static Color colorNum22 = Colors.white;
  static Color colorNum23 = Colors.white;
  static Color colorNum24 = Colors.white;
  static Color colorNum25 = Colors.white;
  static Color colorNum26 = Colors.white;
  static Color colorNum27 = Colors.white;
  static Color colorNum28 = Colors.white;
  static Color colorNum29 = Colors.white;
  static Color colorNum30 = Colors.white;
  static Color colorNum31 = Colors.white;
  static Color colorNum32 = Colors.white;
  static Color colorNum33 = Colors.white;

  static Color colorText1 = Colors.black;
  static Color colorText2 = Colors.black;
  static Color colorText3 = Colors.black;
  static Color colorText4 = Colors.black;
  static Color colorText5 = Colors.black;
  static Color colorText6 = Colors.black;
  static Color colorText7 = Colors.black;
  static Color colorText8 = Colors.black;
  static Color colorText9 = Colors.black;
  static Color colorText10 = Colors.black;
  static Color colorText11 = Colors.black;
  static Color colorText12 = Colors.black;
  static Color colorText13 = Colors.black;
  static Color colorText14 = Colors.black;
  static Color colorText15 = Colors.black;
  static Color colorText16 = Colors.black;
  static Color colorText17 = Colors.black;
  static Color colorText18 = Colors.black;
  static Color colorText19 = Colors.black;
  static Color colorText20 = Colors.black;
  static Color colorText21 = Colors.black;
  static Color colorText22 = Colors.black;
  static Color colorText23 = Colors.black;
  static Color colorText24 = Colors.black;
  static Color colorText25 = Colors.black;
  static Color colorText26 = Colors.black;
  static Color colorText27 = Colors.black;
  static Color colorText28 = Colors.black;
  static Color colorText29 = Colors.black;
  static Color colorText30 = Colors.black;
  static Color colorText31 = Colors.black;
  static Color colorText32 = Colors.black;
  static Color colorText33 = Colors.black;

  static String numText = "";

  static String btnValue = "全部随机";
}


class SelectSumBlue extends StatefulWidget {

  @required VoidCallback onPress;

  SelectSumBlue({this.onPress});

  @override
  State<StatefulWidget> createState() => FirstScreenBlue();
}
class FirstScreenBlue extends State<SelectSumBlue> {
  bool check = true;
  String nowClick = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFirstChildCategories();
  }

  @required VoidCallback onPress;
  getFirstChildCategories() async {
    onPress = widget.onPress;
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final double wh = 50 * size.width/411.4;

    return new Column(
      children: <Widget>[
        new Container(
          width: 300.0,
          height: 100.0,
          alignment: Alignment.center,
          color: Colors.lightBlue,
          child:  new Text(ThemeColorsBlue.numTextBlue,
            textAlign:TextAlign.center ,
            style: new TextStyle(
                color: Colors.white,
                fontSize: 70.0,
                fontWeight:FontWeight.bold
            ),
          ),
        ),
        new Divider(
          color: Colors.white,
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "01";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue1,
                child: new Text("01",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue1
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "02";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue2,
                child: new Text("02",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue2
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "03";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue3,
                child: new Text("03",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue3
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "04";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue4,
                child: new Text("04",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue4
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "05";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue5,
                child: new Text("05",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue5
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "06";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue6,
                child: new Text("06",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue6
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "07";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue7,
                child: new Text("07",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue7
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "08";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue8,
                child: new Text("08",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue8
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "09";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue9,
                child: new Text("09",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue9
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "10";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue10,
                child: new Text("10",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue10
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "11";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue11,
                child: new Text("11",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue11
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "12";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue12,
                child: new Text("12",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue12
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
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "13";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue13,
                child: new Text("13",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue13
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "14";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue14,
                child: new Text("14",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue14
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "15";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue15,
                child: new Text("15",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue15
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: new FloatingActionButton (
                elevation: 0.0,
                highlightElevation: 10.0,
                onPressed: () {
                  nowClick = "16";
                  clickColor();
                },
                backgroundColor: ThemeColorsBlue.colorNumBlue16,
                child: new Text("16",
                  style: new TextStyle(
                      color: ThemeColorsBlue.colorTextBlue16
                  ),
                ),
              ),
            ),
            new Container(
              width: wh,
              height: wh,
              child: null,
            ),
            new Container(
              width: wh,
              height: wh,
              child: null,
            ),
          ],
        ),
        new Divider(
          color: Colors.white,
        ),

        new ListTile(
          title: Center(
              child: new Container(
                width: 300.0,
                height: wh,
                child: new FlatButton(
                  onPressed: onPress,
                  child: new Text("确  定",
                    textAlign:TextAlign.center ,
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.lightBlue,
                ),
              )
          ),
//          onTap: (){
//            Navigator.pop(context);
//          },
        ),
      ],

    );
  }

  void clickColor() {
    setState(() {
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

      if (nowClick == "01") { // 通过判断check 来 改变按钮颜色
        ThemeColorsBlue.colorNumBlue1 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue1 = Colors.white;
      } else if (nowClick == "02") {
        ThemeColorsBlue.colorNumBlue2 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue2 = Colors.white;
      } else if (nowClick == "03") {
        ThemeColorsBlue.colorNumBlue3 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue3 = Colors.white;
      } else if (nowClick == "04") {
        ThemeColorsBlue.colorNumBlue4 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue4 = Colors.white;
      } else if (nowClick == "05") {
        ThemeColorsBlue.colorNumBlue5 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue5 = Colors.white;
      } else if (nowClick == "06") {
        ThemeColorsBlue.colorNumBlue6 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue6 = Colors.white;
      } else if (nowClick == "07") {
        ThemeColorsBlue.colorNumBlue7 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue7 = Colors.white;
      } else if (nowClick == "08") {
        ThemeColorsBlue.colorNumBlue8 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue8 = Colors.white;
      } else if (nowClick == "09") {
        ThemeColorsBlue.colorNumBlue9 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue9 = Colors.white;
      } else if (nowClick == "10") {
        ThemeColorsBlue.colorNumBlue10 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue10 = Colors.white;
      } else if (nowClick == "11") {
        ThemeColorsBlue.colorNumBlue11 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue11 = Colors.white;
      } else if (nowClick == "12") {
        ThemeColorsBlue.colorNumBlue12 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue12 = Colors.white;
      } else if (nowClick == "13") {
        ThemeColorsBlue.colorNumBlue13 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue13 = Colors.white;
      } else if (nowClick == "14") {
        ThemeColorsBlue.colorNumBlue14 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue14 = Colors.white;
      } else if (nowClick == "15") {
        ThemeColorsBlue.colorNumBlue15 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue15 = Colors.white;
      } else if (nowClick == "16") {
        ThemeColorsBlue.colorNumBlue16 = Colors.lightBlue;
        ThemeColorsBlue.colorTextBlue16 = Colors.white;
      }
      ThemeColorsBlue.numTextBlue = nowClick;
    });

  }

}

class ThemeColorsBlue {

  static Color colorNumBlue1 = Colors.white;
  static Color colorNumBlue2 = Colors.white;
  static Color colorNumBlue3 = Colors.white;
  static Color colorNumBlue4 = Colors.white;
  static Color colorNumBlue5 = Colors.white;
  static Color colorNumBlue6 = Colors.white;
  static Color colorNumBlue7 = Colors.white;
  static Color colorNumBlue8 = Colors.white;
  static Color colorNumBlue9 = Colors.white;
  static Color colorNumBlue10 = Colors.white;
  static Color colorNumBlue11 = Colors.white;
  static Color colorNumBlue12 = Colors.white;
  static Color colorNumBlue13 = Colors.white;
  static Color colorNumBlue14 = Colors.white;
  static Color colorNumBlue15 = Colors.white;
  static Color colorNumBlue16 = Colors.white;

  static Color colorTextBlue1 = Colors.black;
  static Color colorTextBlue2 = Colors.black;
  static Color colorTextBlue3 = Colors.black;
  static Color colorTextBlue4 = Colors.black;
  static Color colorTextBlue5 = Colors.black;
  static Color colorTextBlue6 = Colors.black;
  static Color colorTextBlue7 = Colors.black;
  static Color colorTextBlue8 = Colors.black;
  static Color colorTextBlue9 = Colors.black;
  static Color colorTextBlue10 = Colors.black;
  static Color colorTextBlue11 = Colors.black;
  static Color colorTextBlue12 = Colors.black;
  static Color colorTextBlue13 = Colors.black;
  static Color colorTextBlue14 = Colors.black;
  static Color colorTextBlue15 = Colors.black;
  static Color colorTextBlue16 = Colors.black;

  static String numTextBlue = "";

}