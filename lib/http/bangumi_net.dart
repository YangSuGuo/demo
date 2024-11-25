import '../model/model.dart';
import 'bangumi_api.dart';
import 'net/init.dart';

class Net {
  // data = {appkey，q}
  static Future<Example> search(Map<String, dynamic> q) async {
    var res = await Request().post(
      Api.search,
      data: q, /*queryParameters: q*/
    );
    if (res.statusCode == 200) {
      // log(res.data.toString());
      Example search = Example.fromJson(res.data);
      // log(search.subjects.toString());
      return search;
    } else {
      throw Exception('获取数据失败');
    }
  }
}
