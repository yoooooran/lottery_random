import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './widget_item.dart';
import '../routers/routers.dart';

import './select_sum.dart';

class WidgetItemContainer extends StatelessWidget {
  final int columnCount; //一行几个
  final List<dynamic> categories;
  final bool isWidgetPoint;

  // 所有的可用demos;
//  final List widgetDemosList = new WidgetDemoList().getDemos();

  WidgetItemContainer(
      {Key key,
      @required this.categories,
      @required this.columnCount,
      @required this.isWidgetPoint})
      : super(key: key);

  List<Widget> _buildColumns(context) {
    List<Widget> _listWidget = [];
    List<Widget> _listRows = [];
    int addI;
    for (int i = 0, length = categories.length; i < length; i += columnCount) {
      _listRows = [];
      for (int innerI = 0; innerI < columnCount; innerI++) {
        addI = innerI + i;
        if (addI < length) {
          dynamic item = categories[addI];
          _listRows.add(
            Expanded(
              flex: 1,
              child: WidgetItem(
                title: item.name,
                onTap: () {
                  print(item.name);
                  print(context);
                  if (item.name == '全部随机') {
                    Routers.router.navigateTo(
                        context, '${Routers.fullRandom}',
                        transition: TransitionType.inFromRight
                    );
                  } else if (item.name == '选择随机') {
                    ThemeNums.numTextR1 = "";
                    ThemeNums.numTextR2 = "";
                    ThemeNums.numTextR3 = "";
                    ThemeNums.numTextR4 = "";
                    ThemeNums.numTextR5 = "";
                    ThemeNums.numTextR6 = "";
                    ThemeNums.numTextB1 = "";
                    ThemeColors.btnValue = "全部随机";
                    Routers.router.navigateTo(
                        context, '${Routers.selectRandom}',
                        transition: TransitionType.inFromRight
                    );
                  } else if (item.name == '往期维护') {
                    Routers.router.navigateTo(
                        context, '${Routers.alreadyMaintain}',
                        transition: TransitionType.inFromRight
                    );
                  } else if (item.name == '往期查看') {
                    Routers.router.navigateTo(
                        context, '${Routers.alreadyList}',
                        transition: TransitionType.inFromRight
                    );
                  } else if (item.name == '号码走势') {
                    Routers.router.navigateTo(
                        context, '${Routers.trendList}',
                        transition: TransitionType.inFromRight
                    );
                  } else if (item.name == '帮助') {
                    Routers.router.navigateTo(
                        context, '${Routers.help}',
                        transition: TransitionType.inFromRight
                    );
                  }
//                  Application.router.navigateTo(context, "/full_random", transition: TransitionType.inFromRight);
//                  if (isWidgetPoint) {
//                    String targetName = item.name;
//                    String targetRouter = '/category/error/404';
//                    widgetDemosList.forEach((item) {
//                      if (item.name == targetName) {
//                        targetRouter = item.routerName;
//                      }
//                    });
//                    Application.router.navigateTo(context, "$targetRouter", transition: TransitionType.inFromRight);
//                  } else {
//                    Application.router
//                        .navigateTo(context, "/category/${item.name}", transition: TransitionType.inFromRight);
//                  }
                },
                index: addI,
                totalCount: length,
                rowLength: columnCount,
                textSize: isWidgetPoint ? 'middle' : 'small',
              ),
            ),
          );
        } else {
          _listRows.add(
            Expanded(
              flex: 1,
              child: Container(),
            ),
          );
        }
      }
      _listWidget.add(
        Row(
          children: _listRows,
        ),
      );
    }
    return _listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildColumns(context),
    );
  }
}
