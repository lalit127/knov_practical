import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knov_practical/common/app_text_style.dart';
import 'package:knov_practical/modules/post/controller/post_controller.dart';
import 'package:knov_practical/utils/base_extension.dart';
import 'package:loading_indicator/loading_indicator.dart';

class PostDetailView extends StatefulWidget {
  const PostDetailView({super.key});

  @override
  State<PostDetailView> createState() => _PostDetailViewState();
}

class _PostDetailViewState extends State<PostDetailView> {
  final controller = Get.put<PostController>(PostController());
  final postId = Get.arguments['postId'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('post====>${postId}');
    controller.getPostDetail(int.parse(postId.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Knovo',
                style: AppTextStyle(context).display20W500,
              ),
              5.0.toHSB,
              Icon(Icons.catching_pokemon_sharp)
            ],
          ),
        ),
        body: Obx(() => controller.isLoading.value
            ? Center(
                child: SizedBox(
                  height: 70,
                  child: const LoadingIndicator(
                      indicatorType: Indicator.pacman,
                      colors: [Colors.yellow],
                      backgroundColor: Colors.black,
                      pathBackgroundColor: Colors.black),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  100.0.toVSB,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          controller.postModel.value.title ?? '',
                          style: AppTextStyle(context).display20W700.copyWith(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.white),
                        ),
                      ),
                      30.0.toHSB,
                      Icon(Icons.timer).paddingOnly(top: 10),
                    ],
                  ),
                  10.0.toVSB,
                  Text(
                    controller.postModel.value.body ?? '',
                    style: AppTextStyle(context).display11W500.copyWith(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
                  ),
                  10.0.toVSB,
                ],
              ).paddingSymmetric(horizontal: 10)));
  }
}
