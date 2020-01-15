import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopNavigator extends StatelessWidget {
  final List navigatorList;
  TopNavigator({
    Key key, this.navigatorList
  }):super(key: key);

  Widget _gridViewItemUI(BuildContext context, item) {
    return InkWell(
      child: Center(
        child: Column(
          children: <Widget>[
            Image.network(item['iconUrl'],width: ScreenUtil().setWidth(60)),
            Text(item['name'])
          ],
        ),
      ),
      onTap: () {
        print('点击了导航');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(270),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(top: 20.0),
      child: GridView.count(
        crossAxisCount: 5,
        // 禁用 GridView 的滚动
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(4.0),
        children: navigatorList.map((item) {
          return _gridViewItemUI(context, item);
        }).toList(),
      ),
    );
  }
}