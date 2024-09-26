import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/main_logo/main_logo_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/users/modal_profile_edit/modal_profile_edit_widget.dart';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for main_Logo_A.
  late MainLogoModel mainLogoAModel;

  @override
  void initState(BuildContext context) {
    mainLogoAModel = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    mainLogoAModel.dispose();
  }
}
