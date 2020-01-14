import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// provide
import 'package:provide/provide.dart';
import 'package:flutter_shop/provide/category.dart';
// model
import 'package:flutter_shop/model/category.dart';

class RightSideContent extends StatefulWidget {
  @override
  _RightSideContentState createState() => _RightSideContentState();
}

class _RightSideContentState extends State<RightSideContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12)
        )
      ),
      child: Provide<ChildCategory>(
        builder: (context, child, childCategory){
          return Container(
            width: ScreenUtil().setWidth(570),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(width: 1,color: Colors.black12)
              )
            ),
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(ScreenUtil.instance.setWidth(20.0)),
                  height: ScreenUtil.instance.setHeight(200.0),
                  child: Image.network(
                    'http://yanxuan.nosdn.127.net/e8bf0cf08cf7eda21606ab191762e35c.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: childCategory.childCategoryList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.95,
                    crossAxisSpacing: 20.0
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return _rightInkWell(childCategory.childCategoryList[index]['name']);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                ),
              ],
            ),
          );
        },
      )
    );
  }

  _clickItem (String id) {
    print('点击了 => ${id}');
  }

  // 子项
  Widget _rightInkWell(String item) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        alignment: Alignment.center,
        width: ScreenUtil().setWidth(100.0),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.network(
                'http://yanxuan.nosdn.127.net/927bc33f7ae2895dd6c11cf91f5e3228.png',
                fit: BoxFit.fill,
                height: ScreenUtil().setHeight(60.0),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
              ),
              Text(
                item,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
            ],
          ),
        )
      ),
      onTap: () => _clickItem(item),
    );
  }
}