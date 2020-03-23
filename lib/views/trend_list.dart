import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:lottery_random/routers/routers.dart';
import 'package:lottery_random/utils/my_icon.dart';

class TrendList extends StatefulWidget {
  @override
  createState() => new _TrendListState();
}

class _TrendListState extends State<TrendList> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("走势列表"),
          centerTitle: true,
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: Text('大小走势'),
              subtitle: Text('01-16划分为小号;17-33划分为大号;'),
              dense: true,
              onTap: (){
                Routers.router.navigateTo(
                    context, '${Routers.sizeTrend}',
                    transition: TransitionType.inFromRight
                );
              },
              trailing: new Icon(Icons.keyboard_arrow_right),
              leading: new Icon(MyIcon.bigSmall),
              contentPadding: EdgeInsets.all(10.0),
            ),
            new Divider(
              height: 1.0,
            ),
            new ListTile(
              title: Text('奇偶走势'),
              subtitle: Text('能被2整除的数为偶数;'),
              dense: true,
              onTap: (){
                Routers.router.navigateTo(
                    context, '${Routers.parityTrend}',
                    transition: TransitionType.inFromRight
                );
              },
              trailing: new Icon(Icons.keyboard_arrow_right),
              leading: new Icon(MyIcon.smallCat),
              contentPadding: EdgeInsets.all(10.0),
            ),
            new Divider(
              height: 1.0,
            ),
            new ListTile(
              title: Text('质合走势'),
              subtitle: Text('质号=01 02 03 05 07 11 13 17 19 23 29 31;\n合号=04 06 08 09 10 12 14 15 16 18 20 21 22 24 25 26 27 28 30 32 33'),
//              subtitle: Text('[金] 09 10 21 22 33;[木] 03 04 15 16 27 28;[水] 01 12 13 24 25;[火] 06 07 18 19 30 31;[土] 02 05 08 11 14 17 20 23 26 29 32'),
              dense: true,
              onTap: (){
                Routers.router.navigateTo(
                    context, '${Routers.combinationTrend}',
                    transition: TransitionType.inFromRight
                );
              },
              trailing: new Icon(Icons.keyboard_arrow_right),
              leading: new Icon(MyIcon.mash),
              contentPadding: EdgeInsets.all(10.0),
            ),
            new Divider(
              height: 1.0,
            ),
            new ListTile(
              title: Text('五行走势'),
              subtitle: Text('[金] 09 10 21 22 33;\n[木] 03 04 15 16 27 28;\n[水] 01 12 13 24 25;\n[火] 06 07 18 19 30 31;\n[土] 02 05 08 11 14 17 20 23 26 29 32'),
              dense: true,
              onTap: (){
                Routers.router.navigateTo(
                    context, '${Routers.fiveTrend}',
                    transition: TransitionType.inFromRight
                );
              },
              trailing: new Icon(Icons.keyboard_arrow_right),
              leading: new Icon(MyIcon.taiji),
              contentPadding: EdgeInsets.all(10.0),
            ),
            new Divider(
              height: 1.0,
            ),
            new ListTile(
              title: Text('冷热分析'),
              subtitle: Text('统计期数内,出现次数多的号码为热号,出现次数少的号码为冷号.'),
              dense: true,
              onTap: (){
                Routers.router.navigateTo(
                    context, '${Routers.hotTrend}',
                    transition: TransitionType.inFromRight
                );
              },
              trailing: new Icon(Icons.keyboard_arrow_right),
              leading: new Icon(MyIcon.wenduji),
              contentPadding: EdgeInsets.all(10.0),
            ),
          ],
        ),
      ),
    );
  }
}