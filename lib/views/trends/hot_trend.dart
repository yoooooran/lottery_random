import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lottery_random/model/lottery_already.dart';

class HotTrend extends StatefulWidget {
  @override
  createState() => new _HotTrendState();
}

class _HotTrendState extends State<HotTrend> {

  LotteryAlreadyControlModel lotteryAlreadyControlModel = new LotteryAlreadyControlModel();
  List<LotteryAlready> list = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLotteryAlreadyList();
  }

  int num1 = 0, num2 = 0, num3 = 0, num4 = 0, num5 = 0,
      num6 = 0, num7 = 0, num8 = 0, num9 = 0, num10 = 0,
      num11 = 0, num12 = 0, num13 = 0, num14 = 0, num15 = 0,
      num16 = 0, num17 = 0, num18 = 0, num19 = 0, num20 = 0,
      num21 = 0, num22 = 0, num23 = 0, num24 = 0, num25 = 0,
      num26 = 0, num27 = 0, num28 = 0, num29 = 0, num30 = 0,
      num31 = 0, num32 = 0, num33 = 0;
  void getLotteryAlreadyList() async {
    list = await lotteryAlreadyControlModel.getLotteryAlreadyList();
    for(LotteryAlready lotteryAlready in list) {
      sumNum(lotteryAlready.red1);
      sumNum(lotteryAlready.red2);
      sumNum(lotteryAlready.red3);
      sumNum(lotteryAlready.red4);
      sumNum(lotteryAlready.red5);
      sumNum(lotteryAlready.red6);
    }
    setState(() {});
  }
  
  void sumNum(String str) {
    if (str == "01") {
      num1++;
    }else if (str == "02") {
      num2++;
    }else if (str == "03") {
      num3++;
    }else if (str == "04") {
      num4++;
    }else if (str == "05") {
      num5++;
    }else if (str == "06") {
      num6++;
    }else if (str == "07") {
      num7++;
    }else if (str == "08") {
      num8++;
    }else if (str == "09") {
      num9++;
    }else if (str == "10") {
      num10++;
    }else if (str == "11") {
      num11++;
    }else if (str == "12") {
      num12++;
    }else if (str == "13") {
      num13++;
    }else if (str == "14") {
      num14++;
    }else if (str == "15") {
      num15++;
    }else if (str == "16") {
      num16++;
    }else if (str == "17") {
      num17++;
    }else if (str == "18") {
      num18++;
    }else if (str == "19") {
      num19++;
    }else if (str == "20") {
      num20++;
    }else if (str == "21") {
      num21++;
    }else if (str == "22") {
      num22++;
    }else if (str == "23") {
      num23++;
    }else if (str == "24") {
      num24++;
    }else if (str == "25") {
      num25++;
    }else if (str == "26") {
      num26++;
    }else if (str == "27") {
      num27++;
    }else if (str == "28") {
      num28++;
    }else if (str == "29") {
      num29++;
    }else if (str == "30") {
      num30++;
    }else if (str == "31") {
      num31++;
    }else if (str == "32") {
      num32++;
    }else if (str == "33") {
      num33++;
    }
  }
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("冷热分析"),
          centerTitle: true,
        ),
        body: new Container(
          color: Colors.white,
          child: new ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel1("01"),
                      setLabel1("02"),
                      setLabel1("03"),
                      setLabel1("04"),
                      setLabel1("05"),
                      setLabel1("06"),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel2(num1.toString()),
                      setLabel2(num2.toString()),
                      setLabel2(num3.toString()),
                      setLabel2(num4.toString()),
                      setLabel2(num5.toString()),
                      setLabel2(num6.toString()),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel3(num1.toString()),
                      setLabel3(num2.toString()),
                      setLabel3(num3.toString()),
                      setLabel3(num4.toString()),
                      setLabel3(num5.toString()),
                      setLabel3(num6.toString()),
                    ],
                  ),
                ],
              ),
              new Divider(),
              new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel1("07"),
                      setLabel1("08"),
                      setLabel1("09"),
                      setLabel1("10"),
                      setLabel1("11"),
                      setLabel1("12"),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel2(num7.toString()),
                      setLabel2(num8.toString()),
                      setLabel2(num9.toString()),
                      setLabel2(num10.toString()),
                      setLabel2(num11.toString()),
                      setLabel2(num12.toString()),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel3(num7.toString()),
                      setLabel3(num8.toString()),
                      setLabel3(num9.toString()),
                      setLabel3(num10.toString()),
                      setLabel3(num11.toString()),
                      setLabel3(num12.toString()),
                    ],
                  ),
                ],
              ),
              new Divider(),
              new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel1("13"),
                      setLabel1("14"),
                      setLabel1("15"),
                      setLabel1("16"),
                      setLabel1("17"),
                      setLabel1("18"),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel2(num13.toString()),
                      setLabel2(num14.toString()),
                      setLabel2(num15.toString()),
                      setLabel2(num16.toString()),
                      setLabel2(num17.toString()),
                      setLabel2(num18.toString()),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel3(num13.toString()),
                      setLabel3(num14.toString()),
                      setLabel3(num15.toString()),
                      setLabel3(num16.toString()),
                      setLabel3(num17.toString()),
                      setLabel3(num18.toString()),
                    ],
                  ),
                ],
              ),
              new Divider(),
              new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel1("19"),
                      setLabel1("20"),
                      setLabel1("21"),
                      setLabel1("22"),
                      setLabel1("23"),
                      setLabel1("24"),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel2(num19.toString()),
                      setLabel2(num20.toString()),
                      setLabel2(num21.toString()),
                      setLabel2(num22.toString()),
                      setLabel2(num23.toString()),
                      setLabel2(num24.toString()),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel3(num19.toString()),
                      setLabel3(num20.toString()),
                      setLabel3(num21.toString()),
                      setLabel3(num22.toString()),
                      setLabel3(num23.toString()),
                      setLabel3(num24.toString()),
                    ],
                  ),
                ],
              ),
              new Divider(),
              new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel1("25"),
                      setLabel1("26"),
                      setLabel1("27"),
                      setLabel1("28"),
                      setLabel1("29"),
                      setLabel1("30"),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel2(num25.toString()),
                      setLabel2(num26.toString()),
                      setLabel2(num27.toString()),
                      setLabel2(num28.toString()),
                      setLabel2(num29.toString()),
                      setLabel2(num30.toString()),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel3(num25.toString()),
                      setLabel3(num26.toString()),
                      setLabel3(num27.toString()),
                      setLabel3(num28.toString()),
                      setLabel3(num29.toString()),
                      setLabel3(num30.toString()),
                    ],
                  ),
                ],
              ),
              new Divider(),
              new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel1("31"),
                      setLabel1("32"),
                      setLabel1("33"),
                      new Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                      new Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                      new Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel2(num31.toString()),
                      setLabel2(num32.toString()),
                      setLabel2(num33.toString()),
                      new Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                      new Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                      new Container(
                        width: 50.0,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      setLabel3(num31.toString()),
                      setLabel3(num32.toString()),
                      setLabel3(num33.toString()),
                      new Container(
                        width: 50.0,
                        height: 30.0,
                        color: Colors.white,
                      ),
                      new Container(
                        width: 50.0,
                        height: 30.0,
                        color: Colors.white,
                      ),
                      new Container(
                        width: 50.0,
                        height: 30.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              new Divider(),
            ],
          ),
        )
    );
  }

  Widget setLabel1(String str) {
    return new Container(
      width: 50.0,
      height: 50.0,
      color: Colors.white,
      foregroundDecoration:  new BoxDecoration(
        border: new Border.all(
            color: Colors.redAccent, width: 7.0, style: BorderStyle.solid),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: new Text(
        str,
        style: new TextStyle(
            fontSize: 17.0, color: Colors.redAccent,
            fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget setLabel2(String str) {

    double result = thermalAndColdAnalysis(int.parse(str));
    Color thermalColor;
    if (result == 0) {
      thermalColor = Colors.lightBlue;
    }else if (result > 0 && result <= 0.2) {
      thermalColor = Colors.greenAccent;
    }else if (result > 0.2 && result <= 0.4) {
      thermalColor = Colors.orangeAccent;
    }else if (result > 0.4) {
      thermalColor = Colors.redAccent;
    }

    return new Container(
      width: 50.0,
      height: 50.0,
      color: Colors.white,
      alignment: Alignment.center,
      child: new Container(
        width: 35.0,
        height: 35.0,
        alignment: Alignment.center,
        color: thermalColor,
        child: new Text(
          str,
          style: new TextStyle(
            fontSize: 16.0, color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget setLabel3(String str) {

    double result = thermalAndColdAnalysis(int.parse(str));
    Color thermalColor;
    if (result == 0) {
      thermalColor = Colors.lightBlue;
    }else if (result > 0 && result <= 0.2) {
      thermalColor = Colors.greenAccent;
    }else if (result > 0.2 && result <= 0.4) {
      thermalColor = Colors.orangeAccent;
    }else if (result > 0.4) {
      thermalColor = Colors.redAccent;
    }
    result = result * 100;

    return new Container(
      width: 50.0,
      height: 30.0,
      color: Colors.white,
      alignment: Alignment.center,
      child: new Text(
        result.toString() + "%",
        style: new TextStyle(
          fontSize: 16.0, color: thermalColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }


  double thermalAndColdAnalysis(int num) {
    int listLength = list.length;
    double result = num/listLength;

    String str = result.toStringAsFixed(2);
    return double.parse(str);
  }

}