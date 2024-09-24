import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userUidd => getField<String>('user_uidd');
  set userUidd(String? value) => setField<String>('user_uidd', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  int? get agenciaId => getField<int>('agencia_id');
  set agenciaId(int? value) => setField<int>('agencia_id', value);

  int? get tipoUsuarioId => getField<int>('tipo_usuario_id');
  set tipoUsuarioId(int? value) => setField<int>('tipo_usuario_id', value);

  String? get fotoPath => getField<String>('foto_path');
  set fotoPath(String? value) => setField<String>('foto_path', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get ultimaAtividade => getField<DateTime>('ultima_atividade');
  set ultimaAtividade(DateTime? value) =>
      setField<DateTime>('ultima_atividade', value);
}
