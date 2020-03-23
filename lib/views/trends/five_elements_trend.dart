import 'package:flutter/material.dart';

import 'package:lottery_random/model/lottery_already.dart';

class FiveElementsTrend extends StatefulWidget {
  @override
  createState() => new _FiveElementsTrendState();
}

class _FiveElementsTrendState extends State<FiveElementsTrend> {

  LotteryAlreadyControlModel lotteryAlreadyControlModel = new LotteryAlreadyControlModel();
  List<LotteryAlready> list = List();
  int _currentIndex = 0;

  List<Widget> widgetList = List();


  List<String> jinList = List()..add("09")..add("10")..add("21")..add("22")..add("33");
  List<String> muList = List()..add("03")..add("04")..add("15")..add("16")..add("27")..add("28");
  List<String> shuiList = List()..add("01")..add("12")..add("13")..add("24")..add("25");
  List<String> huoList = List()..add("06")..add("07")..add("18")..add("19")..add("30")..add("31");
  List<String> tuList = List()..add("02")..add("05")..add("08")..add("11")..add("14")..add("17")..add("20")
  ..add("23")..add("26")..add("29")..add("32");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLotteryAlreadyList();
  }

  void getLotteryAlreadyList() async {
    list = await lotteryAlreadyControlModel.getLotteryAlreadyList();
    list.sort((num1, num2) => int.parse(num2.issueNo) - int.parse(num1.issueNo));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("五行走势"),
          centerTitle: true,
        ),
        body: new Container(
          color:Colors.white,
          child: new ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: list.length,
              itemBuilder: (context, i) {
                final LotteryAlready item = list[i];
                return new Column(
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
                      height: 3,
                      color: Colors.white,
                    ),
                    new Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildTextSizeOfNum("${list[i].red1}"),
                            buildTextSizeOfNum("${list[i].red2}"),
                            buildTextSizeOfNum("${list[i].red3}"),
                            buildTextSizeOfNum("${list[i].red4}"),
                            buildTextSizeOfNum("${list[i].red5}"),
                            buildTextSizeOfNum("${list[i].red6}"),
                          ],
                        )
                    ),
                    new Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            buildTextSizeOfStr("${list[i].red1}"),
                            buildTextSizeOfStr("${list[i].red2}"),
                            buildTextSizeOfStr("${list[i].red3}"),
                            buildTextSizeOfStr("${list[i].red4}"),
                            buildTextSizeOfStr("${list[i].red5}"),
                            buildTextSizeOfStr("${list[i].red6}"),
                          ],
                        )
                    ),
                    new Divider()
                  ],
                );
              }
          ),
        ),
    );
  }

  Widget buildTextSizeOfStr(String str) {
    String reslut = "";
    Color textColor;
    if (jinList.contains(str)) {
      reslut = "金";
      textColor = Colors.amberAccent;
    }
    if (muList.contains(str)) {
      reslut = "木";
      textColor = Colors.greenAccent;
    }
    if (shuiList.contains(str)) {
      reslut = "水";
      textColor = Colors.lightBlueAccent;
    }
    if (huoList.contains(str)) {
      reslut = "火";
      textColor = Colors.redAccent;
    }
    if (tuList.contains(str)) {
      reslut = "土";
      textColor = Colors.orangeAccent;
    }
    return new Container(
      width: 23.0,
      height: 23.0,
      color: textColor,
      alignment: Alignment.center,
      child: new Text(
        reslut,
        style: new TextStyle(
            fontSize: 16.0, color: Colors.white
        ),
      ),
    );
  }

  Widget buildTextSizeOfNum(String str) {
    Color textColor;
    if (jinList.contains(str)) {
      textColor = Colors.amberAccent;
    }
    if (muList.contains(str)) {
      textColor = Colors.greenAccent;
    }
    if (shuiList.contains(str)) {
      textColor = Colors.lightBlueAccent;
    }
    if (huoList.contains(str)) {
      textColor = Colors.redAccent;
    }
    if (tuList.contains(str)) {
      textColor = Colors.orangeAccent;
    }
    return new Container(
      width: 23.0,
      height: 23.0,
      color: Colors.white,
      alignment: Alignment.center,
      child: new Text(
        str,
        style: new TextStyle(
            fontSize: 16.0, color: textColor
        ),
      ),
    );
  }

}