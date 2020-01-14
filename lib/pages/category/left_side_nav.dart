import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// 接口
import 'package:flutter_shop/service/category_service.dart';
// provide
import 'package:provide/provide.dart';
import 'package:flutter_shop/provide/category.dart';

class LeftSideNav extends StatefulWidget {
  @override
  _LeftSideNavState createState() => _LeftSideNavState();
}

class _LeftSideNavState extends State<LeftSideNav> {
  CategoryService _categoryService = CategoryService();
  List list = [];
  var listIndex = 0; // list索引

  void initState () {
    _getFirstCategory();
    super.initState();
  }

  // 获取一级分类
  void _getFirstCategory () {
    _categoryService.getFirstCategoryData((list) {
      _getCategoryData(list[0]['id']);
      setState(() {
        this.list = list;
      });
    });
  }

  // 根据id获取分类内容
  void _getCategoryData (int id) async{
    var params = {'id': id};
    await _categoryService.getsubCategoryData(params, (list) {
      Provide.value<ChildCategory>(context).getChildCategory(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(180.0),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(width: 1, color: Colors.black12)
        )
      ),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return _leftInkWell(index);
        },
      )
    );
  }

  // 子项
  Widget _leftInkWell(int index) {
    bool isClick = false;
    isClick = (index == listIndex) ? true : false;
    return InkWell(
      onTap: () { 
        setState(() {
          this.listIndex = index;
        });
        // 设置provide
        var childId = list[index]['id'];
        _getCategoryData(childId);
      },
      child: Container(
        height: ScreenUtil().setHeight(100.0),
        padding: EdgeInsets.only(left: 10.0, top: 15.0),
        decoration: BoxDecoration(
          color: isClick ? Colors.green[300] : Colors.white,
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.black12)
          )
        ),
        child: Text(
          list[index]['name'],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: ScreenUtil().setSp(28)
          )
        ),
      ),
    );
  }
}