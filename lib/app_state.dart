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
      _UsuarioAtualTipoUsuarioId =
          prefs.getInt('ff_UsuarioAtualTipoUsuarioId') ??
              _UsuarioAtualTipoUsuarioId;
    });
    _safeInit(() {
      _UsuarioAtualNomeCompleto =
          prefs.getString('ff_UsuarioAtualNomeCompleto') ??
              _UsuarioAtualNomeCompleto;
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
      _UsuarioAtualTipoUsuarioNome =
          prefs.getString('ff_UsuarioAtualTipoUsuarioNome') ??
              _UsuarioAtualTipoUsuarioNome;
    });
    _safeInit(() {
      _UsuarioAtualAgenciaNome =
          prefs.getString('ff_UsuarioAtualAgenciaNome') ??
              _UsuarioAtualAgenciaNome;
    });
    _safeInit(() {
      _UsuarioAtualEmail =
          prefs.getString('ff_UsuarioAtualEmail') ?? _UsuarioAtualEmail;
    });
    _safeInit(() {
      _CountFaccoes = prefs.getInt('ff_CountFaccoes') ?? _CountFaccoes;
    });
    _safeInit(() {
      _CountMembros = prefs.getInt('ff_CountMembros') ?? _CountMembros;
    });
    _safeInit(() {
      _CountUsuarios = prefs.getInt('ff_CountUsuarios') ?? _CountUsuarios;
    });
    _safeInit(() {
      _CountUsuariosAtivos =
          prefs.getInt('ff_CountUsuariosAtivos') ?? _CountUsuariosAtivos;
    });
    _safeInit(() {
      _CountMaps = prefs.getInt('ff_CountMaps') ?? _CountMaps;
    });
    _safeInit(() {
      _UsuariosImagePathLight = prefs.getString('ff_UsuariosImagePathLight') ??
          _UsuariosImagePathLight;
    });
    _safeInit(() {
      _UsuariosImagePathDark =
          prefs.getString('ff_UsuariosImagePathDark') ?? _UsuariosImagePathDark;
    });
    _safeInit(() {
      _MembrosImagePathLight =
          prefs.getString('ff_MembrosImagePathLight') ?? _MembrosImagePathLight;
    });
    _safeInit(() {
      _MembrosImagePathDark =
          prefs.getString('ff_MembrosImagePathDark') ?? _MembrosImagePathDark;
    });
    _safeInit(() {
      _FaccoesImagePathLight =
          prefs.getString('ff_FaccoesImagePathLight') ?? _FaccoesImagePathLight;
    });
    _safeInit(() {
      _FaccoesImagePathDark =
          prefs.getString('ff_FaccoesImagePathDark') ?? _FaccoesImagePathDark;
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

  int _UsuarioAtualTipoUsuarioId = 0;
  int get UsuarioAtualTipoUsuarioId => _UsuarioAtualTipoUsuarioId;
  set UsuarioAtualTipoUsuarioId(int value) {
    _UsuarioAtualTipoUsuarioId = value;
    prefs.setInt('ff_UsuarioAtualTipoUsuarioId', value);
  }

  String _UsuarioAtualNomeCompleto = '';
  String get UsuarioAtualNomeCompleto => _UsuarioAtualNomeCompleto;
  set UsuarioAtualNomeCompleto(String value) {
    _UsuarioAtualNomeCompleto = value;
    prefs.setString('ff_UsuarioAtualNomeCompleto', value);
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

  String _UsuarioAtualTipoUsuarioNome = '';
  String get UsuarioAtualTipoUsuarioNome => _UsuarioAtualTipoUsuarioNome;
  set UsuarioAtualTipoUsuarioNome(String value) {
    _UsuarioAtualTipoUsuarioNome = value;
    prefs.setString('ff_UsuarioAtualTipoUsuarioNome', value);
  }

  String _UsuarioAtualAgenciaNome = '';
  String get UsuarioAtualAgenciaNome => _UsuarioAtualAgenciaNome;
  set UsuarioAtualAgenciaNome(String value) {
    _UsuarioAtualAgenciaNome = value;
    prefs.setString('ff_UsuarioAtualAgenciaNome', value);
  }

  String _UsuarioAtualEmail = '';
  String get UsuarioAtualEmail => _UsuarioAtualEmail;
  set UsuarioAtualEmail(String value) {
    _UsuarioAtualEmail = value;
    prefs.setString('ff_UsuarioAtualEmail', value);
  }

  int _CountFaccoes = 0;
  int get CountFaccoes => _CountFaccoes;
  set CountFaccoes(int value) {
    _CountFaccoes = value;
    prefs.setInt('ff_CountFaccoes', value);
  }

  int _CountMembros = 0;
  int get CountMembros => _CountMembros;
  set CountMembros(int value) {
    _CountMembros = value;
    prefs.setInt('ff_CountMembros', value);
  }

  int _CountUsuarios = 0;
  int get CountUsuarios => _CountUsuarios;
  set CountUsuarios(int value) {
    _CountUsuarios = value;
    prefs.setInt('ff_CountUsuarios', value);
  }

  int _CountUsuariosAtivos = 0;
  int get CountUsuariosAtivos => _CountUsuariosAtivos;
  set CountUsuariosAtivos(int value) {
    _CountUsuariosAtivos = value;
    prefs.setInt('ff_CountUsuariosAtivos', value);
  }

  int _CountMaps = 0;
  int get CountMaps => _CountMaps;
  set CountMaps(int value) {
    _CountMaps = value;
    prefs.setInt('ff_CountMaps', value);
  }

  bool _UsuarioLiberado = false;
  bool get UsuarioLiberado => _UsuarioLiberado;
  set UsuarioLiberado(bool value) {
    _UsuarioLiberado = value;
  }

  int _ParAgenciaId = 0;
  int get ParAgenciaId => _ParAgenciaId;
  set ParAgenciaId(int value) {
    _ParAgenciaId = value;
  }

  String _UsuariosImagePathLight =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mondaha-be2293/assets/79wfovohiaq7/account_circle_96dp_99999_FILL0_wght400_GRAD0_opsz48.png';
  String get UsuariosImagePathLight => _UsuariosImagePathLight;
  set UsuariosImagePathLight(String value) {
    _UsuariosImagePathLight = value;
    prefs.setString('ff_UsuariosImagePathLight', value);
  }

  String _UsuariosImagePathDark =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mondaha-be2293/assets/z72pv79eas1j/account_circle_96dp_E8EAED_FILL0_wght400_GRAD0_opsz48.png';
  String get UsuariosImagePathDark => _UsuariosImagePathDark;
  set UsuariosImagePathDark(String value) {
    _UsuariosImagePathDark = value;
    prefs.setString('ff_UsuariosImagePathDark', value);
  }

  String _MembrosImagePathLight =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mondaha-be2293/assets/rgxzhoyu6nbx/groups_96dp_99999_FILL0_wght400_GRAD0_opsz48.png';
  String get MembrosImagePathLight => _MembrosImagePathLight;
  set MembrosImagePathLight(String value) {
    _MembrosImagePathLight = value;
    prefs.setString('ff_MembrosImagePathLight', value);
  }

  String _MembrosImagePathDark =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mondaha-be2293/assets/3b2gr4avkyl7/groups_96dp_E8EAED_FILL0_wght400_GRAD0_opsz48.png';
  String get MembrosImagePathDark => _MembrosImagePathDark;
  set MembrosImagePathDark(String value) {
    _MembrosImagePathDark = value;
    prefs.setString('ff_MembrosImagePathDark', value);
  }

  String _FaccoesImagePathLight =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mondaha-be2293/assets/gqts8womzdbd/account_tree_96dp_99999_FILL0_wght400_GRAD0_opsz48.png';
  String get FaccoesImagePathLight => _FaccoesImagePathLight;
  set FaccoesImagePathLight(String value) {
    _FaccoesImagePathLight = value;
    prefs.setString('ff_FaccoesImagePathLight', value);
  }

  String _FaccoesImagePathDark =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/mondaha-be2293/assets/tbkdcsazoiiq/account_tree_96dp_E8EAED_FILL0_wght400_GRAD0_opsz48.png';
  String get FaccoesImagePathDark => _FaccoesImagePathDark;
  set FaccoesImagePathDark(String value) {
    _FaccoesImagePathDark = value;
    prefs.setString('ff_FaccoesImagePathDark', value);
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
