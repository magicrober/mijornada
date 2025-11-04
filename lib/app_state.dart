import 'package:flutter/material.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _usuario = prefs.getString('ff_usuario') ?? _usuario;
    });
    _safeInit(() {
      _telefono = prefs.getString('ff_telefono') ?? _telefono;
    });
    _safeInit(() {
      _pass = prefs.getString('ff_pass') ?? _pass;
    });
    _safeInit(() {
      _tenant = prefs.getString('ff_tenant') ?? _tenant;
    });
    _safeInit(() {
      _peer = prefs.getString('ff_peer') ?? _peer;
    });
    _safeInit(() {
      _idtenant = prefs.getString('ff_idtenant') ?? _idtenant;
    });
    _safeInit(() {
      _idpeer = prefs.getString('ff_idpeer') ?? _idpeer;
    });
    _safeInit(() {
      _paginainicial = prefs.getInt('ff_paginainicial') ?? _paginainicial;
    });
    _safeInit(() {
      _jwt = prefs.getString('ff_jwt') ?? _jwt;
    });
    _safeInit(() {
      _emailsign = prefs.getString('ff_emailsign') ?? _emailsign;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _usuario = '';
  String get usuario => _usuario;
  set usuario(String value) {
    _usuario = value;
    prefs.setString('ff_usuario', value);
  }

  String _telefono = '';
  String get telefono => _telefono;
  set telefono(String value) {
    _telefono = value;
    prefs.setString('ff_telefono', value);
  }

  String _pass = '';
  String get pass => _pass;
  set pass(String value) {
    _pass = value;
    prefs.setString('ff_pass', value);
  }

  String _tenant = '';
  String get tenant => _tenant;
  set tenant(String value) {
    _tenant = value;
    prefs.setString('ff_tenant', value);
  }

  String _peer = '';
  String get peer => _peer;
  set peer(String value) {
    _peer = value;
    prefs.setString('ff_peer', value);
  }

  String _idtenant = '';
  String get idtenant => _idtenant;
  set idtenant(String value) {
    _idtenant = value;
    prefs.setString('ff_idtenant', value);
  }

  String _idpeer = '';
  String get idpeer => _idpeer;
  set idpeer(String value) {
    _idpeer = value;
    prefs.setString('ff_idpeer', value);
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool value) {
    _showFullList = value;
  }

  int _paginainicial = 0;
  int get paginainicial => _paginainicial;
  set paginainicial(int value) {
    _paginainicial = value;
    prefs.setInt('ff_paginainicial', value);
  }

  String _jwt = '';
  String get jwt => _jwt;
  set jwt(String value) {
    _jwt = value;
    prefs.setString('ff_jwt', value);
  }

  String _emailsign = '';
  String get emailsign => _emailsign;
  set emailsign(String value) {
    _emailsign = value;
    prefs.setString('ff_emailsign', value);
  }

  LatLng? _geolocation;
  LatLng? get geolocation => _geolocation;
  set geolocation(LatLng? value) {
    _geolocation = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
