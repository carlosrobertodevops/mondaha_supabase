import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_profile_edit_widget.dart' show ModalProfileEditWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalProfileEditModel extends FlutterFlowModel<ModalProfileEditWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for DropDown widget.
  String? _dropDownValue;
  set dropDownValue(String? value) {
    _dropDownValue = value;
    debugLogWidgetClass(this);
  }

  String? get dropDownValue => _dropDownValue;

  FormFieldController<String>? dropDownValueController;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'yourNameText1': debugSerializeParam(
            yourNameTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_profile_Edit',
            name: 'String',
            nullable: true,
          ),
          'yourNameText2': debugSerializeParam(
            yourNameTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_profile_Edit',
            name: 'String',
            nullable: true,
          ),
          'dropDownValue': debugSerializeParam(
            dropDownValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_profile_Edit',
            name: 'String',
            nullable: true,
          )
        },
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_profile_Edit',
        searchReference:
            'reference=OhJtb2RhbF9wcm9maWxlX0VkaXRQAFoSbW9kYWxfcHJvZmlsZV9FZGl0',
        widgetClassName: 'modal_profile_Edit',
      );
}
