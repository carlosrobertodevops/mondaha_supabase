import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/main_logo/main_logo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'auth_mondaha_widget.dart' show AuthMondahaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthMondahaModel extends FlutterFlowModel<AuthMondahaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo_A.
  late MainLogoModel mainLogoAModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for login-email widget.
  FocusNode? loginEmailFocusNode;
  TextEditingController? loginEmailTextController;
  String? Function(BuildContext, String?)? loginEmailTextControllerValidator;
  // State field(s) for login-password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordTextController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordTextControllerValidator;
  // State field(s) for signup-nome-completo widget.
  FocusNode? signupNomeCompletoFocusNode;
  TextEditingController? signupNomeCompletoTextController;
  String? Function(BuildContext, String?)?
      signupNomeCompletoTextControllerValidator;
  // State field(s) for signup-email widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  // State field(s) for signup-password widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  // State field(s) for signup-password-confirme widget.
  FocusNode? signupPasswordConfirmeFocusNode;
  TextEditingController? signupPasswordConfirmeTextController;
  late bool signupPasswordConfirmeVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordConfirmeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    mainLogoAModel = createModel(context, () => MainLogoModel());
    loginPasswordVisibility = false;
    signupPasswordVisibility = false;
    signupPasswordConfirmeVisibility = false;
  }

  @override
  void dispose() {
    mainLogoAModel.dispose();
    tabBarController?.dispose();
    loginEmailFocusNode?.dispose();
    loginEmailTextController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordTextController?.dispose();

    signupNomeCompletoFocusNode?.dispose();
    signupNomeCompletoTextController?.dispose();

    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupPasswordConfirmeFocusNode?.dispose();
    signupPasswordConfirmeTextController?.dispose();
  }
}
