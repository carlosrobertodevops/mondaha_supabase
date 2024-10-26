import '/backend/supabase/supabase.dart';
import '/components/modals/modal_edit_faccao/modal_edit_faccao_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_faccao_edit_widget.dart' show DropdownFaccaoEditWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DropdownFaccaoEditModel
    extends FlutterFlowModel<DropdownFaccaoEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'faccaoid': debugSerializeParam(
            widget?.faccaoid,
            ParamType.SupabaseRow,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=dropdown_faccao_edit',
            searchReference:
                'reference=SicKEgoIZmFjY2FvaWQSBmlsemlsNnIRCBcgASoLIgkKB2ZhY2NvZXNQAFoIZmFjY2FvaWQ=',
            name: 'faccoes',
            nullable: true,
          )
        }.withoutNulls,
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=dropdown_faccao_edit',
        searchReference:
            'reference=OhRkcm9wZG93bl9mYWNjYW9fZWRpdFAAWhRkcm9wZG93bl9mYWNjYW9fZWRpdA==',
        widgetClassName: 'dropdown_faccao_edit',
      );
}
