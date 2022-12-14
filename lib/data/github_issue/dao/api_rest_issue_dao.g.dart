// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_rest_issue_dao.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiRestIssueDao implements ApiRestIssueDao {
  _ApiRestIssueDao(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ApiIssueResponseModel> getOpenIssues(
      {required repoFullName,
      required sortType,
      required sortDirection,
      required limit,
      required page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'sort': sortType,
      r'order': sortDirection,
      r'per_page': limit,
      r'page': page
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiIssueResponseModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options,
                    '/search/issues?q=is:issue%20repo:$repoFullName+state:open',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiIssueResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ApiIssueResponseModel> getClosedIssues(
      {required repoFullName,
      required sortType,
      required sortDirection,
      required limit,
      required page}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'sort': sortType,
      r'order': sortDirection,
      r'per_page': limit,
      r'page': page
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ApiIssueResponseModel>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                '/search/issues?q=is:issue%20repo:$repoFullName+state:closed',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ApiIssueResponseModel.fromJson(_result.data!);
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
}
