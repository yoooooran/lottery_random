import 'dart:async';

import 'package:lottery_random/utils/sql.dart';

class LotteryAlready {

  int id;

  String time;
  String red1;
  String red2;
  String red3;
  String red4;
  String red5;
  String red6;

  String blue1;

  String issueNo;
  String remarks;

  LotteryAlready(String red1, String red2, String red3, String red4, String red5, String red6, String blue1, String time, String issueNo, String remarks){
    this.red1 = red1;
    this.red2 = red2;
    this.red3 = red3;
    this.red4 = red4;
    this.red5 = red5;
    this.red6 = red6;
    this.blue1 = blue1;
    this.time = time;
    this.issueNo = issueNo;
    this.remarks = remarks;
  }

  LotteryAlready.fromJSON(Map json)
      : id = json['id'],
        time = json['time'],
        red1 = json['red1'],
        red2 = json['red2'],
        red3 = json['red3'],
        red4 = json['red4'],
        red5 = json['red5'],
        red6 = json['red6'],
        blue1 = json['blue1'],
        issueNo = json['issueNo'],
        remarks = json['remarks'];

  Map toMap() {
    return {
      'id': id,
      'time': time,
      'red1': red1,
      'red2': red2,
      'red3': red3,
      'red4': red4,
      'red5': red5,
      'red6': red6,
      'blue1': blue1,
      'issueNo': issueNo,
      'remarks': remarks
    };
  }

  Map toSqlCondition() {
    Map _map = this.toMap();
    Map condition = {};
    _map.forEach((k, value) {

      if (value != null) {

        condition[k] = value;
      }
    });

    if (condition.isEmpty) {
      return {};
    }

    return condition;
  }

}

class LotteryAlreadyControlModel {
  final String table = 'lottery_already';
  Sql sql;
  LotteryAlreadyControlModel() {
    sql = Sql.setTable(table);
  }

  Future<List<LotteryAlready>> getLotteryAlreadyList() async{

    // print("cat in getList ${cat.toMap()}");
    List listJson =  await sql.getByCondition();
    List<LotteryAlready> lotteryAlreadys = listJson.map((json) {
      return new LotteryAlready.fromJSON(json);
    }).toList();
    return lotteryAlreadys;
  }

  Future addLotteryAlready(LotteryAlready lotteryAlready) {
    var result = sql.insert({'red1': lotteryAlready.red1, 'red2': lotteryAlready.red2,
      'red3': lotteryAlready.red3, 'red4': lotteryAlready.red4,
      'red5': lotteryAlready.red5, 'red6': lotteryAlready.red6,
      'blue1': lotteryAlready.blue1, 'time': lotteryAlready.time,
      'issueNo': lotteryAlready.issueNo, 'remarks': lotteryAlready.remarks});
    return result;
  }

  Future deleteLotteryAlready(String id) {
    var result = sql.delete(id, "id");
    return result;
  }


}