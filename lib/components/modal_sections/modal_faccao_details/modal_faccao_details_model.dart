import '/components/modal_sections/project_details_alt/project_details_alt_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_faccao_details_widget.dart' show ModalFaccaoDetailsWidget;
import 'package:flutter/material.dart';

class ModalFaccaoDetailsModel
    extends FlutterFlowModel<ModalFaccaoDetailsWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  ///  State fields for stateful widgets in this component.

  // Model for project_details_alt component.
  late ProjectDetailsAltModel projectDetailsAltModel;

  @override
  void initState(BuildContext context) {
    projectDetailsAltModel =
        createModel(context, () => ProjectDetailsAltModel());
  }

  @override
  void dispose() {
    projectDetailsAltModel.dispose();
  }
}
