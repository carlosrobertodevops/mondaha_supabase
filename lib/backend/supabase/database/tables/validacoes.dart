import '../database.dart';

class ValidacoesTable extends SupabaseTable<ValidacoesRow> {
  @override
  String get tableName => 'validacoes';

  @override
  ValidacoesRow createRow(Map<String, dynamic> data) => ValidacoesRow(data);
}

class ValidacoesRow extends SupabaseDataRow {
  ValidacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ValidacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get grauCerteza => getField<int>('grau_certeza');
  set grauCerteza(int? value) => setField<int>('grau_certeza', value);
}
