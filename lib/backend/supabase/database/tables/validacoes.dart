import '../database.dart';

class ValidacoesTable extends SupabaseTable<ValidacoesRow> {
  @override
  String get tableName => 'validacoes';

  @override
  ValidacoesRow createRow(Map<String, dynamic> data) => ValidacoesRow(data);
}

class ValidacoesRow extends SupabaseDataRow {
  ValidacoesRow(super.data);

  @override
  SupabaseTable get table => ValidacoesTable();

  int get validacaoId => getField<int>('validacao_id')!;
  set validacaoId(int value) => setField<int>('validacao_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get grauCerteza => getField<int>('grau_certeza');
  set grauCerteza(int? value) => setField<int>('grau_certeza', value);
}
