// 接口地址
class Api {
  static const String BASE_URL = 'http://120.25.226.11:8080//mall-app/wx';
  // 首页数据
  static const String HOME_DATA = BASE_URL + '/home/index';
  // 获取首页banner图
  static const String BANNER_DATA = BASE_URL + '/home/banner';
  // 获取商品总数
  static const String GOODS_TOTAL_NUMBER = BASE_URL + '/goods/count';
  // 商品分类第一级
  static const String FIRST_CATEGORY = BASE_URL + '/catalog/getfirstcategory';
  // 商品分类第二级
  static const String SUB_CATEGORY = BASE_URL + '/catalog/getsecondcategory';
  // 分类下的商品列表
  static const String GOODS_LIST = BASE_URL + '/goods/list';
  // 商品详情
  static const String GOODS_DETAILS = BASE_URL + '/goods/detail';
}
