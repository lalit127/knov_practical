import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knov_practical/common/app_colors.dart';
import 'package:knov_practical/common/app_text_style.dart';
import 'package:knov_practical/models/post/post_model.dart';
import 'package:knov_practical/modules/home/controller/home_controller.dart';
import 'package:knov_practical/utils/base_extension.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post, required this.index});
  final PostModel post;
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(offset: Offset(0, 3), color: AppColors.primary)
          ],
          color: post.isSaved == true
              ? Colors.white
              : Colors.yellowAccent.shade200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  post.title ?? '',
                  style: AppTextStyle(context)
                      .display20W700
                      .copyWith(overflow: TextOverflow.ellipsis),
                ),
              ),
              30.0.toHSB,
              Column(
                children: [
                  post.isSaved == true
                      ? Icon(Icons.check)
                      : Icon(Icons.timer).paddingOnly(top: 10),
                  post.isSaved == true
                      ? SizedBox.shrink()
                      : controller.timer.isActive &&
                              controller.postIndex.value == index
                          ? Obx(() => Text(
                                "${controller.postTime.value} sec",
                                style: AppTextStyle(context)
                                    .display11W500
                                    .copyWith(overflow: TextOverflow.ellipsis),
                              ))
                          : Text(
                              "${post.randomTime ?? ''} sec",
                              style: AppTextStyle(context)
                                  .display11W500
                                  .copyWith(overflow: TextOverflow.ellipsis),
                            ),
                ],
              )
            ],
          ),
          10.0.toVSB,
          Row(
            children: [
              Expanded(
                child: Text(
                  post.body ?? '',
                  style: AppTextStyle(context)
                      .display11W500
                      .copyWith(overflow: TextOverflow.ellipsis),
                ),
              ),
            ],
          ),
          10.0.toVSB,
        ],
      ).paddingSymmetric(horizontal: 10),
    );
  }
}
