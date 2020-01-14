import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotList extends StatelessWidget {
  final List hotList;
  HotList({
    Key key, this.hotList
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _title(),
          _wrapList()
        ],
      ),
    );
  }

  // 标题
  Widget _title() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5.0),
      child: Text(
        '热门商品',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          height: 1.2,
        )
      ),
    );
  }

  // 列表
  Widget _wrapList() {
    List<Widget> listWidget = hotList.map((val) {
      return InkWell(
        onTap: () { print('点击了商品'); },
        child: Container(
          width: ScreenUtil().setWidth(330),
          height: ScreenUtil().setHeight(350),
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1.0,1.0),
                blurRadius: 3.0
              )
            ]
          ),
          child: Column(
            children: <Widget>[
              Image.network(
                (val['picUrl']),
                width: ScreenUtil().setWidth(300),
                height: ScreenUtil().setWidth(200),
              ),
              Text(
                '${val['name']}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  height: 1.8
                ),
              ),
              Text(
                '${val['brief']}',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12.0,
                  height: 1.8,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    '￥${val['counterPrice']}',
                    style: TextStyle(
                      color: Colors.black26,
                      decoration: TextDecoration.lineThrough
                    )
                  ),
                  Text(
                    '￥${val['retailPrice']}',
                    style: TextStyle(
                      color: Colors.pink
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }).toList();
    return Wrap(
      spacing: 2,
      children: listWidget,
    );
  }
}