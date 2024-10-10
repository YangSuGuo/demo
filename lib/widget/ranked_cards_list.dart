import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:auto_size_text/auto_size_text.dart';
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

  final Subjects datum;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
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
                    src: datum.images!.large,
                    width: 210.w,
                    height: 240.h,
                  )
                ]),
                Gap(25.w),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(8.h),
                    AutoSizeText(
                      datum.title! + datum.year!,
                      // datum.nameCn ?? datum.name,
                      maxLines: 1,
                      minFontSize: 17,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.secondary),
                    ),
                    // 星级评定
                    Gap(6.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AnimatedRatingStars(
                          initialRating: datum.rating!.average!,
                          maxRating: 10.0,
                          minRating: 0.0,
                          starSize: 16.sp,
                          filledColor: colorScheme.primary.withOpacity(0.8),
                          displayRatingValue: false,
                          interactiveTooltips: true,
                          readOnly: true,
                          onChanged: (double rating) {},
                          customFilledIcon: Icons.star,
                          customHalfFilledIcon: Icons.star_half,
                          customEmptyIcon: Icons.star_border,
                        ),
                        Gap(10.w),
                        AutoSizeText("${datum.rating!.average!}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: colorScheme.primary.withOpacity(0.6),
                                fontSize: 28.sp)),
                      ],
                    ),
                    Gap(6.h),

                    // 简介
                    Padding(
                        padding: EdgeInsets.only(right: 25.w),
                        child: AutoSizeText(
                          "....",
                          minFontSize: 13,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: colorScheme.secondary,
                          ),
                        )),
                  ],
                ))
              ],
            )));
  }
}
