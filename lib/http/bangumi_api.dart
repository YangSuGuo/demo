abstract class Api {
  /// 豆瓣 API
  static const String baseUrl = 'https://api.douban.com/v2';

  /// 搜索
  /// apikey：0ab215a8b1977939201640fa14c66bab
  /// Query 参数：q：{“%E5%93%88%E5%88%A9"}
  static const String search = '/movie/search';
}
