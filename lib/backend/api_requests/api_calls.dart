import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Test APIs Group Code

class TestAPIsGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {};
}

/// End Test APIs Group Code

class InserirUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = 'teste@gmail.com',
    String? senha = '@123456',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'inserir usuario',
      apiUrl: 'https://lwbmyeixfxysrddcvnjo.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class ViaCepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'via cep',
      apiUrl: 'viacep.com.br/ws/${cep}/json',
      callType: ApiCallType.GET,
      headers: {
        'Content-Length': 'application/json',
      },
      params: {
        'cep': cep,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? complemento(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? localidade(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
  static String? regiao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.regiao''',
      ));
  static String? ibge(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ibge''',
      ));
  static String? ddd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ddd''',
      ));
  static String? siafi(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.siafi''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
