import '/components/navs/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_membros_widget.dart' show MainMembrosWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class MainMembrosModel extends FlutterFlowModel<MainMembrosWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? adicionarMembrosController;
  // Model for web_nav component.
  late WebNavModel webNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    adicionarMembrosController?.finish();
    webNavModel.dispose();
    tabBarController?.dispose();
  }
}
