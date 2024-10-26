import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/logos/main_logo_bar/main_logo_bar_widget.dart';
import '/components/modals/modal_command_palette/modal_command_palette_widget.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for main_logo_bar component.
  late MainLogoBarModel mainLogoBarModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    mainLogoBarModel = createModel(context, () => MainLogoBarModel());
  }

  @override
  void dispose() {
    mainLogoBarModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'selectedNav': debugSerializeParam(
            widget?.selectedNav,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=web_nav',
            searchReference:
                'reference=ShsKFQoLc2VsZWN0ZWROYXYSBmRmdHlnYnICCAFQAFoLc2VsZWN0ZWROYXY=',
            name: 'int',
            nullable: true,
          )
        }.withoutNulls,
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'mainLogoBarModel (main_logo_bar)':
              mainLogoBarModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=web_nav',
        searchReference: 'reference=Ogd3ZWJfbmF2UABaB3dlYl9uYXY=',
        widgetClassName: 'web_nav',
      );
}
