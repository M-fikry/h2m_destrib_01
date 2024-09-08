import 'package:h2m_destrib/core/networking/api_constants.dart';
import 'package:h2m_destrib/features/login/data/models/login_request_body.dart';
import 'package:h2m_destrib/features/login/data/models/login_response.dart';
import 'package:h2m_destrib/features/login/data/models/representative_request_body.dart';
import 'package:h2m_destrib/features/login/data/models/representative_response.dart';
import 'package:dio/dio.dart';

class ApiService {
  ApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'http://h2m.runasp.net/';
  }

  final Dio _dio;

  String? baseUrl;

  Future<LoginResponse> login(LoginRequestBody loginRequestBody) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final data = <String, dynamic>{};
    data.addAll(loginRequestBody.toJson());
    final result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginResponse>(Options(
      method: 'POST',
      headers: headers,
      extra: extra,
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    )
            .compose(
              _dio.options,
              ApiConstants.login,
              queryParameters: queryParameters,
              data: data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = LoginResponse.fromJson(result.data!);
    return value;
  }

  Future<RepresentativeResponse> getRepresentative(
      RepresentativeRequestBody requestBody) async {
    final extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final headers = <String, dynamic>{};
    final data = <String, dynamic>{};
    data.addAll(requestBody.toJson());
    final result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RepresentativeResponse>(Options(
      method: 'POST',
      headers: headers,
      extra: extra,
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    )
            .compose(
              _dio.options,
              ApiConstants.getRepresentative,
              queryParameters: queryParameters,
              data: data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RepresentativeResponse.fromJson(result.data!);

    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
