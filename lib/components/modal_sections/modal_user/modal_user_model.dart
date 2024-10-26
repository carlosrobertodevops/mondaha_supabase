import '/components/modal_sections/user_details_main/user_details_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'modal_user_widget.dart' show ModalUserWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalUserModel extends FlutterFlowModel<ModalUserWidget> {
  ///  Local state fields for this component.

  bool? _showBack = false;
  set showBack(bool? value) {
    _showBack = value;
    debugLogWidgetClass(this);
  }

  bool? get showBack => _showBack;

  ///  State fields for stateful widgets in this component.

  // Model for user_details_main component.
  late UserDetailsMainModel userDetailsMainModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    userDetailsMainModel = createModel(context, () => UserDetailsMainModel());
  }

  @override
  void dispose() {
    userDetailsMainModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'showBack': debugSerializeParam(
            showBack,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_user',
            searchReference:
                'reference=QhkKEQoIc2hvd0JhY2sSBTVyOWxlKgByAggFUABaCHNob3dCYWNrYgptb2RhbF91c2Vy',
            name: 'bool',
            nullable: true,
          )
        },
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_user',
        searchReference: 'reference=Ogptb2RhbF91c2VyUABaCm1vZGFsX3VzZXI=',
        widgetClassName: 'modal_user',
      );
}
