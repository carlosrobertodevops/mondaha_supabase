import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'modal_edit_faccao_widget.dart' show ModalEditFaccaoWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ModalEditFaccaoModel extends FlutterFlowModel<ModalEditFaccaoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txt_nome_faccao widget.
  FocusNode? txtNomeFaccaoFocusNode;
  TextEditingController? txtNomeFaccaoTextController;
  String? Function(BuildContext, String?)? txtNomeFaccaoTextControllerValidator;
  String? _txtNomeFaccaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yg28k56i' /* Please enter a project name... */,
      );
    }

    return null;
  }

  // State field(s) for txt_description widget.
  FocusNode? txtDescriptionFocusNode;
  TextEditingController? txtDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtDescriptionTextControllerValidator;
  String? _txtDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fwvtuuff' /* Please enter a short descripti... */,
      );
    }

    return null;
  }

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    txtNomeFaccaoTextControllerValidator =
        _txtNomeFaccaoTextControllerValidator;
    txtDescriptionTextControllerValidator =
        _txtDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    txtNomeFaccaoFocusNode?.dispose();
    txtNomeFaccaoTextController?.dispose();

    txtDescriptionFocusNode?.dispose();
    txtDescriptionTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'faccaoid': debugSerializeParam(
            widget?.faccaoid,
            ParamType.SupabaseRow,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_faccao',
            searchReference:
                'reference=SicKEgoIZmFjY2FvaWQSBmI5ZTJsZXIRCBcgACoLIgkKB2ZhY2NvZXNQAFoIZmFjY2FvaWQ=',
            name: 'faccoes',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'txtNomeFaccaoText': debugSerializeParam(
            txtNomeFaccaoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_faccao',
            name: 'String',
            nullable: true,
          ),
          'txtDescriptionText': debugSerializeParam(
            txtDescriptionTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_edit_faccao',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_edit_faccao',
        searchReference:
            'reference=OhFtb2RhbF9lZGl0X2ZhY2Nhb1AAWhFtb2RhbF9lZGl0X2ZhY2Nhbw==',
        widgetClassName: 'modal_edit_faccao',
      );
}
