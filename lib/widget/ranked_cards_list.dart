import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo_01/widget/search_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../model/model.dart';
import 'network_img.dart';

class RankedCardsList extends StatelessWidget {
  const RankedCardsList({
    super.key,
    required this.datum,
  });

  final Subject datum;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    List<String> casts = [];
    for (var item in datum.casts) {
      casts.add(item.name);
    }
    return InkWell(
        onTap: () {},
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  NetworkImg(
                    src: datum.images.small,
                    width: 70,
                    height: 100,
                  )
                ]),
                Gap(25.w),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(8.h),
                    Row(
                      children: [
                        const Icon(
                          Icons.play_circle_outlined,
                          color: Color(0xffFF5757),
                        ),
                        const Gap(3),
                        Expanded(
                            child: AutoSizeText(
                          "${datum.title}(${datum.year})",
                          maxLines: 1,
                          minFontSize: 17,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )),
                      ],
                    ),

                    // 星级评定
                    Gap(6.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AnimatedRatingStars(
                          initialRating: datum.rating.average! / 2,
                          maxRating: 5.0,
                          minRating: 0.0,
                          starSize: 16.sp,
                          filledColor: const Color(0xffFE9900),
                          displayRatingValue: false,
                          interactiveTooltips: true,
                          readOnly: true,
                          onChanged: (double rating) {},
                          customFilledIcon: Icons.star,
                          customHalfFilledIcon: Icons.star_half,
                          customEmptyIcon: Icons.star_border,
                        ),
                        Gap(10.w),
                        AutoSizeText("${datum.rating.average!}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffFE9900),
                                fontSize: 28.sp)),
                      ],
                    ),
                    Gap(6.h),
                    // 简介
                    Padding(
                        padding: EdgeInsets.only(right: 25.w),
                        child: Row(
                          children: [
                            SearchText(
                                searchText:
                                    datum.subtype == "movie" ? "影视" : "动画",
                                isSelected: true,
                                colors: const Color(0xffF7F7F7)),
                            const Gap(5),
                            Expanded(
                                child: AutoSizeText(
                              maxLines: 1,
                              minFontSize: 14,
                              "${datum.genres.join(" / ")} / ${casts.join(" / ")}",
                            )),
                          ],
                        )),
                  ],
                ))
              ],
            )));
  }
}
