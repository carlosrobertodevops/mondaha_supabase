import '/backend/supabase/supabase.dart';
import '/components/navs/web_nav/web_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

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

  /// Query cache managers for this widget.

  final _qryMembrosMainManager = FutureRequestManager<List<MembrosRow>>();
  Future<List<MembrosRow>> qryMembrosMain({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MembrosRow>> Function() requestFn,
  }) =>
      _qryMembrosMainManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQryMembrosMainCache() => _qryMembrosMainManager.clear();
  void clearQryMembrosMainCacheKey(String? uniqueKey) =>
      _qryMembrosMainManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    webNavModel = createModel(context, () => WebNavModel());
  }

  @override
  void dispose() {
    adicionarMembrosController?.finish();
    webNavModel.dispose();
    tabBarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearQryMembrosMainCache();
  }
}
