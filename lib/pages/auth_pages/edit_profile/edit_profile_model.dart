import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/modals/modal_profile_edit_photo/modal_profile_edit_photo_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  int? _dropDownValue;
  set dropDownValue(int? value) {
    _dropDownValue = value;
    debugLogWidgetClass(this);
  }

  int? get dropDownValue => _dropDownValue;

  FormFieldController<int>? dropDownValueController;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

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
          'dropDownValue': debugSerializeParam(
            dropDownValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=edit_profile',
            name: 'int',
            nullable: true,
          ),
          'yourNameText1': debugSerializeParam(
            yourNameTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=edit_profile',
            name: 'String',
            nullable: true,
          ),
          'yourNameText2': debugSerializeParam(
            yourNameTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=edit_profile',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=edit_profile',
        searchReference: 'reference=OgxlZGl0X3Byb2ZpbGVQAVoMZWRpdF9wcm9maWxl',
        widgetClassName: 'edit_profile',
      );
}
