import '/components/modal_sections/user_details_main/user_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'user_details_widget.dart' show UserDetailsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsModel extends FlutterFlowModel<UserDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for user_details_main component.
  late UserDetailsMainModel userDetailsMainModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    userDetailsMainModel = createModel(context, () => UserDetailsMainModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    userDetailsMainModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'showBack': debugSerializeParam(
            widget?.showBack,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=user_details',
            searchReference:
                'reference=SiIKEgoIc2hvd0JhY2sSBnk5emZmZCoGEgR0cnVlcgQIBSAAUAFaCHNob3dCYWNr',
            name: 'bool',
            nullable: false,
          )
        }.withoutNulls,
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'userDetailsMainModel (user_details_main)':
              userDetailsMainModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=user_details',
        searchReference: 'reference=Ogx1c2VyX2RldGFpbHNQAVoMdXNlcl9kZXRhaWxz',
        widgetClassName: 'user_details',
      );
}
