import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/pages/category/left_side_nav.dart';
import 'package:flutter_shop/pages/category/right_side_content.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('分类'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () { print('点击了搜索'); },
          )
        ],
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            LeftSideNav(),
            Column(
              children: <Widget>[
                RightSideContent()
              ],
            )
          ],
        ),
      ),
    );
  }
}