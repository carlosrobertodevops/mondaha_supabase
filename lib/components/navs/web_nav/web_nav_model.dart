import '/components/logos/main_logo_bar/main_logo_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_nav_widget.dart' show WebNavWidget;
import 'package:flutter/material.dart';

class WebNavModel extends FlutterFlowModel<WebNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for main_logo_bar component.
  late MainLogoBarModel mainLogoBarModel;

  @override
  void initState(BuildContext context) {
    mainLogoBarModel = createModel(context, () => MainLogoBarModel());
  }

  @override
  void dispose() {
    mainLogoBarModel.dispose();
  }
}
