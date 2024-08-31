import 'package:get/get.dart';
import 'package:knov_practical/modules/home/view/home_view.dart';
import 'package:knov_practical/modules/post/view/post_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => HomeView()),
    GetPage(name: _Paths.POST_DETAIL, page: () => PostDetailView()),
  ];
}
