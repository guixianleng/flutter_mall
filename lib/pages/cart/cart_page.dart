import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provide/provide.dart';
// 引入provide
import 'package:flutter_shop/provide/counter.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Number(),
            MyButton()
          ],
        ),
      ),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Provide<Counter>(
        builder: (context, child, counter) {
          return Text(
            '${counter.value}',
            style: Theme.of(context).textTheme.display1
          );
        },
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          Provide.value<Counter>(context).increment();
        },
        color: Colors.green,
        highlightColor: Colors.green[700],
        colorBrightness: Brightness.dark,
        splashColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        child: Text('递增'),
      ),
    );
  }
}