import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dropdown_user_edit_widget.dart' show DropdownUserEditWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DropdownUserEditModel extends FlutterFlowModel<DropdownUserEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;

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
          'usuarioid': debugSerializeParam(
            widget?.usuarioid,
            ParamType.SupabaseRow,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=dropdown_user_edit',
            searchReference:
                'reference=SikKEwoJdXN1YXJpb2lkEgZnbDdxMzlyEggXIAEqDCIKCgh1c3Vhcmlvc1AAWgl1c3VhcmlvaWQ=',
            name: 'usuarios',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=dropdown_user_edit',
        searchReference:
            'reference=OhJkcm9wZG93bl91c2VyX2VkaXRQAFoSZHJvcGRvd25fdXNlcl9lZGl0',
        widgetClassName: 'dropdown_user_edit',
      );
}
