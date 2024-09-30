import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/faccoes/modal_faccao_create/modal_faccao_create_widget.dart';
import 'create_faccao_widget.dart' show CreateFaccaoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateFaccaoModel extends FlutterFlowModel<CreateFaccaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for modal_faccao_create component.
  late ModalFaccaoCreateModel modalFaccaoCreateModel;

  @override
  void initState(BuildContext context) {
    modalFaccaoCreateModel =
        createModel(context, () => ModalFaccaoCreateModel());
  }

  @override
  void dispose() {
    modalFaccaoCreateModel.dispose();
  }
}
