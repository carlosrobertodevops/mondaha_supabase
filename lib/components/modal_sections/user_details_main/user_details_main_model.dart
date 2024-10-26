import '/components/modals/modal_add_comment/modal_add_comment_widget.dart';
import '/components/modals/modal_success/modal_success_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'user_details_main_widget.dart' show UserDetailsMainWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsMainModel extends FlutterFlowModel<UserDetailsMainWidget> {
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
          'showBack': debugSerializeParam(
            widget?.showBack,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=user_details_main',
            searchReference:
                'reference=ShoKEgoIc2hvd0JhY2sSBmYwM2Rsd3IECAUgAVAAWghzaG93QmFjaw==',
            name: 'bool',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=user_details_main',
        searchReference:
            'reference=OhF1c2VyX2RldGFpbHNfbWFpblAAWhF1c2VyX2RldGFpbHNfbWFpbg==',
        widgetClassName: 'user_details_main',
      );
}
