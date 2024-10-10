class HttpString {
  static const String apiBaseUrl = 'https://api.douban.com/v2';
  static const Map<String, String> headers = {
    'Host': 'api.douban.com',
    'User-Agent': 'YangSuGuo',
    'Accept': 'application/json',
    // 'Content-Type': 'application/json',
    'Connection': 'keep-alive'
  };
  static const Map<String, String> cookies = {
    'apikey': '0ab215a8b1977939201640fa14c66bab'
  };
  static const Duration connectTimeout = Duration(milliseconds: 12000);
  static const List<int> validateStatusCodes = [
    302,
    304,
    307,
    400,
    401,
    403,
    404,
    405,
    409,
    412,
    500,
    503,
    504,
    509,
    616,
    617,
    625,
    626,
    628,
    629,
    632,
    643,
    650,
    652,
    658,
    662,
    688,
    689,
    701,
    799,
    8888
  ];
}
