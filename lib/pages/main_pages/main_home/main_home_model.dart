import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/navs/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_home_widget.dart' show MainHomeWidget;
import 'package:flutter/material.dart';

class MainHomeModel extends FlutterFlowModel<MainHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_home widget.
  List<UsuariosRow>? outputQueryUsuarios;
  // Stores action output result for [Backend Call - Query Rows] action in main_home widget.
  List<TiposUsuariosRow>? outputQueryTipoUsuarios;
  // Stores action output result for [Backend Call - Query Rows] action in main_home widget.
  List<AgenciasRow>? outputQueryAgenciaNome;
  // Stores action output result for [Backend Call - API (CountUsuariosView)] action in main_home widget.
  ApiCallResponse? apiResultahoUsuarios;
  // Stores action output result for [Backend Call - API (CountMembrosView)] action in main_home widget.
  ApiCallResponse? apiResultMembros;
  // Stores action output result for [Backend Call - API (CountFaccoesView )] action in main_home widget.
  ApiCallResponse? apiResultFaccoes;
  // Stores action output result for [Backend Call - API (CountUsuariosAtivosView )] action in main_home widget.
  ApiCallResponse? apiResultUsuariosAtivos;
  // Model for web_nav component.
  late WebNavModel webNavModel;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    webNavModel.dispose();
  }
}
