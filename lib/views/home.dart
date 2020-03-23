import 'package:flutter/material.dart';

import 'package:lottery_random/model/cat.dart';
import 'package:lottery_random/components/cate_card.dart';

class AppPage extends StatefulWidget {

  final db;
  final CatControlModel catModel;
  AppPage(this.db)
      : catModel = new CatControlModel(),
        super();

  @override
  SecondPageState createState() => new SecondPageState(catModel);

}

class SecondPageState extends State<AppPage> with AutomaticKeepAliveClientMixin {
  CatControlModel catModel;
  SecondPageState(this.catModel) : super();


  List<Cat> categories = [];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    renderCats();
  }

  void renderCats() {
    catModel.getList().then((List data) {
      if (data.isNotEmpty) {
        setState(() {
          categories = data;
        });
      }
    });
  }

  Widget buildGrid() {
    // 存放最后的widget
    List<Widget> tiles = [];
    for (Cat item in categories) {
      tiles.add(new CateCard(category: item));
    }
    return new ListView(
      children: tiles,
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (categories.length == 0) {
      return ListView(
        children: <Widget>[new Container()],
      );
    }
//    return Container(
//      color: Theme.of(context).backgroundColor,
//      child: this.buildGrid(),
//    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Lottery Random'),
        centerTitle: true,
      ),
      body: new Container(
        color: Theme.of(context).backgroundColor,
        child: this.buildGrid(),
      ),
    );


    //    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('Welcome to Flutter'),
//      ),
//      body: new Center(
//        child: new Text('Hello World!!!~~!!!!!!!!!!'),
//      ),
//    );
  }

}