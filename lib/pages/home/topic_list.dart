import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicList extends StatelessWidget {
  final List topicList;
  TopicList({
    Key key, this.topicList
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(400),
      child: Column(
        children: <Widget>[
          _titleProduct(),
          _TopicList()
        ],
      ),
    );
  }

  // 推荐商品标题
  Widget _titleProduct() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5.0),
      child: Text(
        '专题精选',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          height: 1.2,
        )
      ),
    );
  }
  
  // 专题列表
  Widget _TopicList() {
    return Container(
      height: ScreenUtil().setHeight(330),
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topicList.length,
        itemBuilder: (context, index){
          return _item(index);
        },
      ),
    );
  }

  // 单项
  Widget _item(index) {
    return InkWell(
      onTap: () { print('点击了专项'); },
      child: Container(
        width: ScreenUtil().setWidth(372),
        height: ScreenUtil().setHeight(330),
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0,1.0),
              blurRadius: 4.0
            )
          ]
        ),
        child: Column(
          children: <Widget>[
            Image.network(
              (topicList[index]['picUrl']),
              fit: BoxFit.fill,
              height: ScreenUtil().setWidth(200),
            ),
            Text(
              '${topicList[index]['title']}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12.0,
                height: 1.8
              ),
            ),
            Text(
              '${topicList[index]['subtitle']}',
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 12.0,
                height: 1.8,
              ),
            ),
            Text(
              '￥${topicList[index]['price']}',
              style: TextStyle(
                color: Colors.pink
              ),
            )
          ],
        ),
      ),
    );
  }
}
