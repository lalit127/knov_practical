import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knov_practical/common/app_text_style.dart';
import 'package:knov_practical/modules/home/controller/home_controller.dart';
import 'package:knov_practical/modules/home/widget/post_widget.dart';
import 'package:knov_practical/routes/app_pages.dart';
import 'package:knov_practical/utils/base_extension.dart';
import 'package:loading_indicator/loading_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = Get.put<HomeController>(HomeController());

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
      body: Obx(
        () => controller.isLoading.value
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
            : ListView.separated(
                shrinkWrap: true,
                itemCount: controller.postList.value.length,
                separatorBuilder: (context, index) {
                  return 10.0.toVSB;
                },
                itemBuilder: (context, index) {
                  final post = controller.postList.value[index];
                  return GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.POST_DETAIL,
                            arguments: {'postId': post.id});
                        controller.startPostTimer(
                            controller.postList.value[index].randomTime ?? 0,
                            index);
                      },
                      child: PostWidget(
                        post: controller.postList.value[index],
                        index: index,
                      ));
                },
              ),
      ).paddingSymmetric(horizontal: 10, vertical: 10),
    );
  }
}
