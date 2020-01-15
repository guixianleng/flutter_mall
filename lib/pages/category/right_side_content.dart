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
                    childAspectRatio: 0.80,
                    crossAxisSpacing: 20.0
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    var goodsInfo = childCategory.childCategoryList[index];
                    return GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              _goodsImage(goodsInfo['picUrl']),
                              _goodsName(goodsInfo['name']),
                            ],
                          ),
                        )
                      ),
                      onTap: () => _clickItem(goodsInfo['id']),
                    );
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

  _clickItem (int id) {
    print('点击了 => ${id}');
  }

  // 商品图片
  Widget _goodsImage(url){
    return  Image.network(
      url,
      width: ScreenUtil().setWidth(740),
    );
  }

  // 商品名称
  Widget _goodsName(name){
    return Container(
      width: ScreenUtil().setWidth(730),
      child: Text(
        name,
        maxLines: 1,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: ScreenUtil().setSp(24)
        ),
      ),
    );
  }
}