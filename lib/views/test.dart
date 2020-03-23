import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FirstScreen();
}
class FirstScreen extends State<Test> {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text('First Screen'),
      ),
      body:  Column(
        children: <Widget>[
          RaisedButton(
            child: Text(' 返回 ',
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                )),
            color: ThemeColors.colorBlack, // 颜色设置为变量
            onPressed:() {
              setState(() {
                print(check);
                if (check) { // 通过判断check 来 改变按钮颜色
//                  Navigator.of(context).pushNamed('/Platform');
                  ThemeColors.colorBlack = Color.fromARGB(255, 0, 0, 0);
                } else {
                  ThemeColors.colorBlack = Color.fromARGB(255, 226, 36, 0);
                }
              });
            },
          ),
          Switch(
            value: check,
            activeColor: Colors.red,
            activeTrackColor: Colors.blue,
            inactiveThumbColor: Colors.green,
            inactiveTrackColor: Colors.orange,    // 激活时原点颜色
            materialTapTargetSize: MaterialTapTargetSize.padded,
            onChanged: (bool val) {
              setState(() {
                check = !check;
                if (check) {
                  print("AAA"+check.toString());
                }
              });
            },
          ),

        ],

      ),
    );
  }
}

class ThemeColors {
  ///纯黑色
  static Color colorBlack = Color.fromARGB(255, 0, 0, 0);
}