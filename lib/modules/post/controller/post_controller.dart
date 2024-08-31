import 'dart:convert';
import 'package:get/get.dart';
import 'package:knov_practical/api_services/api_service.dart';
import 'package:knov_practical/models/post/post_detail_model.dart';
import 'package:knov_practical/models/post/post_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostController extends GetxController {
  final apiService = ApiService.create();
  RxBool isLoading = false.obs;
  Rx<PostDetailModel> postModel = PostDetailModel().obs;

  Future<void> getPostDetail(int postId) async {
    isLoading.value = true;
    try {
      final response =
          await apiService.getPostDetail(postId: postId.toString());
      if (response != null) {
        postModel.value = response;
        await _savePostId(postId);
      } else {
        print('Response data is null');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> _savePostId(int postId) async {
    final prefs = await SharedPreferences.getInstance();
    List<int> savedPostIds = await _getSavedPostIds();
    if (!savedPostIds.contains(postId)) {
      savedPostIds.add(postId);
      String jsonString = jsonEncode(savedPostIds);
      await prefs.setString('post_ids', jsonString);
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
}
