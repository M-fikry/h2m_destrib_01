import 'package:h2m_destrib/core/networking/api_constants.dart';
import 'package:h2m_destrib/features/login/data/models/login_request_body.dart';
import 'package:h2m_destrib/features/login/data/models/login_response.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
