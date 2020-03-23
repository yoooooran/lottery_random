import 'package:flutter/material.dart';

import 'package:lottery_random/model/lottery_already.dart';
import 'package:lottery_random/views/painter/chart_bean.dart';
import 'package:lottery_random/views/trends/chart_bar.dart';
import 'package:lottery_random/utils/my_icon.dart';

class ParityTrend extends StatefulWidget {
  @override
  createState() => new _ParityTrendState();
}

class _ParityTrendState extends State<ParityTrend> {

  LotteryAlreadyControlModel lotteryAlreadyControlModel = new LotteryAlreadyControlModel();
  List<LotteryAlready> list = List();
  int _currentIndex = 0;

  List<Widget> widgetList = List();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLotteryAlreadyList();
  }

  void getLotteryAlreadyList() async {
    list = await lotteryAlreadyControlModel.getLotteryAlreadyList();
    list.sort((num1, num2) => int.parse(num2.issueNo) - int.parse(num1.issueNo));


    int sp06 = 0;
    int sp15 = 0;
    int sp24 = 0;
    int sp33 = 0;
    int sp42 = 0;
    int sp51 = 0;
    int sp60 = 0;
    for(LotteryAlready lotteryAlready in list){
      String str = sizeProportion(lotteryAlready);
      if (str == "0:6") {
        sp06++;
      }else if (str == "1:5") {
        sp15++;
      }else if (str == "2:4") {
        sp24++;
      }else if (str == "3:3") {
        sp33++;
      }else if (str == "4:2") {
        sp42++;
      }else if (str == "5:1") {
        sp51++;
      }else if (str == "6:0") {
        sp60++;
      }
    }

    widgetList.add(sizeProportion1());
    widgetList.add(sizeProportion2(sp06, sp15, sp24, sp33, sp42, sp51, sp60));

    setState(() {});
  }

  ///bar-circle
  Widget _buildChartBarCircle(int sp06, int sp15, int sp24, int sp33, int sp42, int sp51, int sp60) {
    var chartBar = ChartBar(
      chartBeans: [
        ChartBean(x: '0:6', y: sp06, color: Colors.red),
        ChartBean(x: '1:5', y: sp15, color: Colors.yellow),
        ChartBean(x: '2:4', y: sp24, color: Colors.green),
        ChartBean(x: '3:3', y: sp33, color: Colors.blue),
        ChartBean(x: '4:2', y: sp42, color: Colors.deepPurple),
        ChartBean(x: '5:1', y: sp51, color: Colors.deepOrange),
        ChartBean(x: '6:0', y: sp60, color: Colors.greenAccent)
      ],
      size: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height / 5 * 1.8),
      rectColor: Colors.deepPurple,
      isShowX: true,
      fontColor: Colors.white,
      rectShadowColor: Colors.white.withOpacity(0.5),
      isReverse: false,
      isCanTouch: true,
      isShowTouchShadow: true,
      isShowTouchValue: true,
      rectRadiusTopLeft: 50,
      rectRadiusTopRight: 50,
      duration: Duration(milliseconds: 1000),
    );
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      semanticContainer: true,
      color: Colors.blue.withOpacity(0.4),
      child: chartBar,
      clipBehavior: Clip.antiAlias,
    );
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  MyIcon.tubiaozoushi2,
                ),
                title: new Text(
                  '走势图',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  MyIcon.zhuzhuangtu,
                ),
                title: new Text(
                  '柱状图',
                )),
          ],
          currentIndex: _currentIndex,
          onTap: _itemTapped,

        ),
        appBar: new AppBar(
          title: new Text("奇偶走势"),
          centerTitle: true,
        ),
        body: new IndexedStack(
          index: _currentIndex,
          children: widgetList,
        ),
      ),
    );
  }

  Widget sizeProportion1() {
    return new Container(
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
                new Divider(
                  height: 3,
                  color: Colors.white,
                ),
                new Container(
                  child: new Text("奇偶比:" + sizeProportion(item),
                    style: new TextStyle(
                        fontSize: 16.0
                    ),
                  ),
                ),
                new Divider()
              ],
            );
          }
      ),
    );
  }


  Widget sizeProportion2(int sp06, int sp15, int sp24, int sp33, int sp42, int sp51, int sp60) {
    return new Container(
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          _buildChartBarCircle(sp06, sp15, sp24, sp33, sp42, sp51, sp60),
          new Divider(
            color: Colors.white,
          ),
          new ListTile(
            title: Text("统计:共计"+"${list.length}"+"枚"),
            subtitle: Text("0:6:共计"+sp06.toString()+"枚\n"
                "1:5:共计"+sp15.toString()+"枚\n"
                "2:4:共计"+sp24.toString()+"枚\n"
                "3:3:共计"+sp33.toString()+"枚\n"
                "4:2:共计"+sp42.toString()+"枚\n"
                "5:1:共计"+sp51.toString()+"枚\n"
                "6:0:共计"+sp60.toString()+"枚\n"),
            dense: true,
            trailing: new Icon(Icons.keyboard_arrow_down),
            leading: new Icon(MyIcon.tongji),
            contentPadding: EdgeInsets.all(10.0),
          ),
        ],
      ),
    );
  }

  void _itemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  Widget buildTextSizeOfStr(String str) {
    String reslut = "";
    Color textColor;
    if (int.parse(str) % 2 != 0) {
      reslut = "奇";
      textColor = Colors.amber;
    }else {
      reslut = "偶";
      textColor = Colors.blueAccent;
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
    if (int.parse(str) % 2 != 0) {
      textColor = Colors.amber;
    }else {
      textColor = Colors.blueAccent;
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

  String sizeProportion(LotteryAlready lotteryAlready) {
    int big = 0;
    int small = 0;
    if (sizeOfStr(lotteryAlready.red1) == "0") {
      small++;
    }else {
      big++;
    }
    if (sizeOfStr(lotteryAlready.red2) == "0") {
      small++;
    }else {
      big++;
    }
    if (sizeOfStr(lotteryAlready.red3) == "0") {
      small++;
    }else {
      big++;
    }
    if (sizeOfStr(lotteryAlready.red4) == "0") {
      small++;
    }else {
      big++;
    }
    if (sizeOfStr(lotteryAlready.red5) == "0") {
      small++;
    }else {
      big++;
    }
    if (sizeOfStr(lotteryAlready.red6) == "0") {
      small++;
    }else {
      big++;
    }

    return small.toString() + ":" + big.toString();
  }

  String sizeOfStr(String str) {
    if (int.parse(str) % 2 != 0) {
      return "0";
    }else {
      return "1";
    }
  }



}