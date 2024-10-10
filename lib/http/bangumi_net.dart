import 'dart:developer';

import '../model/model.dart';
import 'bangumi_api.dart';
import 'net/constants.dart';
import 'net/init.dart';

class Net {
  static Future<Example> search(Map<String, dynamic> q) async {
    var res = await Request()
        .post(Api.search, data: HttpString.cookies, queryParameters: q);
    if (res.statusCode == 200) {
      log(res.data.toString());
      Example search = Example.fromJson(res.data);
      log(search.subjects.toString());
      return search;
    } else {
      throw Exception('获取数据失败');
    }
  }
}
