import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
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

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txt-login-email widget.
  FocusNode? txtLoginEmailFocusNode;
  TextEditingController? txtLoginEmailTextController;
  String? Function(BuildContext, String?)? txtLoginEmailTextControllerValidator;
  // State field(s) for txt-login-password widget.
  FocusNode? txtLoginPasswordFocusNode;
  TextEditingController? txtLoginPasswordTextController;
  late bool txtLoginPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtLoginPasswordTextControllerValidator;
  // State field(s) for drop_agencia widget.
  int? dropAgenciaValue;
  FormFieldController<int>? dropAgenciaValueController;
  // State field(s) for txt-signin-nome widget.
  FocusNode? txtSigninNomeFocusNode;
  TextEditingController? txtSigninNomeTextController;
  String? Function(BuildContext, String?)? txtSigninNomeTextControllerValidator;
  // State field(s) for txt-signin-email widget.
  FocusNode? txtSigninEmailFocusNode;
  TextEditingController? txtSigninEmailTextController;
  String? Function(BuildContext, String?)?
      txtSigninEmailTextControllerValidator;
  // State field(s) for txt_singin-password widget.
  FocusNode? txtSinginPasswordFocusNode;
  TextEditingController? txtSinginPasswordTextController;
  late bool txtSinginPasswordVisibility;
  String? Function(BuildContext, String?)?
      txtSinginPasswordTextControllerValidator;
  // State field(s) for txt_singin-password-confirm widget.
  FocusNode? txtSinginPasswordConfirmFocusNode;
  TextEditingController? txtSinginPasswordConfirmTextController;
  late bool txtSinginPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      txtSinginPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtLoginPasswordVisibility = false;
    txtSinginPasswordVisibility = false;
    txtSinginPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    txtLoginEmailFocusNode?.dispose();
    txtLoginEmailTextController?.dispose();

    txtLoginPasswordFocusNode?.dispose();
    txtLoginPasswordTextController?.dispose();

    txtSigninNomeFocusNode?.dispose();
    txtSigninNomeTextController?.dispose();

    txtSigninEmailFocusNode?.dispose();
    txtSigninEmailTextController?.dispose();

    txtSinginPasswordFocusNode?.dispose();
    txtSinginPasswordTextController?.dispose();

    txtSinginPasswordConfirmFocusNode?.dispose();
    txtSinginPasswordConfirmTextController?.dispose();
  }
}
