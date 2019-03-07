import 'package:dio/dio.dart';

final String url =
    'https://raw.githubusercontent.com/facebook/react-native/0.51-stable/docs/MoviesExample.json';

Dio dio = new Dio();

// Options options = new BaseOptions(
//   baseUrl: '/',
//   connectTimeout: 12000,
//   receiveTimeout: 12000,
// );
