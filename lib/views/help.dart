import 'package:flutter/material.dart';

import 'package:lottery_random/utils/my_icon.dart';

class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelpScreen();
}
class _HelpScreen extends State<Help> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("帮助"),
          centerTitle: true,
        ),
        body: new ListView(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new ListTile(
              leading: Icon(Icons.help),
              title: new Text("   暂时没想到有什么能帮助的。"),
            ),
            new Divider(),
            new ListTile(
              leading: Icon(MyIcon.github),
              title: new Text("   https://github.com/yoooooran"),
            ),
            new Divider(),
            new ListTile(
              leading: Icon(MyIcon.weixin),
              title: new Text("   微信号:yoooooran"),
            ),
          ],
        )
    );
  }

}