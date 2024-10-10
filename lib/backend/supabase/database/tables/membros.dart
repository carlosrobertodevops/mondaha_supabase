import '../database.dart';

class MembrosTable extends SupabaseTable<MembrosRow> {
  @override
  String get tableName => 'membros';

  @override
  MembrosRow createRow(Map<String, dynamic> data) => MembrosRow(data);
}

class MembrosRow extends SupabaseDataRow {
  MembrosRow(super.data);

  @override
  SupabaseTable get table => MembrosTable();

  int get membroId => getField<int>('membro_id')!;
  set membroId(int value) => setField<int>('membro_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  List<String> get alcunha => getListField<String>('alcunha');
  set alcunha(List<String>? value) => setListField<String>('alcunha', value);

  int? get faccaoId => getField<int>('faccao_id');
  set faccaoId(int? value) => setField<int>('faccao_id', value);

  List<String> get fotosPath => getListField<String>('fotos_path');
  set fotosPath(List<String>? value) =>
      setListField<String>('fotos_path', value);

  List<String> get tatuagensPath => getListField<String>('tatuagens_path');
  set tatuagensPath(List<String>? value) =>
      setListField<String>('tatuagens_path', value);

  int? get funcaoId => getField<int>('funcao_id');
  set funcaoId(int? value) => setField<int>('funcao_id', value);

  int? get nacionalidade => getField<int>('nacionalidade');
  set nacionalidade(int? value) => setField<int>('nacionalidade', value);

  String? get naturalidade => getField<String>('naturalidade');
  set naturalidade(String? value) => setField<String>('naturalidade', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get identidade => getField<String>('identidade');
  set identidade(String? value) => setField<String>('identidade', value);

  double? get nivelInstruacao => getField<double>('nivel_instruacao');
  set nivelInstruacao(double? value) =>
      setField<double>('nivel_instruacao', value);

  String? get filiacaoMae => getField<String>('filiacao_mae');
  set filiacaoMae(String? value) => setField<String>('filiacao_mae', value);

  String? get filiacaoPai => getField<String>('filiacao_pai');
  set filiacaoPai(String? value) => setField<String>('filiacao_pai', value);

  int? get situacaoMae => getField<int>('situacao_mae');
  set situacaoMae(int? value) => setField<int>('situacao_mae', value);

  int? get situacaoPai => getField<int>('situacao_pai');
  set situacaoPai(int? value) => setField<int>('situacao_pai', value);

  String? get historico => getField<String>('historico');
  set historico(String? value) => setField<String>('historico', value);

  int? get cargoId => getField<int>('cargo_id');
  set cargoId(int? value) => setField<int>('cargo_id', value);

  int? get cargoAntId => getField<int>('cargo_ant_id');
  set cargoAntId(int? value) => setField<int>('cargo_ant_id', value);

  int? get funcaoAntId => getField<int>('funcao_ant_id');
  set funcaoAntId(int? value) => setField<int>('funcao_ant_id', value);

  String? get batismo => getField<String>('batismo');
  set batismo(String? value) => setField<String>('batismo', value);

  String? get padrinho => getField<String>('padrinho');
  set padrinho(String? value) => setField<String>('padrinho', value);

  List<int> get faccaoIntegrou => getListField<int>('faccao_integrou');
  set faccaoIntegrou(List<int>? value) =>
      setListField<int>('faccao_integrou', value);

  List<int> get facaoAliada => getListField<int>('facao_aliada');
  set facaoAliada(List<int>? value) => setListField<int>('facao_aliada', value);

  List<int> get faccaoInimiga => getListField<int>('faccao_inimiga');
  set faccaoInimiga(List<int>? value) =>
      setListField<int>('faccao_inimiga', value);

  String? get faccaoSenha => getField<String>('faccao_senha');
  set faccaoSenha(String? value) => setField<String>('faccao_senha', value);

  List<String> get membroEndereco => getListField<String>('membro_endereco');
  set membroEndereco(List<String>? value) =>
      setListField<String>('membro_endereco', value);
}
