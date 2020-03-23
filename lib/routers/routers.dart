import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:lottery_random/utils/provider.dart';

import 'package:lottery_random/views/home.dart';
import 'package:lottery_random/views/full_random.dart';
import 'package:lottery_random/views/select_random.dart';
import 'package:lottery_random/views/already_maintain.dart';
import 'package:lottery_random/views/already_list.dart';
import 'package:lottery_random/views/trend_list.dart';
import 'package:lottery_random/views/trends/size_trend.dart';
import 'package:lottery_random/views/trends/parity_trend.dart';
import 'package:lottery_random/views/trends/combination_trend.dart';
import 'package:lottery_random/views/trends/five_elements_trend.dart';
import 'package:lottery_random/views/trends/hot_trend.dart';
import 'package:lottery_random/views/help.dart';
import 'package:lottery_random/views/test.dart';

class Routers  {
  static Router router;

  static String home = "/home";
  static String fullRandom = "/fullRandom";
  static String selectRandom = "/selectRandom";
  static String alreadyMaintain = "/alreadyMaintain";
  static String alreadyList = "/alreadyList";
  static String trendList = "/trendList";
  static String sizeTrend = "/sizeTrend";
  static String parityTrend = "/parityTrend";
  static String combinationTrend = "/combinationTrend";
  static String fiveTrend = "/fiveTrend";
  static String hotTrend = "/hotTrend";
  static String help = "/help";
  static String test = "/test";

  static void configureRouters(Router router) {
    router.define(home, handler: Handler(handlerFunc: (context, params) => AppPage(Provider.db)));
//    router.define(fullRandom, handler: Handler(handlerFunc: (context, params) => FullRandom()));
    router.define(fullRandom, handler: new Handler(
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new FullRandom();
        }));
    router.define(selectRandom, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new SelectRandom();
        }));
    router.define(alreadyMaintain, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new AlreadyMaintain();
        }));
    router.define(alreadyList, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new AlreadyList();
        }));
    router.define(trendList, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new TrendList();
        }));
    router.define(sizeTrend, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new SizeTrend();
        }));
    router.define(parityTrend, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new ParityTrend();
        }));
    router.define(combinationTrend, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new CombinationTrend();
        }));
    router.define(fiveTrend, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new FiveElementsTrend();
        }));
    router.define(hotTrend, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new HotTrend();
        }));
    router.define(help, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new Help();
        }));
    router.define(test, handler: new Handler(
        handlerFunc:  (BuildContext context, Map<String, dynamic> params) {
          return new Test();
        }));
    Routers.router = router;
  }

}
