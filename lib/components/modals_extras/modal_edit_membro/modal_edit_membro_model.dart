import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'modal_edit_membro_widget.dart' show ModalEditMembroWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalEditMembroModel extends FlutterFlowModel<ModalEditMembroWidget> {
  ///  Local state fields for this component.

  int? _photoNumber;
  set photoNumber(int? value) {
    _photoNumber = value;
    debugLogWidgetClass(this);
  }

  int? get photoNumber => _photoNumber;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ddp_faccao widget.
  int? _ddpFaccaoValue;
  set ddpFaccaoValue(int? value) {
    _ddpFaccaoValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddpFaccaoValue => _ddpFaccaoValue;

  FormFieldController<int>? ddpFaccaoValueController;
  // State field(s) for dpd_funcaio widget.
  int? _dpdFuncaioValue;
  set dpdFuncaioValue(int? value) {
    _dpdFuncaioValue = value;
    debugLogWidgetClass(this);
  }

  int? get dpdFuncaioValue => _dpdFuncaioValue;

  FormFieldController<int>? dpdFuncaioValueController;
  // State field(s) for DropDown widget.
  int? _dropDownValue;
  set dropDownValue(int? value) {
    _dropDownValue = value;
    debugLogWidgetClass(this);
  }

  int? get dropDownValue => _dropDownValue;

  FormFieldController<int>? dropDownValueController;
  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode;
  TextEditingController? txtNomeCompletoTextController;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode3;
  TextEditingController? cityTextController3;
  String? Function(BuildContext, String?)? cityTextController3Validator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNomeCompletoFocusNode?.dispose();
    txtNomeCompletoTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    cityFocusNode3?.dispose();
    cityTextController3?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'photoNumber': debugSerializeParam(
            photoNumber,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            searchReference:
                'reference=QhoKFAoLcGhvdG9OdW1iZXISBWdsd3NtcgIIAVAAWgtwaG90b051bWJlcmIRbW9kYWxfZWRpdF9tZW1icm8=',
            name: 'int',
            nullable: true,
          )
        },
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'int',
            nullable: true,
          ),
          'ddpFaccaoValue': debugSerializeParam(
            ddpFaccaoValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'int',
            nullable: true,
          ),
          'dpdFuncaioValue': debugSerializeParam(
            dpdFuncaioValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'int',
            nullable: true,
          ),
          'dropDownValue': debugSerializeParam(
            dropDownValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'int',
            nullable: true,
          ),
          'txtNomeCompletoText': debugSerializeParam(
            txtNomeCompletoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'String',
            nullable: true,
          ),
          'myBioText': debugSerializeParam(
            myBioTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'String',
            nullable: true,
          ),
          'cityText1': debugSerializeParam(
            cityTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'String',
            nullable: true,
          ),
          'cityText2': debugSerializeParam(
            cityTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
            name: 'String',
            nullable: true,
          ),
          'cityText3': debugSerializeParam(
            cityTextController3?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_membro',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_edit_membro',
        searchReference:
            'reference=OhFtb2RhbF9lZGl0X21lbWJyb1AAWhFtb2RhbF9lZGl0X21lbWJybw==',
        widgetClassName: 'modal_edit_membro',
      );
}
