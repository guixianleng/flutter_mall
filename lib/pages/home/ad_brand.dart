import 'package:flutter/material.dart';

class AdBrand extends StatelessWidget {
  final String adBrandPictrue;
  AdBrand({
    Key key, this.adBrandPictrue
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(adBrandPictrue),
    );
  }
}
