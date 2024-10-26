import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
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
      _AppStateProcedimentos = LoggableList(
        prefs
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
            _AppStateProcedimentos,
      );
    });
    _safeInit(() {
      _AppStateProcessos = LoggableList(
        prefs
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
            _AppStateProcessos,
      );
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
    debugLogAppState(this);
  }

  int _EDITFACCAOID = 0;
  int get EDITFACCAOID => _EDITFACCAOID;
  set EDITFACCAOID(int value) {
    _EDITFACCAOID = value;

    debugLogAppState(this);
  }

  late LoggableList<DataTypesProcedimentosStruct> _AppStateProcedimentos =
      LoggableList([]);
  List<DataTypesProcedimentosStruct> get AppStateProcedimentos =>
      _AppStateProcedimentos?..logger = () => debugLogAppState(this);
  set AppStateProcedimentos(List<DataTypesProcedimentosStruct> value) {
    if (value != null) {
      _AppStateProcedimentos = LoggableList(value);
    }

    prefs.setStringList(
        'ff_AppStateProcedimentos', value.map((x) => x.serialize()).toList());
    debugLogAppState(this);
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

  late LoggableList<DataTypesProcessosStruct> _AppStateProcessos =
      LoggableList([]);
  List<DataTypesProcessosStruct> get AppStateProcessos =>
      _AppStateProcessos?..logger = () => debugLogAppState(this);
  set AppStateProcessos(List<DataTypesProcessosStruct> value) {
    if (value != null) {
      _AppStateProcessos = LoggableList(value);
    }

    prefs.setStringList(
        'ff_AppStateProcessos', value.map((x) => x.serialize()).toList());
    debugLogAppState(this);
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

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'AGENCIA': debugSerializeParam(
          AGENCIA,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/mondaha-be2293?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChkKEwoHQUdFTkNJQRIIcng4bzRsMDFyAggDWgdBR0VOQ0lB',
          name: 'String',
          nullable: false,
        ),
        'EDITFACCAOID': debugSerializeParam(
          EDITFACCAOID,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/mondaha-be2293?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch4KGAoMRURJVEZBQ0NBT0lEEgh5eTlwbXdjMnICCAFaDEVESVRGQUNDQU9JRA==',
          name: 'int',
          nullable: false,
        ),
        'AppStateProcedimentos': debugSerializeParam(
          AppStateProcedimentos,
          ParamType.DataStruct,
          isList: true,
          link:
              'https://app.flutterflow.io/project/mondaha-be2293?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CkMKIQoVQXBwU3RhdGVQcm9jZWRpbWVudG9zEghrcnp2eDY5NnIeEgIIFCoYEhYKDXByb2NlZGltZW50b3MSBWJocXU2WhVBcHBTdGF0ZVByb2NlZGltZW50b3M=',
          name: 'DataTypesProcedimentos',
          nullable: false,
        ),
        'AppStateProcessos': debugSerializeParam(
          AppStateProcessos,
          ParamType.DataStruct,
          isList: true,
          link:
              'https://app.flutterflow.io/project/mondaha-be2293?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CjsKHQoRQXBwU3RhdGVQcm9jZXNzb3MSCHk5MHRvdHU3choSAggUKhQSEgoJcHJvY2Vzc29zEgU0cDl4dloRQXBwU3RhdGVQcm9jZXNzb3M=',
          name: 'DataTypesProcessos',
          nullable: false,
        )
      };
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
