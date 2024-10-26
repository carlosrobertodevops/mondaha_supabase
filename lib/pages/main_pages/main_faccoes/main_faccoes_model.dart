import '/backend/supabase/supabase.dart';
import '/components/dropdowns/dropdown_faccao_edit/dropdown_faccao_edit_widget.dart';
import '/components/modals/modal_add_faccao/modal_add_faccao_widget.dart';
import '/components/modals/modal_command_palette/modal_command_palette_widget.dart';
import '/components/navs/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_faccoes_widget.dart' show MainFaccoesWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainFaccoesModel extends FlutterFlowModel<MainFaccoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for web_nav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    webNavModel.dispose();
    tabBarController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=main_faccoes',
            name: 'int',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'webNavModel (web_nav)': webNavModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=main_faccoes',
        searchReference: 'reference=OgxtYWluX2ZhY2NvZXNQAVoMbWFpbl9mYWNjb2Vz',
        widgetClassName: 'main_faccoes',
      );
}
