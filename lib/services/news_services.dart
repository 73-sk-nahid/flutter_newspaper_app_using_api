import 'package:dio/dio.dart';
import 'package:flutter_newspaper_app_using_api/constants/constants.dart';
class NewsService{
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiUrls.baseUrl,
      responseType
    )
  )
}