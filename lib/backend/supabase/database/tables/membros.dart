import '../database.dart';

class MembrosTable extends SupabaseTable<MembrosRow> {
  @override
  String get tableName => 'membros';

  @override
  MembrosRow createRow(Map<String, dynamic> data) => MembrosRow(data);
}

class MembrosRow extends SupabaseDataRow {
  MembrosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MembrosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  List<String> get vulgo => getListField<String>('vulgo');
  set vulgo(List<String>? value) => setListField<String>('vulgo', value);

  int? get faccaoId => getField<int>('faccao_id');
  set faccaoId(int? value) => setField<int>('faccao_id', value);

  List<String> get fotosPath => getListField<String>('fotos_path');
  set fotosPath(List<String>? value) =>
      setListField<String>('fotos_path', value);

  List<String> get tatuagensPath => getListField<String>('tatuagens_path');
  set tatuagensPath(List<String>? value) =>
      setListField<String>('tatuagens_path', value);
}
