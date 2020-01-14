import 'package:flutter_shop/utils/http_util.dart';
import 'package:flutter_shop/api/api.dart';
import 'package:flutter_shop/constant/string.dart';

typedef OnSuccessList<T>(List<T> banners);

typedef OnFail(String message);

typedef OnSuccess<T>(T successData);

class HomeService {
  Future getHomePageData() async {
    try {
      var response = await HttpUtil.instance.get(Api.HOME_DATA);
      if (response['errno'] == 0) {
        return response['data'];
      } else {
        print(response['errmsg']);
      }
    } catch (e) {
      print('Error ===> ${e}');
    }
  }
  // 获取banner数据
  Future getBannerData(OnSuccessList onSuccessList, {OnFail onFail}) async {
    try {
      var responseList = [];
      var response = await HttpUtil.instance.get(Api.BANNER_DATA);
      if (response['errno'] == 0) {
        responseList = response['data'];
        print(responseList);
        onSuccessList(responseList);
      } else {
        onFail(response['errmsg']);
      }
    } catch (e) {
      print(e);
      onFail(Strings.SERVER_EXCEPTION);
    }
  }
}
