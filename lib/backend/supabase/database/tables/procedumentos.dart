import '../database.dart';

class ProcedumentosTable extends SupabaseTable<ProcedumentosRow> {
  @override
  String get tableName => 'procedumentos';

  @override
  ProcedumentosRow createRow(Map<String, dynamic> data) =>
      ProcedumentosRow(data);
}

class ProcedumentosRow extends SupabaseDataRow {
  ProcedumentosRow(super.data);

  @override
  SupabaseTable get table => ProcedumentosTable();

  int get procedimentoId => getField<int>('procedimento_id')!;
  set procedimentoId(int value) => setField<int>('procedimento_id', value);

  int? get membrosId => getField<int>('membros_id');
  set membrosId(int? value) => setField<int>('membros_id', value);

  String? get procedimentoNo => getField<String>('procedimento_no');
  set procedimentoNo(String? value) =>
      setField<String>('procedimento_no', value);

  String? get unidade => getField<String>('unidade');
  set unidade(String? value) => setField<String>('unidade', value);

  String? get procedimentoTipo => getField<String>('procedimento_tipo');
  set procedimentoTipo(String? value) =>
      setField<String>('procedimento_tipo', value);

  String? get crime => getField<String>('crime');
  set crime(String? value) => setField<String>('crime', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);
}
