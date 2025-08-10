
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor{
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final token = _getToken();
    // if (token != null) {
    //   if (!options.path.contains('login')) {
    //     options.headers['Authorization'] = 'Bearer ${token.bearer}';
    //   }
    // }
    // return handler.next(options);
  }

  // Token? _getToken() {
  //   final temp =
  //       getIt<SharedPreferences>().getString(SharedPreferenceKey.token);
  //   if (temp != null) {
  //     return Token.fromJson(jsonDecode(temp));
  //   }
  //   return null;
  // }

  // Future<void> _saveToken(Token token) async {
  //   await getIt<SharedPreferences>()
  //       .setString(SharedPreferenceKey.token, jsonEncode(token.toJson()));
  // }
}