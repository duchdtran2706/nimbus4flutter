// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// NimbusSupporterGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

const _kServerName = 'ApiService';

class _ApiService implements ApiService {
  _ApiService({
    required String baseUrl,
    ApiServerHttpRequestBuilder? requestBuilder,
    ApiServerHttpResponseParser? responseParser,
  }) {
    final urlSplit = baseUrl.split(':');
    final host = urlSplit.first;
    final port = int.tryParse(urlSplit.lastOrNull ?? '');
    ApiRegistory.registApiServer(
      ApiServerHttp(
        name: _kServerName,
        host: host,
        port: port,
        requestBuilder: requestBuilder,
        responseParser: responseParser,
      ),
    );

    ApiRegistory.registApi(
      ApiHttp<ApiRequestModel, ApiResponseModel, Request, Response>(
        name: 'login',
        serverName: _kServerName,
        method: HttpMethod.POST,
        path: '/web/login.bf',
        inputCreator: (_) => ApiRequestModel(),
        outputCreator: (_) => ApiResponseModel(),
      ),
    );

    ApiRegistory.registApi(
      ApiHttp<ApiRequestModel, ApiResponseModel, Request, Response>(
        name: 'logout',
        serverName: _kServerName,
        method: HttpMethod.POST,
        path: '/web/logout.bf',
        inputCreator: (_) => ApiRequestModel(),
        outputCreator: (_) => ApiResponseModel(),
      ),
    );
  }

  @override
  Future<ApiResponseModel> login(ApiRequestModel request) async {
    final api = ApiRegistory.getApi('login');
    final context = RequestContext();
    final response = await api?.request(request, context);
    return response;
  }

  @override
  Future<ApiResponseModel> logout(ApiRequestModel request) async {
    final api = ApiRegistory.getApi('logout');
    final context = RequestContext();
    final response = await api?.request(request, context);
    return response;
  }
}
