
import 'package:example/model/request.dart';
import 'package:example/model/response.dart';
import 'package:http/http.dart';
import 'package:nimbus4flutter/nimbus4flutter.dart';

part 'api_service.g.dart';

@NimbusApi() 
abstract class ApiService {
  factory ApiService({
    required String baseUrl,
    ApiServerHttpRequestBuilder? requestBuilder,
    ApiServerHttpResponseParser? responseParser,
  }) = _ApiService;

  @POST('/web/login.bf')
  Future<ApiResponseModel> login(ApiRequestModel request);

  @POST('/web/logout.bf')
  Future<ApiResponseModel> logout(ApiRequestModel request);
}
