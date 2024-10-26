import '/components/logos/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'modal_message_widget.dart' show ModalMessageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalMessageModel extends FlutterFlowModel<ModalMessageWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for main_logo_small component.
  late MainLogoSmallModel mainLogoSmallModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'mainLogoSmallModel (main_logo_small)':
              mainLogoSmallModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_message',
        searchReference:
            'reference=Og1tb2RhbF9tZXNzYWdlUABaDW1vZGFsX21lc3NhZ2U=',
        widgetClassName: 'modal_message',
      );
}
