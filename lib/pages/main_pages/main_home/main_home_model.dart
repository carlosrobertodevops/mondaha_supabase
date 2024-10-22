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
