part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const POST_DETAIL = _Paths.POST_DETAIL;

}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const POST_DETAIL = '/post-detail';
}