import 'package:dio/dio.dart';
import 'package:flutter_newspaper_app_using_api/constants/constants.dart';

class NewsService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: ApiUrls.baseUrl,
    responseType: ResponseType.json,
  ));

  fetchNews() async {
    var response = await _dio.get('language=en');
    return response.data;
  }
}
