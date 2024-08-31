import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:get/get.dart';
import 'package:knov_practical/api_services/api_service.dart';
import 'package:knov_practical/models/post/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  final apiService = ApiService.create();
  RxBool isLoading = false.obs;
  RxList<PostModel> postList = <PostModel>[].obs;
  RxList<int> savedPostIds = <int>[].obs;
  RxInt postTime = 0.obs;
  RxInt postIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    savedPostIds.value = await _getSavedPostIds();
    getPostList();
  }

  Future<void> getPostList() async {
    isLoading.value = true;
    try {
      final List<Map<String, dynamic>> response =
          await apiService.getPostList();

      if (response.isNotEmpty) {
        List<PostModel> posts = response.map((postJson) {
          int randomTime = Random().nextInt(30) + 1;
          // Check if the post ID is saved.
          bool isSaved = savedPostIds.value.contains(postJson['id']);
          return PostModel.fromJson({
            ...postJson,
            'randomTime': randomTime,
            'isSaved': isSaved,
          });
        }).toList();
        postList.value = posts;
        postList.refresh();
      } else {
        print('No posts found.');
      }
    } catch (e) {
      print('Error fetching posts: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<List<int>> _getSavedPostIds() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('post_ids') != null) {
      String? jsonString = prefs.getString('post_ids');
      if (jsonString != null) {
        List<dynamic> jsonList = jsonDecode(jsonString);
        return jsonList.map((id) => id as int).toList();
      }
    }
    return [];
  }

  Timer timer = Timer(Duration(), () {});

  void startPostTimer(int time, int index) {
    postTime.value = time;

    if (timer.isActive) {
      timer.cancel();
    }

    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (time > 0) {
        postList.value[index].randomTime = time - 1;
        print('time===>$time');
        postList.refresh();
        time--;
        postTime.value = time;
      } else {
        postList.value[index].isSaved = true;
        postList.refresh();
        t.cancel();
      }
    });
  }
}
