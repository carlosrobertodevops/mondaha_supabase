import '/components/modal_sections/project_details_alt/project_details_alt_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'modal_faccao_details_widget.dart' show ModalFaccaoDetailsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalFaccaoDetailsModel
    extends FlutterFlowModel<ModalFaccaoDetailsWidget> {
  ///  Local state fields for this component.

  bool? _showBack = false;
  set showBack(bool? value) {
    _showBack = value;
    debugLogWidgetClass(this);
  }

  bool? get showBack => _showBack;

  ///  State fields for stateful widgets in this component.

  // Model for project_details_alt component.
  late ProjectDetailsAltModel projectDetailsAltModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    projectDetailsAltModel =
        createModel(context, () => ProjectDetailsAltModel());
  }

  @override
  void dispose() {
    projectDetailsAltModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'showBack': debugSerializeParam(
            showBack,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_faccao_details',
            searchReference:
                'reference=QhkKEQoIc2hvd0JhY2sSBTVyOWxlKgByAggFUABaCHNob3dCYWNrYhRtb2RhbF9mYWNjYW9fZGV0YWlscw==',
            name: 'bool',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'projectDetailsAltModel (project_details_alt)':
              projectDetailsAltModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_faccao_details',
        searchReference:
            'reference=OhRtb2RhbF9mYWNjYW9fZGV0YWlsc1AAWhRtb2RhbF9mYWNjYW9fZGV0YWlscw==',
        widgetClassName: 'modal_faccao_details',
      );
}
