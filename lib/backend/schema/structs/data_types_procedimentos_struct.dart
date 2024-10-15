// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTypesProcedimentosStruct extends BaseStruct {
  DataTypesProcedimentosStruct({
    int? membroId,
    String? procedimentoNo,
    String? unidadeId,
    int? procedimentoTipoId,
    int? crimeId,
    DateTime? data,
  })  : _membroId = membroId,
        _procedimentoNo = procedimentoNo,
        _unidadeId = unidadeId,
        _procedimentoTipoId = procedimentoTipoId,
        _crimeId = crimeId,
        _data = data;

  // "membro_id" field.
  int? _membroId;
  int get membroId => _membroId ?? 0;
  set membroId(int? val) => _membroId = val;

  void incrementMembroId(int amount) => membroId = membroId + amount;

  bool hasMembroId() => _membroId != null;

  // "procedimento_no" field.
  String? _procedimentoNo;
  String get procedimentoNo => _procedimentoNo ?? '';
  set procedimentoNo(String? val) => _procedimentoNo = val;

  bool hasProcedimentoNo() => _procedimentoNo != null;

  // "unidade_id" field.
  String? _unidadeId;
  String get unidadeId => _unidadeId ?? '';
  set unidadeId(String? val) => _unidadeId = val;

  bool hasUnidadeId() => _unidadeId != null;

  // "procedimento_tipo_id" field.
  int? _procedimentoTipoId;
  int get procedimentoTipoId => _procedimentoTipoId ?? 0;
  set procedimentoTipoId(int? val) => _procedimentoTipoId = val;

  void incrementProcedimentoTipoId(int amount) =>
      procedimentoTipoId = procedimentoTipoId + amount;

  bool hasProcedimentoTipoId() => _procedimentoTipoId != null;

  // "crime_id" field.
  int? _crimeId;
  int get crimeId => _crimeId ?? 0;
  set crimeId(int? val) => _crimeId = val;

  void incrementCrimeId(int amount) => crimeId = crimeId + amount;

  bool hasCrimeId() => _crimeId != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;

  bool hasData() => _data != null;

  static DataTypesProcedimentosStruct fromMap(Map<String, dynamic> data) =>
      DataTypesProcedimentosStruct(
        membroId: castToType<int>(data['membro_id']),
        procedimentoNo: data['procedimento_no'] as String?,
        unidadeId: data['unidade_id'] as String?,
        procedimentoTipoId: castToType<int>(data['procedimento_tipo_id']),
        crimeId: castToType<int>(data['crime_id']),
        data: data['data'] as DateTime?,
      );

  static DataTypesProcedimentosStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTypesProcedimentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'membro_id': _membroId,
        'procedimento_no': _procedimentoNo,
        'unidade_id': _unidadeId,
        'procedimento_tipo_id': _procedimentoTipoId,
        'crime_id': _crimeId,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'membro_id': serializeParam(
          _membroId,
          ParamType.int,
        ),
        'procedimento_no': serializeParam(
          _procedimentoNo,
          ParamType.String,
        ),
        'unidade_id': serializeParam(
          _unidadeId,
          ParamType.String,
        ),
        'procedimento_tipo_id': serializeParam(
          _procedimentoTipoId,
          ParamType.int,
        ),
        'crime_id': serializeParam(
          _crimeId,
          ParamType.int,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DataTypesProcedimentosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DataTypesProcedimentosStruct(
        membroId: deserializeParam(
          data['membro_id'],
          ParamType.int,
          false,
        ),
        procedimentoNo: deserializeParam(
          data['procedimento_no'],
          ParamType.String,
          false,
        ),
        unidadeId: deserializeParam(
          data['unidade_id'],
          ParamType.String,
          false,
        ),
        procedimentoTipoId: deserializeParam(
          data['procedimento_tipo_id'],
          ParamType.int,
          false,
        ),
        crimeId: deserializeParam(
          data['crime_id'],
          ParamType.int,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DataTypesProcedimentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataTypesProcedimentosStruct &&
        membroId == other.membroId &&
        procedimentoNo == other.procedimentoNo &&
        unidadeId == other.unidadeId &&
        procedimentoTipoId == other.procedimentoTipoId &&
        crimeId == other.crimeId &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [membroId, procedimentoNo, unidadeId, procedimentoTipoId, crimeId, data]);
}

DataTypesProcedimentosStruct createDataTypesProcedimentosStruct({
  int? membroId,
  String? procedimentoNo,
  String? unidadeId,
  int? procedimentoTipoId,
  int? crimeId,
  DateTime? data,
}) =>
    DataTypesProcedimentosStruct(
      membroId: membroId,
      procedimentoNo: procedimentoNo,
      unidadeId: unidadeId,
      procedimentoTipoId: procedimentoTipoId,
      crimeId: crimeId,
      data: data,
    );
