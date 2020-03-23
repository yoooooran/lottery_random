import 'package:flutter/material.dart';
import 'dart:math';

import 'package:lottery_random/model/double_ball.dart';

class FullRandom extends StatefulWidget {
  @override
  createState() => new _fullRandomState();
}

class _fullRandomState extends State<FullRandom> {

  List<DoubleBall> list = List();
  int nowCount = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text("全部随机"),
              centerTitle: true,
            ),
            body: new Column(
              children: <Widget>[
                new Expanded(
                  child: ListView.builder(
                    //设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
//                    scrollDirection: Axis.vertical,
                    //内间距
                      padding: EdgeInsets.all(10.0),
//                      //是否倒序显示 默认正序 false  倒序true
////                    reverse: false,
//                      //false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
////                    primary: true,
//                      //确定每一个item的高度 会让item加载更加高效
//                      itemExtent: 55.0,
                      //item 高度会适配 item填充的内容的高度 多用于嵌套listView中 内容大小不确定 比如 垂直布局中 先后放入文字 listView （需要Expend包裹否则无法显示无穷大高度 但是需要确定listview高度 shrinkWrap使用内容适配不会） 文字
//        shrinkWrap: true,
                      //item 数量
                      itemCount: list.length,
                      //滑动类型设置
                      //new AlwaysScrollableScrollPhysics() 总是可以滑动 NeverScrollableScrollPhysics禁止滚动 BouncingScrollPhysics 内容超过一屏 上拉有回弹效果 ClampingScrollPhysics 包裹内容 不会有回弹
//        cacheExtent: 30.0,  //cacheExtent  设置预加载的区域   cacheExtent 强制设置为了 0.0，从而关闭了“预加载”
//                    physics: new ClampingScrollPhysics(),
                      //滑动监听
//        controller ,
                      itemBuilder: (context, i) {
                        final item = list[i];
                        return new Dismissible(
                            key: new Key(item.id.toString()),
                            onDismissed: (DismissDirection direction){
                              setState(() {
                                list.removeAt(i);
                              });
                              Scaffold.of(context).showSnackBar(
                                  new SnackBar(content: new Text("删除成功!")));
                            },
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        new Text(
                                          "${list[i].redOne}",
                                          style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                        ),
                                        new Text(
                                          "${list[i].redTwo}",
                                          style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                        ),
                                        new Text(
                                          "${list[i].redThree}",
                                          style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                        ),
                                        new Text(
                                          "${list[i].redFour}",
                                          style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                        ),
                                        new Text(
                                          "${list[i].redFive}",
                                          style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                        ),
                                        new Text(
                                          "${list[i].redSix}",
                                          style: new TextStyle(fontSize: 18.0, color: Colors.red),
                                        ),
                                        new Text(
                                          "${list[i].blueOne}",
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
                new Container(
                  width: 350.0,
                  margin: EdgeInsets.only(top: 6.0),
                  child: ButtonTheme(
                    buttonColor: Colors.lightBlue,
                    shape: StadiumBorder(),
                    child: RaisedButton(
                      onPressed: () {
                          setState(() {
                            DoubleBall ball = getRandomDoubleBall();
                            list.insert(list.length, ball);
                            nowCount++;
                          });
                      },
//                    padding: EdgeInsets.all(2.0),
                      child: new Text(
                        "获 取",
                        style: TextStyle(color: Colors.white, fontSize: 17.0),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),//
              ],
            )
        )
    );
  }


  DoubleBall getRandomDoubleBall(){
    List<int> redList = List();
    int dataSet = getRandom();
    while(true) {
      if (dataSet == 0 || redList.contains(dataSet)) {
        dataSet = getRandom();
      }else {
        redList.add(dataSet);
        if (redList.length >= 6) {
          break;
        }
      }
    }
    redList.sort((num1, num2) => num1 - num2);
    int red1 = redList[0];
    int red2 = redList[1];
    int red3 = redList[2];
    int red4 = redList[3];
    int red5 = redList[4];
    int red6 = redList[5];
    int blue = 0;
    while(true) {
      final random = new Random();
      blue = random.nextInt(17);
      if (blue != 0) {
        break;
      }
    }
    DoubleBall ball = DoubleBall(nowCount, intToString(red1), intToString(red2), intToString(red3), intToString(red4), intToString(red5), intToString(red6), intToString(blue));
    return ball;
  }

  int getRandom(){
    final random = new Random();
    int dataSet = random.nextInt(34);
    return dataSet;
  }

  String intToString(int dataSet) {
    if (dataSet < 10) {
      return "0" + dataSet.toString();
    }
    return dataSet.toString();
  }

}