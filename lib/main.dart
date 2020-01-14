import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
// 引入provide
import 'package:flutter_shop/provide/counter.dart';
import 'package:flutter_shop/provide/category.dart';


void main () {
  var counter = Counter();
  var childCategoryList = ChildCategory();
  var providers = Providers();
  providers
  ..provide(Provider<Counter>.value(counter))
  ..provide(Provider<ChildCategory>.value(childCategoryList));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: IndexPage()
    );
  }
}

