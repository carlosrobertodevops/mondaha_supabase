import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _webbarminimal = prefs.getBool('ff_webbarminimal') ?? _webbarminimal;
    });
    _safeInit(() {
      _UsuarioAtualId = prefs.getInt('ff_UsuarioAtualId') ?? _UsuarioAtualId;
    });
    _safeInit(() {
      _UsuarioAtualTipo =
          prefs.getInt('ff_UsuarioAtualTipo') ?? _UsuarioAtualTipo;
    });
    _safeInit(() {
      _UsuarioAtualNome =
          prefs.getString('ff_UsuarioAtualNome') ?? _UsuarioAtualNome;
    });
    _safeInit(() {
      _UsuarioAtualFoto =
          prefs.getString('ff_UsuarioAtualFoto') ?? _UsuarioAtualFoto;
    });
    _safeInit(() {
      _UsuarioAtualAgencia =
          prefs.getInt('ff_UsuarioAtualAgencia') ?? _UsuarioAtualAgencia;
    });
    _safeInit(() {
      _TipoUsuarioAtualNome =
          prefs.getString('ff_TipoUsuarioAtualNome') ?? _TipoUsuarioAtualNome;
    });
    _safeInit(() {
      _AgenciaAtualNome =
          prefs.getString('ff_AgenciaAtualNome') ?? _AgenciaAtualNome;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _AGENCIA = 'CHEGII';
  String get AGENCIA => _AGENCIA;
  set AGENCIA(String value) {
    _AGENCIA = value;
    prefs.setString('ff_AGENCIA', value);
  }

  int _EDITFACCAOID = 0;
  int get EDITFACCAOID => _EDITFACCAOID;
  set EDITFACCAOID(int value) {
    _EDITFACCAOID = value;
  }

  bool _webbarminimal = false;
  bool get webbarminimal => _webbarminimal;
  set webbarminimal(bool value) {
    _webbarminimal = value;
    prefs.setBool('ff_webbarminimal', value);
  }

  int _UsuarioAtualId = 0;
  int get UsuarioAtualId => _UsuarioAtualId;
  set UsuarioAtualId(int value) {
    _UsuarioAtualId = value;
    prefs.setInt('ff_UsuarioAtualId', value);
  }

  int _UsuarioAtualTipo = 0;
  int get UsuarioAtualTipo => _UsuarioAtualTipo;
  set UsuarioAtualTipo(int value) {
    _UsuarioAtualTipo = value;
    prefs.setInt('ff_UsuarioAtualTipo', value);
  }

  String _UsuarioAtualNome = '';
  String get UsuarioAtualNome => _UsuarioAtualNome;
  set UsuarioAtualNome(String value) {
    _UsuarioAtualNome = value;
    prefs.setString('ff_UsuarioAtualNome', value);
  }

  String _UsuarioAtualFoto = '';
  String get UsuarioAtualFoto => _UsuarioAtualFoto;
  set UsuarioAtualFoto(String value) {
    _UsuarioAtualFoto = value;
    prefs.setString('ff_UsuarioAtualFoto', value);
  }

  int _UsuarioAtualAgencia = 0;
  int get UsuarioAtualAgencia => _UsuarioAtualAgencia;
  set UsuarioAtualAgencia(int value) {
    _UsuarioAtualAgencia = value;
    prefs.setInt('ff_UsuarioAtualAgencia', value);
  }

  String _TipoUsuarioAtualNome = '';
  String get TipoUsuarioAtualNome => _TipoUsuarioAtualNome;
  set TipoUsuarioAtualNome(String value) {
    _TipoUsuarioAtualNome = value;
    prefs.setString('ff_TipoUsuarioAtualNome', value);
  }

  String _AgenciaAtualNome = '';
  String get AgenciaAtualNome => _AgenciaAtualNome;
  set AgenciaAtualNome(String value) {
    _AgenciaAtualNome = value;
    prefs.setString('ff_AgenciaAtualNome', value);
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
