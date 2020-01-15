# Flutter_Mall

Flutter项目实战训练，ui界面和接口是基于开源项目 [Flutter_Mall](https://github.com/youxinLu/flutter_mall) 进行设计和开发的。

# 项目结构
```shell
├── lib
│   ├── api(接口地址)
│   ├── config(配置文件)
│   ├── constant(字符串定义)
│   ├── model(定义模型)
│   ├── pages(页面)
│   │	  ├── home(首页) 
│   │		└── category(分类) 
│   │		└── cart(购物车)
│   │		└── profile(个人中心)
│   ├── provide(状态管理)
│   ├── service(网络请求)
│   │── utils(工具类)
│   │── widgets(通用组件)
```

## 功能模块
- 首页
  - 专题精选、详情
  - 热门商品、详情
  - 上拉刷新文案、数据
- 分类
  - 分类列表
  - 商品详情
  - 搜索
- 购物车
  - 加入购物车
  - 订单列表
  - 下单
- 会员中心
  - 地址管理
  - 足迹

## 功能进度
- [x] 首页
- [ ] 分类
  - [x] 分类列表
- [ ] 商品搜索
- [ ] 商品详情
- [ ] 购物车
- [ ] 会员中心

## 项目截图
<div>
  <img src="https://raw.githubusercontent.com/guixianleng/images-store/master/images/flutter_page1.png" width="300"/>
  <img src="https://raw.githubusercontent.com/guixianleng/images-store/master/images/flutter_page2.png" width="300"/>
  <img src="https://raw.githubusercontent.com/guixianleng/images-store/master/images/flutter_page3.png" width="300"/>
</div>

## 第三方框架
| 插件名 | 用处 |
|--| -- |
| [dio](https://github.com/flutterchina/dio) | 网络框架 |
| [flutter_swiper](https://github.com/best-flutter/flutter_swiper) | 轮播图 |
| [flutter_easyrefresh](https://github.com/xuelongqy/flutter_easyrefresh) | 下拉刷新以及上拉加载 |
| [flutter_ScreenUtil](https://github.com/OpenFlutter/flutter_ScreenUtil) | 屏幕适配 |
| [flutter-provide](https://github.com/google/flutter-provide) | 状态管理 |

## Flutter学习资料

- [Dart语言](https://dart.dev/)
- [Flutter官方文档](https://flutter.dev/docs)
- [Flutter实战](https://book.flutterchina.club/)
- [flutter-go](https://github.com/alibaba/flutter-go)
- [移动电商项目](https://jspang.com/detailed?id=53)
