import 'package:flutter/material.dart';
import 'backend/supabase/supabase.dart';
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
      _AGENCIA = prefs.getString('ff_AGENCIA') ?? _AGENCIA;
    });
    _safeInit(() {
      _USUARIOFOTO = prefs.getString('ff_USUARIOFOTO') ?? _USUARIOFOTO;
    });
    _safeInit(() {
      _WEBBARRETRATIL = prefs.getInt('ff_WEBBARRETRATIL') ?? _WEBBARRETRATIL;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _AGENCIA = 'CHEGII/SSPAL';
  String get AGENCIA => _AGENCIA;
  set AGENCIA(String value) {
    _AGENCIA = value;
    prefs.setString('ff_AGENCIA', value);
  }

  String _USUARIOFOTO = '';
  String get USUARIOFOTO => _USUARIOFOTO;
  set USUARIOFOTO(String value) {
    _USUARIOFOTO = value;
    prefs.setString('ff_USUARIOFOTO', value);
  }

  int _WEBBARRETRATIL = 250;
  int get WEBBARRETRATIL => _WEBBARRETRATIL;
  set WEBBARRETRATIL(int value) {
    _WEBBARRETRATIL = value;
    prefs.setInt('ff_WEBBARRETRATIL', value);
  }

  int _EDITFACCAOID = 0;
  int get EDITFACCAOID => _EDITFACCAOID;
  set EDITFACCAOID(int value) {
    _EDITFACCAOID = value;
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
