// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProcessosStruct extends BaseStruct {
  ProcessosStruct({
    int? membroId,
    String? noAcaoPenal,
    int? varaId,
    int? situacaoJuridicaId,
    int? regimeId,
    int? situacaoReuId,
  })  : _membroId = membroId,
        _noAcaoPenal = noAcaoPenal,
        _varaId = varaId,
        _situacaoJuridicaId = situacaoJuridicaId,
        _regimeId = regimeId,
        _situacaoReuId = situacaoReuId;

  // "membro_id" field.
  int? _membroId;
  int get membroId => _membroId ?? 0;
  set membroId(int? val) => _membroId = val;

  void incrementMembroId(int amount) => membroId = membroId + amount;

  bool hasMembroId() => _membroId != null;

  // "no_acao_penal" field.
  String? _noAcaoPenal;
  String get noAcaoPenal => _noAcaoPenal ?? '';
  set noAcaoPenal(String? val) => _noAcaoPenal = val;

  bool hasNoAcaoPenal() => _noAcaoPenal != null;

  // "vara_id" field.
  int? _varaId;
  int get varaId => _varaId ?? 0;
  set varaId(int? val) => _varaId = val;

  void incrementVaraId(int amount) => varaId = varaId + amount;

  bool hasVaraId() => _varaId != null;

  // "situacao_juridica_id" field.
  int? _situacaoJuridicaId;
  int get situacaoJuridicaId => _situacaoJuridicaId ?? 0;
  set situacaoJuridicaId(int? val) => _situacaoJuridicaId = val;

  void incrementSituacaoJuridicaId(int amount) =>
      situacaoJuridicaId = situacaoJuridicaId + amount;

  bool hasSituacaoJuridicaId() => _situacaoJuridicaId != null;

  // "regime_id" field.
  int? _regimeId;
  int get regimeId => _regimeId ?? 0;
  set regimeId(int? val) => _regimeId = val;

  void incrementRegimeId(int amount) => regimeId = regimeId + amount;

  bool hasRegimeId() => _regimeId != null;

  // "situacao_reu_id" field.
  int? _situacaoReuId;
  int get situacaoReuId => _situacaoReuId ?? 0;
  set situacaoReuId(int? val) => _situacaoReuId = val;

  void incrementSituacaoReuId(int amount) =>
      situacaoReuId = situacaoReuId + amount;

  bool hasSituacaoReuId() => _situacaoReuId != null;

  static ProcessosStruct fromMap(Map<String, dynamic> data) => ProcessosStruct(
        membroId: castToType<int>(data['membro_id']),
        noAcaoPenal: data['no_acao_penal'] as String?,
        varaId: castToType<int>(data['vara_id']),
        situacaoJuridicaId: castToType<int>(data['situacao_juridica_id']),
        regimeId: castToType<int>(data['regime_id']),
        situacaoReuId: castToType<int>(data['situacao_reu_id']),
      );

  static ProcessosStruct? maybeFromMap(dynamic data) => data is Map
      ? ProcessosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'membro_id': _membroId,
        'no_acao_penal': _noAcaoPenal,
        'vara_id': _varaId,
        'situacao_juridica_id': _situacaoJuridicaId,
        'regime_id': _regimeId,
        'situacao_reu_id': _situacaoReuId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'membro_id': serializeParam(
          _membroId,
          ParamType.int,
        ),
        'no_acao_penal': serializeParam(
          _noAcaoPenal,
          ParamType.String,
        ),
        'vara_id': serializeParam(
          _varaId,
          ParamType.int,
        ),
        'situacao_juridica_id': serializeParam(
          _situacaoJuridicaId,
          ParamType.int,
        ),
        'regime_id': serializeParam(
          _regimeId,
          ParamType.int,
        ),
        'situacao_reu_id': serializeParam(
          _situacaoReuId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProcessosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProcessosStruct(
        membroId: deserializeParam(
          data['membro_id'],
          ParamType.int,
          false,
        ),
        noAcaoPenal: deserializeParam(
          data['no_acao_penal'],
          ParamType.String,
          false,
        ),
        varaId: deserializeParam(
          data['vara_id'],
          ParamType.int,
          false,
        ),
        situacaoJuridicaId: deserializeParam(
          data['situacao_juridica_id'],
          ParamType.int,
          false,
        ),
        regimeId: deserializeParam(
          data['regime_id'],
          ParamType.int,
          false,
        ),
        situacaoReuId: deserializeParam(
          data['situacao_reu_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProcessosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProcessosStruct &&
        membroId == other.membroId &&
        noAcaoPenal == other.noAcaoPenal &&
        varaId == other.varaId &&
        situacaoJuridicaId == other.situacaoJuridicaId &&
        regimeId == other.regimeId &&
        situacaoReuId == other.situacaoReuId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        membroId,
        noAcaoPenal,
        varaId,
        situacaoJuridicaId,
        regimeId,
        situacaoReuId
      ]);
}

ProcessosStruct createProcessosStruct({
  int? membroId,
  String? noAcaoPenal,
  int? varaId,
  int? situacaoJuridicaId,
  int? regimeId,
  int? situacaoReuId,
}) =>
    ProcessosStruct(
      membroId: membroId,
      noAcaoPenal: noAcaoPenal,
      varaId: varaId,
      situacaoJuridicaId: situacaoJuridicaId,
      regimeId: regimeId,
      situacaoReuId: situacaoReuId,
    );
