import 'package:h2m_destrib/features/login/data/models/representative_request_body.dart';
import 'package:h2m_destrib/features/login/data/models/representative_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';

class RepresentativeRepo {
  final ApiService _apiService;
  RepresentativeRepo(this._apiService);

  Future<ApiResult<RepresentativeResponse>> getRepresentative(
    RepresentativeRequestBody representativeRequestBody) async {
    try {
      final response = await _apiService.getRepresentative(representativeRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      print('error api request :::::: >>>> ${e.toString()}');
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}