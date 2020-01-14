import 'package:flutter_shop/utils/http_util.dart';
import 'package:flutter_shop/api/api.dart';
import 'package:flutter_shop/constant/string.dart';

typedef OnSuccessList<T>(List<T> banners);

typedef OnFail(String message);

typedef OnSuccess<T>(T successData);

class CategoryService {
  // 获取分类一级
  Future getFirstCategoryData(OnSuccessList onSuccessList, {OnFail onFail}) async {
    try {
      var response = await HttpUtil.instance.get(Api.FIRST_CATEGORY);
      if (response['errno'] == 0) {
        onSuccessList(response['data']);
      } else {
        onFail(response['errmsg']);
      }
    } catch (e) {
      print('Error ===> ${e}');
      onFail(Strings.SERVER_EXCEPTION);
    }
  }
  // 获取分类二级
  Future getsubCategoryData(
    Map<String, dynamic> parameters,
    OnSuccessList onSuccessList,
    {OnFail onFail}) async {
    try {
      var response = await HttpUtil.instance.get(Api.SUB_CATEGORY, parameters: parameters);
      if (response['errno'] == 0) {
        onSuccessList(response['data']);
      } else {
        onFail(response['errmsg']);
      }
    } catch (e) {
      print('Error ===> ${e}');
      onFail(Strings.SERVER_EXCEPTION);
    }
  }
}