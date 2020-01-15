import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
// 组件
import 'package:flutter_shop/widget/swiper.dart';
import 'package:flutter_shop/pages/home/top_navigator.dart';
import 'package:flutter_shop/pages/home/topic_list.dart';
import 'package:flutter_shop/pages/home/hot_list.dart';
// 接口
import '../../service/home_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  String showText = '正在获取数据';

  HomeService _homeService = HomeService();

  @override
  bool get wantKeepAlive => false;

  void initState () {
    super.initState();
    print('刷新了');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _homeService.getHomePageData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            // 轮播图
            List<Map> swiperDataList = (data['banner'] as List).cast();
            // 导航
            List<Map> navigatorList = (data['channel'] as List).cast();
            if (navigatorList.length > 10) {
              navigatorList.removeRange(10, navigatorList.length);
            }
            // 专题精选
            List<Map> topicList = (data['topicList'] as List).cast();
            // 热卖
            List<Map> hotList = (data['hotGoodsList'] as List).cast();

            return EasyRefresh(
              header: MaterialHeader(),
              footer: MaterialFooter(),
              child: ListView(
                children: <Widget>[
                  SwiperDiy(swiperDataList: swiperDataList),
                  TopNavigator(navigatorList: navigatorList),
                  TopicList(topicList: topicList),
                  HotList(hotList: hotList,)
                ],
              ),
              onLoad: () async {
                print('加载更多...');
              },
            );
          } else {
            return Center(
              child: Text('加载中...'),
            );
          }
        },
      )
    );
  }
}
