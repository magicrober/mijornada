import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? usuario = '',
    String? pass = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl:
          'https://app.datium.es/login_usuario?usuario=${usuario}&pass=${pass}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? estadopeticion(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? usuario(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.usuario''',
      ));
  static String? pass(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.pass''',
      ));
  static String? tenant(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.tenant''',
      ));
  static String? peer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.peer''',
      ));
  static String? statusmessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_message''',
      ));
  static String? idtenant(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.id_tenant''',
      ));
  static String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.numero''',
      ));
  static dynamic idpeer(dynamic response) => getJsonField(
        response,
        r'''$.data.id_peer''',
      );
}

class CallCall {
  static Future<ApiCallResponse> call({
    String? movil = '',
    String? usuario = '',
    String? pass = '',
    String? destino = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'call',
      apiUrl:
          'https://app.datium.es/call_usuario?movil=${movil}&usuario=${usuario}&pass=${pass}&destino=${destino}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic estadoapi(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic estatusmessage(dynamic response) => getJsonField(
        response,
        r'''$.status_message''',
      );
}

class GetContactosCall {
  static Future<ApiCallResponse> call({
    String? idPeer = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getContactos',
      apiUrl: 'https://app.datium.es/get_contactos?id_peer=${idPeer}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listaContactos(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class GetDidsCall {
  static Future<ApiCallResponse> call({
    String? idTenant = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDids',
      apiUrl: 'https://app.datium.es/get_dids?id_tenant=${idTenant}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? litsdids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].did''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetDidCall {
  static Future<ApiCallResponse> call({
    String? idPeer = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDid',
      apiUrl: 'https://app.datium.es/get_did?id_peer=${idPeer}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? did(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].did''',
      ));
}

class UpdateConfiguracionCall {
  static Future<ApiCallResponse> call({
    String? idPeer = '',
    String? did = '',
    String? didSaliente = '',
    bool? estadoLlamada,
    String? tipo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id_peer": "${idPeer}",
  "did": "${did}",
  "did_saliente": "${didSaliente}",
  "estado_llamada": ${estadoLlamada},
  "tipo": "${tipo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateConfiguracion',
      apiUrl: 'https://app.datium.es/update_configuracion',
      callType: ApiCallType.POST,
      headers: {},
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

  static String? statusmessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_message''',
      ));
}

class GetDidSalienteCall {
  static Future<ApiCallResponse> call({
    String? idPeer = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getDidSaliente',
      apiUrl: 'https://app.datium.es/get_did_saliente?id_peer=${idPeer}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic did(dynamic response) => getJsonField(
        response,
        r'''$.data[:].did''',
      );
}

class GetEstadoLlamadaCall {
  static Future<ApiCallResponse> call({
    String? idPeer = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEstadoLlamada',
      apiUrl: 'https://app.datium.es/get_estado_llamada?id_peer=${idPeer}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic estadollamada(dynamic response) => getJsonField(
        response,
        r'''$.data[:].estado''',
      );
  static dynamic tipollamada(dynamic response) => getJsonField(
        response,
        r'''$.data[:].tipo''',
      );
}

class LoginSignCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? pass = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginSign',
      apiUrl: 'https://app.datium.es/login_sign?email=${email}&pass=${pass}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic jwt(dynamic response) => getJsonField(
        response,
        r'''$.data.jwt''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.status_message''',
      );
}

class LastSignCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'lastSign',
      apiUrl: 'https://app.datium.es/last_sign?jwt=${jwt}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic entrar(dynamic response) => getJsonField(
        response,
        r'''$.data.entrar''',
      );
  static dynamic salir(dynamic response) => getJsonField(
        response,
        r'''$.data.salir''',
      );
  static dynamic pausa(dynamic response) => getJsonField(
        response,
        r'''$.data.pausa''',
      );
  static dynamic rea(dynamic response) => getJsonField(
        response,
        r'''$.data.rea''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.status_message''',
      );
}

class AddSignCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    int? tipo,
    String? latitud = '',
    String? longitud = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'addSign',
      apiUrl:
          'https://app.datium.es/add_sign?jwt=${jwt}&tipo=${tipo}&latitud=${latitud}&longitud=${longitud}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.status_message''',
      );
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
