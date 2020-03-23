import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:lottery_random/views/home.dart';
import 'package:lottery_random/utils/provider.dart';
import 'package:lottery_random/routers/routers.dart';



var db;

void main() async {
  final provider = new Provider();
  await provider.init(true);
  db = Provider.db;

  final router = new Router();
  Routers.configureRouters(router);

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Welcome to Flutter',
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          body: showWelcomePage()
        ),
        localizationsDelegates: [                             //此处
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [                                   //此处
          const Locale('zh','CH'),
          const Locale('en','US'),
        ],
        onGenerateRoute: Routers.router.generator
    );
  }

  showWelcomePage() {
    return AppPage(Provider.db);
  }

}

