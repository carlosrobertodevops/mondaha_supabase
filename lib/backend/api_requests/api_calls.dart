import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Test APIs Group Code

class TestAPIsGroup {
  static String getBaseUrl() => 'https://google.com';
  static Map<String, String> headers = {};
}

/// End Test APIs Group Code

class DeletarUserAuthNoSUPABASECall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Deletar User Auth no SUPABASE',
      apiUrl: 'https://lwbmyeixfxysrddcvnjo.supabase.co',
      callType: ApiCallType.DELETE,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarEmAuthUsersNoSUPABASECall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar em Auth Users no SUPABASE ',
      apiUrl: 'https://lwbmyeixfxysrddcvnjo.supabase.co/auth/v1/user',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsImtpZCI6Ijc5Nkoyb3gxa1FkUXRjSG0iLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2x3Ym15ZWl4Znh5c3JkZGN2bmpvLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIxNWUzNTkxOS1jYzQyLTQyYjktYjI5MS02ZmFlOTZhMDczYmYiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzI4MzM1MDY0LCJpYXQiOjE3MjgzMzE0NjQsImVtYWlsIjoidGVucm9iZXJ0bzIwMTFAZ21haWwuY29tIiwicGhvbmUiOiIiLCJhcHBfbWV0YWRhdGEiOnsicHJvdmlkZXIiOiJlbWFpbCIsInByb3ZpZGVycyI6WyJlbWFpbCJdfSwidXNlcl9tZXRhZGF0YSI6eyJlbWFpbCI6InRlbnJvYmVydG8yMDExQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwicGhvbmVfdmVyaWZpZWQiOmZhbHNlLCJzdWIiOiIxNWUzNTkxOS1jYzQyLTQyYjktYjI5MS02ZmFlOTZhMDczYmYifSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTcyODMzMTQ2NH1dLCJzZXNzaW9uX2lkIjoiNDUyNTk2MjctOTk0MC00Mzc0LWEwYWQtMjg3MmM4NGNiZWM0IiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.PDAytYpvljh0zc34Hwt7LIf_U4voceEDtN840pB6V4o',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginNoSUPABASECall {
  static Future<ApiCallResponse> call({
    String? email = 'tenroberto2011@gmail.com',
    String? password = '@CRneto04',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login no SUPABASE',
      apiUrl:
          'https://lwbmyeixfxysrddcvnjo.supabase.co/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNjc2MzMzMiwiZXhwIjoyMDQyMzM5MzMyfQ.Uom252e4X1AS-QOiL3LpHtE_nuqFWelhjcEDnfTn1L8',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcedimentosADDCall {
  static Future<ApiCallResponse> call({
    int? membroId,
    String? procedimentoNo = '',
    String? unidade = '',
    String? procedimentoTipo = '',
    String? crime = '',
    String? data = '',
  }) async {
    final ffApiRequestBody = '''
{
  "membro_id": "$membroId",
  "procedimento_no": "$procedimentoNo",
  "unidade": "$unidade",
  "procedimento_tipo": "$procedimentoTipo",
  "crime": "$crime",
  "data": "$data"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ProcedimentosADD',
      apiUrl: 'https://lwbmyeixfxysrddcvnjo.supabase.co/rest/v1/procedimentos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessosADDCall {
  static Future<ApiCallResponse> call({
    int? membroId,
    String? acaoPenalNo = '',
    String? vara = '',
    String? situacaoJuridica = '',
    String? regime = '',
    String? situacaoReu = '',
  }) async {
    final ffApiRequestBody = '''
{
  "membro_id": "$membroId",
  "acao_penal_no": "$acaoPenalNo",
  "vara": "$vara",
  "situaco_juridica": "$situacaoJuridica",
  "regime": "$regime",
  "situacao_reu": "$situacaoReu"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ProcessosADD',
      apiUrl: 'https://lwbmyeixfxysrddcvnjo.supabase.co/rest/v1/processos',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx3Ym15ZWl4Znh5c3JkZGN2bmpvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY3NjMzMzIsImV4cCI6MjA0MjMzOTMzMn0.nQtpi4gaPoJ4zGxMeRUkp5bkFse-nZXloRjbM44zrLE',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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
