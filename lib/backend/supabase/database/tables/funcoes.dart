import '../database.dart';

class FuncoesTable extends SupabaseTable<FuncoesRow> {
  @override
  String get tableName => 'funcoes';

  @override
  FuncoesRow createRow(Map<String, dynamic> data) => FuncoesRow(data);
}

class FuncoesRow extends SupabaseDataRow {
  FuncoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FuncoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get grauHierarquico => getField<int>('grau_hierarquico');
  set grauHierarquico(int? value) => setField<int>('grau_hierarquico', value);
}
