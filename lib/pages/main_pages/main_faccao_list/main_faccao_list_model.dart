import '/backend/supabase/supabase.dart';
import '/components/dropdown_faccao_edit/dropdown_faccao_edit_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/components/modals/modal_add_faccao/modal_add_faccao_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_faccao_list_widget.dart' show MainFaccaoListWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainFaccaoListModel extends FlutterFlowModel<MainFaccaoListWidget> {
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
    webNavModel = createModel(context, () => WebNavModel()..parentModel = this);

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    webNavModel.dispose();
    tabBarController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'fuccaoid': debugSerializeParam(
            widget?.fuccaoid,
            ParamType.SupabaseRow,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=main_faccao_list',
            searchReference:
                'reference=SicKEgoIZnVjY2FvaWQSBjNhaHJmNnIRCBcgACoLIgkKB2Z1bmNvZXNQAVoIZnVjY2FvaWQ=',
            name: 'funcoes',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=main_faccao_list',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=main_faccao_list',
        searchReference:
            'reference=OhBtYWluX2ZhY2Nhb19saXN0UAFaEG1haW5fZmFjY2FvX2xpc3Q=',
        widgetClassName: 'main_faccao_list',
      );
}
