import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _AppStateProcedimentos = prefs
              .getStringList('ff_AppStateProcedimentos')
              ?.map((x) {
                try {
                  return DataTypesProcedimentosStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AppStateProcedimentos;
    });
    _safeInit(() {
      _AppStateProcessos = prefs
              .getStringList('ff_AppStateProcessos')
              ?.map((x) {
                try {
                  return DataTypesProcessosStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AppStateProcessos;
    });
    _safeInit(() {
      _webbarminimal = prefs.getBool('ff_webbarminimal') ?? _webbarminimal;
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

  List<DataTypesProcedimentosStruct> _AppStateProcedimentos = [];
  List<DataTypesProcedimentosStruct> get AppStateProcedimentos =>
      _AppStateProcedimentos;
  set AppStateProcedimentos(List<DataTypesProcedimentosStruct> value) {
    _AppStateProcedimentos = value;
    prefs.setStringList(
        'ff_AppStateProcedimentos', value.map((x) => x.serialize()).toList());
  }

  void addToAppStateProcedimentos(DataTypesProcedimentosStruct value) {
    AppStateProcedimentos.add(value);
    prefs.setStringList('ff_AppStateProcedimentos',
        _AppStateProcedimentos.map((x) => x.serialize()).toList());
  }

  void removeFromAppStateProcedimentos(DataTypesProcedimentosStruct value) {
    AppStateProcedimentos.remove(value);
    prefs.setStringList('ff_AppStateProcedimentos',
        _AppStateProcedimentos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAppStateProcedimentos(int index) {
    AppStateProcedimentos.removeAt(index);
    prefs.setStringList('ff_AppStateProcedimentos',
        _AppStateProcedimentos.map((x) => x.serialize()).toList());
  }

  void updateAppStateProcedimentosAtIndex(
    int index,
    DataTypesProcedimentosStruct Function(DataTypesProcedimentosStruct)
        updateFn,
  ) {
    AppStateProcedimentos[index] = updateFn(_AppStateProcedimentos[index]);
    prefs.setStringList('ff_AppStateProcedimentos',
        _AppStateProcedimentos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAppStateProcedimentos(
      int index, DataTypesProcedimentosStruct value) {
    AppStateProcedimentos.insert(index, value);
    prefs.setStringList('ff_AppStateProcedimentos',
        _AppStateProcedimentos.map((x) => x.serialize()).toList());
  }

  List<DataTypesProcessosStruct> _AppStateProcessos = [];
  List<DataTypesProcessosStruct> get AppStateProcessos => _AppStateProcessos;
  set AppStateProcessos(List<DataTypesProcessosStruct> value) {
    _AppStateProcessos = value;
    prefs.setStringList(
        'ff_AppStateProcessos', value.map((x) => x.serialize()).toList());
  }

  void addToAppStateProcessos(DataTypesProcessosStruct value) {
    AppStateProcessos.add(value);
    prefs.setStringList('ff_AppStateProcessos',
        _AppStateProcessos.map((x) => x.serialize()).toList());
  }

  void removeFromAppStateProcessos(DataTypesProcessosStruct value) {
    AppStateProcessos.remove(value);
    prefs.setStringList('ff_AppStateProcessos',
        _AppStateProcessos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAppStateProcessos(int index) {
    AppStateProcessos.removeAt(index);
    prefs.setStringList('ff_AppStateProcessos',
        _AppStateProcessos.map((x) => x.serialize()).toList());
  }

  void updateAppStateProcessosAtIndex(
    int index,
    DataTypesProcessosStruct Function(DataTypesProcessosStruct) updateFn,
  ) {
    AppStateProcessos[index] = updateFn(_AppStateProcessos[index]);
    prefs.setStringList('ff_AppStateProcessos',
        _AppStateProcessos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAppStateProcessos(
      int index, DataTypesProcessosStruct value) {
    AppStateProcessos.insert(index, value);
    prefs.setStringList('ff_AppStateProcessos',
        _AppStateProcessos.map((x) => x.serialize()).toList());
  }

  bool _webbarminimal = false;
  bool get webbarminimal => _webbarminimal;
  set webbarminimal(bool value) {
    _webbarminimal = value;
    prefs.setBool('ff_webbarminimal', value);
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
