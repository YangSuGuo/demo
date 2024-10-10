import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../http/bangumi_net.dart';
import '../../model/model.dart';

class HomeController extends GetxController {
  Rx<TextEditingController> searchController = TextEditingController().obs;
  RxString keyword = '哈利'.obs;

  RxInt count = 1.obs;
  RxList<Subjects> subjectsList = <Subjects>[].obs;

  @override
  void onInit() async {
    super.onInit();
    await search({
      "q": keyword.value,
    });
  }

  Future search(Map<String, dynamic> q) async {
    var result = await Net.search(q);
    subjectsList.value = result.subjects!;
    count.value = result.count!;
    return result;
  }
}
