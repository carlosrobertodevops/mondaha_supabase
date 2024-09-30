import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
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
      _telefone = prefs.getStringList('ff_telefone') ?? _telefone;
    });
    _safeInit(() {
      _data = prefs.getStringList('ff_data') ?? _data;
    });
    _safeInit(() {
      _estados = prefs.getBool('ff_estados') ?? _estados;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _mascara = '';
  String get mascara => _mascara;
  set mascara(String value) {
    _mascara = value;
  }

  List<String> _telefone = [];
  List<String> get telefone => _telefone;
  set telefone(List<String> value) {
    _telefone = value;
    prefs.setStringList('ff_telefone', value);
  }

  void addToTelefone(String value) {
    telefone.add(value);
    prefs.setStringList('ff_telefone', _telefone);
  }

  void removeFromTelefone(String value) {
    telefone.remove(value);
    prefs.setStringList('ff_telefone', _telefone);
  }

  void removeAtIndexFromTelefone(int index) {
    telefone.removeAt(index);
    prefs.setStringList('ff_telefone', _telefone);
  }

  void updateTelefoneAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    telefone[index] = updateFn(_telefone[index]);
    prefs.setStringList('ff_telefone', _telefone);
  }

  void insertAtIndexInTelefone(int index, String value) {
    telefone.insert(index, value);
    prefs.setStringList('ff_telefone', _telefone);
  }

  List<String> _data = [];
  List<String> get data => _data;
  set data(List<String> value) {
    _data = value;
    prefs.setStringList('ff_data', value);
  }

  void addToData(String value) {
    data.add(value);
    prefs.setStringList('ff_data', _data);
  }

  void removeFromData(String value) {
    data.remove(value);
    prefs.setStringList('ff_data', _data);
  }

  void removeAtIndexFromData(int index) {
    data.removeAt(index);
    prefs.setStringList('ff_data', _data);
  }

  void updateDataAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    data[index] = updateFn(_data[index]);
    prefs.setStringList('ff_data', _data);
  }

  void insertAtIndexInData(int index, String value) {
    data.insert(index, value);
    prefs.setStringList('ff_data', _data);
  }

  bool _estados = false;
  bool get estados => _estados;
  set estados(bool value) {
    _estados = value;
    prefs.setBool('ff_estados', value);
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
