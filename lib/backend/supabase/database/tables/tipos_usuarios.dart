import '../database.dart';

class TiposUsuariosTable extends SupabaseTable<TiposUsuariosRow> {
  @override
  String get tableName => 'tipos_usuarios';

  @override
  TiposUsuariosRow createRow(Map<String, dynamic> data) =>
      TiposUsuariosRow(data);
}

class TiposUsuariosRow extends SupabaseDataRow {
  TiposUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TiposUsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get nivel => getField<int>('nivel');
  set nivel(int? value) => setField<int>('nivel', value);
}
