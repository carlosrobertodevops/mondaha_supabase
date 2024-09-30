import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/faccoes/modal_faccao_create/modal_faccao_create_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_faccao_model.dart';
export 'create_faccao_model.dart';

class CreateFaccaoWidget extends StatefulWidget {
  const CreateFaccaoWidget({super.key});

  @override
  State<CreateFaccaoWidget> createState() => _CreateFaccaoWidgetState();
}

class _CreateFaccaoWidgetState extends State<CreateFaccaoWidget> {
  late CreateFaccaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateFaccaoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'create_faccao'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.modalFaccaoCreateModel,
            updateCallback: () => safeSetState(() {}),
            child: ModalFaccaoCreateWidget(),
          ),
        ),
      ),
    );
  }
}
