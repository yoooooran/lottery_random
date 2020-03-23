import 'package:flutter/material.dart';

class MyIcon {
  static const IconData list = const _MyIconData(0xe614);
  static const IconData wenduji = const _MyIconData(0xe66b);
  static const IconData tubiaozoushi1 = const _MyIconData(0xe81e);
  static const IconData taiji = const _MyIconData(0xe653);
  static const IconData random1 = const _MyIconData(0xe7b8);
  static const IconData tubiaozoushi2 = const _MyIconData(0xe609);
  static const IconData mash = const _MyIconData(0xe645);
  static const IconData zhuzhuangtu = const _MyIconData(0xe681);
  static const IconData random2 = const _MyIconData(0xe77d);
  static const IconData weihu = const _MyIconData(0xe668);
  static const IconData help = const _MyIconData(0xe623);
  static const IconData smallCat = const _MyIconData(0xe6f7);
  static const IconData bigSmall = const _MyIconData(0xe823);
  static const IconData weixin = const _MyIconData(0xe7e5);
  static const IconData lottery = const _MyIconData(0xe60e);
  static const IconData math = const _MyIconData(0xe641);
  static const IconData check = const _MyIconData(0xe886);
  static const IconData remark = const _MyIconData(0xe646);
  static const IconData github = const _MyIconData(0xea0a);
  static const IconData tongji = const _MyIconData(0xe684);

}

class _MyIconData extends IconData {
  const _MyIconData(int codePoint)
      : super(
    codePoint,
    fontFamily: 'MyIcons',
  );
}