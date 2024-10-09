import '../database.dart';

class ProcessosTable extends SupabaseTable<ProcessosRow> {
  @override
  String get tableName => 'processos';

  @override
  ProcessosRow createRow(Map<String, dynamic> data) => ProcessosRow(data);
}

class ProcessosRow extends SupabaseDataRow {
  ProcessosRow(super.data);

  @override
  SupabaseTable get table => ProcessosTable();

  int get processoId => getField<int>('processo_id')!;
  set processoId(int value) => setField<int>('processo_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get membroId => getField<int>('membro_id');
  set membroId(int? value) => setField<int>('membro_id', value);

  String? get acaoPenalNo => getField<String>('acao_penal_no');
  set acaoPenalNo(String? value) => setField<String>('acao_penal_no', value);

  int? get varaId => getField<int>('vara_id');
  set varaId(int? value) => setField<int>('vara_id', value);

  int? get situacoJuridicaId => getField<int>('situaco_juridica_id');
  set situacoJuridicaId(int? value) =>
      setField<int>('situaco_juridica_id', value);

  int? get regime => getField<int>('regime');
  set regime(int? value) => setField<int>('regime', value);

  int? get situacaoReu => getField<int>('situacao_reu');
  set situacaoReu(int? value) => setField<int>('situacao_reu', value);
}
