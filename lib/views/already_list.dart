import 'package:flutter/material.dart';

import 'package:lottery_random/components/select_sum.dart';
import 'package:lottery_random/components/toast.dart';

import 'package:lottery_random/model/lottery_already.dart';

class AlreadyList extends StatefulWidget {
  @override
  createState() => new _alreadyListState();
}

class _alreadyListState extends State<AlreadyList> {

  LotteryAlreadyControlModel lotteryAlreadyControlModel = new LotteryAlreadyControlModel();

  List<LotteryAlready> list = List();

  @override
  void initState() {
    super.initState();
    getLotteryAlreadyList();
  }


  void getLotteryAlreadyList() async {
    list = await lotteryAlreadyControlModel.getLotteryAlreadyList();
    list.sort((num1, num2) => int.parse(num2.issueNo) - int.parse(num1.issueNo));
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("往期查看"),
              centerTitle: true,
            ),
            body: new Container(
              color: Colors.white,
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
                    );
                  }
              ),
            ),
        ),
    );
  }

}
