import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:knov_practical/models/common_api_model.dart';
import 'package:knov_practical/utils/constants.dart';
import 'package:knov_practical/utils/dio_utils.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService create() {
    final dio = DioUtil().getDio();
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: kDebugMode ? true : false,
      requestBody: kDebugMode ? true : false,
      responseBody: kDebugMode ? true : false,
      responseHeader: kDebugMode ? true : false,
      compact: kDebugMode ? true : false,
    ));
    //kDebugMode ? "" : dio.interceptors.clear();
    return ApiService(dio);
  }

  @GET(Constants.postList)
  Future<CommonApiModel> getPostList();

  @GET(Constants.postDetail)
  Future<CommonApiModel> getAnotherUserProfileById({
    @Path('postId') required String postId,
  });
}
