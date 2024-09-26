import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/faccoes/modal_create_faccao/modal_create_faccao_widget.dart';
import 'create_faccao_widget.dart' show CreateFaccaoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateFaccaoModel extends FlutterFlowModel<CreateFaccaoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for modal_create_faccao component.
  late ModalCreateFaccaoModel modalCreateFaccaoModel;

  @override
  void initState(BuildContext context) {
    modalCreateFaccaoModel =
        createModel(context, () => ModalCreateFaccaoModel());
  }

  @override
  void dispose() {
    modalCreateFaccaoModel.dispose();
  }
}
