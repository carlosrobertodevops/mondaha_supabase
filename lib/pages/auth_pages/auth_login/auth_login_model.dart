import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'auth_login_widget.dart' show AuthLoginWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthLoginModel extends FlutterFlowModel<AuthLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txt_login_email widget.
  FocusNode? txtLoginEmailFocusNode;
  TextEditingController? txtLoginEmailTextController;
  String? Function(BuildContext, String?)? txtLoginEmailTextControllerValidator;
  // State field(s) for txt_login_password widget.
  FocusNode? txtLoginPasswordFocusNode;
  TextEditingController? txtLoginPasswordTextController;
  late bool txtLoginPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtLoginPasswordTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in btn-login widget.
  List<UsuariosRow>? _usuarioDiferenteNove;
  set usuarioDiferenteNove(List<UsuariosRow>? value) {
    _usuarioDiferenteNove = value;
    debugLogWidgetClass(this);
  }

  List<UsuariosRow>? get usuarioDiferenteNove => _usuarioDiferenteNove;

  // State field(s) for drop_agencia widget.
  int? _dropAgenciaValue;
  set dropAgenciaValue(int? value) {
    _dropAgenciaValue = value;
    debugLogWidgetClass(this);
  }

  int? get dropAgenciaValue => _dropAgenciaValue;

  FormFieldController<int>? dropAgenciaValueController;
  // State field(s) for txt_signup_nome widget.
  FocusNode? txtSignupNomeFocusNode;
  TextEditingController? txtSignupNomeTextController;
  String? Function(BuildContext, String?)? txtSignupNomeTextControllerValidator;
  // State field(s) for txt_signup_email widget.
  FocusNode? txtSignupEmailFocusNode;
  TextEditingController? txtSignupEmailTextController;
  String? Function(BuildContext, String?)?
      txtSignupEmailTextControllerValidator;
  // State field(s) for txt_signup_password widget.
  FocusNode? txtSignupPasswordFocusNode;
  TextEditingController? txtSignupPasswordTextController;
  late bool txtSignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtSignupPasswordTextControllerValidator;
  // State field(s) for txt_signup_confirm widget.
  FocusNode? txtSignupConfirmFocusNode;
  TextEditingController? txtSignupConfirmTextController;
  late bool txtSignupConfirmVisibility;
  String? Function(BuildContext, String?)?
      txtSignupConfirmTextControllerValidator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    txtLoginPasswordVisibility = false;
    txtSignupPasswordVisibility = false;
    txtSignupConfirmVisibility = false;

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtLoginEmailFocusNode?.dispose();
    txtLoginEmailTextController?.dispose();

    txtLoginPasswordFocusNode?.dispose();
    txtLoginPasswordTextController?.dispose();

    txtSignupNomeFocusNode?.dispose();
    txtSignupNomeTextController?.dispose();

    txtSignupEmailFocusNode?.dispose();
    txtSignupEmailTextController?.dispose();

    txtSignupPasswordFocusNode?.dispose();
    txtSignupPasswordTextController?.dispose();

    txtSignupConfirmFocusNode?.dispose();
    txtSignupConfirmTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'int',
            nullable: true,
          ),
          'txtLoginEmailText': debugSerializeParam(
            txtLoginEmailTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'String',
            nullable: true,
          ),
          'txtLoginPasswordText': debugSerializeParam(
            txtLoginPasswordTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'String',
            nullable: true,
          ),
          'dropAgenciaValue': debugSerializeParam(
            dropAgenciaValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'int',
            nullable: true,
          ),
          'txtSignupNomeText': debugSerializeParam(
            txtSignupNomeTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'String',
            nullable: true,
          ),
          'txtSignupEmailText': debugSerializeParam(
            txtSignupEmailTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'String',
            nullable: true,
          ),
          'txtSignupPasswordText': debugSerializeParam(
            txtSignupPasswordTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'String',
            nullable: true,
          ),
          'txtSignupConfirmText': debugSerializeParam(
            txtSignupConfirmTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'usuarioDiferenteNove': debugSerializeParam(
            usuarioDiferenteNove,
            ParamType.SupabaseRow,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=auth_login',
            name: 'usuarios',
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
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=auth_login',
        searchReference: 'reference=OgphdXRoX2xvZ2luUAFaCmF1dGhfbG9naW4=',
        widgetClassName: 'auth_login',
      );
}
