import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo_01/widget/ranked_cards_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../widget/main.dart';
import 'home_controllers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Build(
      body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Obx(() => TextField(
                            onChanged: (value) =>
                                controller.keyword.value = value,
                            autofocus: true,
                            controller: controller.searchController.value,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              suffixIcon: const Icon(
                                Icons.remove_circle,
                                color: Color(0xffA6AAA9),
                              ),
                              filled: true,
                              fillColor: Color(0xFF04A32C).withOpacity(0.06),
                              hintText: '搜索...',
                              isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ))),
                  const Gap(15),
                  // todo 动画
                  const AutoSizeText(
                    "取消",
                    style: TextStyle(
                        color: Color(0xFF04A32C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Gap(10),
              Expanded(
                  child: Obx(() => ListView.builder(
                    padding: EdgeInsets.zero,
                      itemCount: controller.count.value,
                      itemBuilder: (BuildContext context, int index) {
                        return RankedCardsList(
                          datum: controller.subjectsList[index],
                        );
                      })))
            ],
          )),
    );
  }
}
