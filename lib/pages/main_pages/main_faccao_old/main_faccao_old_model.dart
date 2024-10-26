import '/backend/supabase/supabase.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/components/modals/modal_add_faccao/modal_add_faccao_widget.dart';
import '/components/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_faccao_old_widget.dart' show MainFaccaoOldWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainFaccaoOldModel extends FlutterFlowModel<MainFaccaoOldWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for web_nav component.
  late WebNavModel webNavModel;

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
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=main_faccao_old',
        searchReference:
            'reference=Og9tYWluX2ZhY2Nhb19vbGRQAVoPbWFpbl9mYWNjYW9fb2xk',
        widgetClassName: 'main_faccao_old',
      );
}
