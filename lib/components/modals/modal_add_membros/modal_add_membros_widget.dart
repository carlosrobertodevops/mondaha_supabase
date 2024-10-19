import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'modal_add_membros_model.dart';
export 'modal_add_membros_model.dart';

class ModalAddMembrosWidget extends StatefulWidget {
  const ModalAddMembrosWidget({super.key});

  @override
  State<ModalAddMembrosWidget> createState() => _ModalAddMembrosWidgetState();
}

class _ModalAddMembrosWidgetState extends State<ModalAddMembrosWidget>
    with TickerProviderStateMixin {
  late ModalAddMembrosModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalAddMembrosModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 8,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.txtNomeCompletoTextController ??= TextEditingController();
    _model.txtNomeCompletoFocusNode ??= FocusNode();

    _model.txtAlcunhaAddTextController ??= TextEditingController();
    _model.txtAlcunhaAddFocusNode ??= FocusNode();

    _model.txtMembroNaturalidadeTextController ??= TextEditingController();
    _model.txtMembroNaturalidadeFocusNode ??= FocusNode();

    _model.txtNoIdentidadeTextController ??= TextEditingController();
    _model.txtNoIdentidadeFocusNode ??= FocusNode();

    _model.txtNoCpfTextController ??= TextEditingController();
    _model.txtNoCpfFocusNode ??= FocusNode();

    _model.txtNoInfopenTextController ??= TextEditingController();
    _model.txtNoInfopenFocusNode ??= FocusNode();

    _model.txtFiliacaoMaeTextController ??= TextEditingController();
    _model.txtFiliacaoMaeFocusNode ??= FocusNode();

    _model.txtFiliacaoPaiTextController ??= TextEditingController();
    _model.txtFiliacaoPaiFocusNode ??= FocusNode();

    _model.txtMembrosEnderecosAddTextController ??= TextEditingController();
    _model.txtMembrosEnderecosAddFocusNode ??= FocusNode();

    _model.txtMembroHistoricoTextController ??= TextEditingController();

    _model.txtFaccaoBastismoTextController ??= TextEditingController();

    _model.txtFacaoLocalBastismoTextController ??= TextEditingController();
    _model.txtFacaoLocalBastismoFocusNode ??= FocusNode();

    _model.txtMembrosFaccaoPadrinhoTextController ??= TextEditingController();
    _model.txtMembrosFaccaoPadrinhoFocusNode ??= FocusNode();

    _model.txtMembroFaccaoSenhaTextController ??= TextEditingController();
    _model.txtMembroFaccaoSenhaFocusNode ??= FocusNode();

    _model.txtFaccaoTresLocaisAddTextController ??= TextEditingController();
    _model.txtFaccaoTresLocaisAddFocusNode ??= FocusNode();

    _model.txtProcedimentoNoTextController ??= TextEditingController();
    _model.txtProcedimentoNoFocusNode ??= FocusNode();

    _model.txtProcedimentoDataTextController ??= TextEditingController();
    _model.txtProcedimentoDataFocusNode ??= FocusNode();

    _model.txtProcessoNoAcaoPenalTextController ??= TextEditingController();
    _model.txtProcessoNoAcaoPenalFocusNode ??= FocusNode();

    _model.txtMembroAtuacaoTextController ??= TextEditingController();

    _model.switchAlertaValue = false;
    _model.txtMembroAlertaTextController ??= TextEditingController();

    _model.textController21 ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'blurOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.txtProcedimentoDataTextController?.text = dateTimeFormat(
            "d/M/y",
            _model.datePicked,
            locale: FFLocalizations.of(context).languageCode,
          );
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5.0,
            sigmaY: 4.0,
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      width: 1440.0,
                      height: 900.0,
                      constraints: const BoxConstraints(
                        minWidth: 1440.0,
                        minHeight: 900.0,
                        maxWidth: 1440.0,
                        maxHeight: 900.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 0.0, 16.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'rgboq48h' /* Add Member */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'MODAL_ADD_MEMBROS_close_rounded_ICN_ON_T');
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 16.0),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: SafeArea(
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.85,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const Alignment(0.0, 0),
                                                        child: TabBar(
                                                          isScrollable: true,
                                                          labelColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          unselectedLabelColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          unselectedLabelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Plus Jakarta Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          indicatorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  2.0),
                                                          tabs: [
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'ap8ub3ro' /* Profile */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'nvxntirq' /* History */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'zo5mhuuq' /* Facção */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'xeeiaebp' /* Procedimentos */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '0v0s6s8e' /* Processos */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'xaeljp2r' /* Atuação */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '8slh1eth' /* Alerta */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                '2rc41m6r' /* Validação */,
                                                              ),
                                                            ),
                                                          ],
                                                          controller: _model
                                                              .tabBarController,
                                                          onTap: (i) async {
                                                            [
                                                              () async {},
                                                              () async {},
                                                              () async {},
                                                              () async {},
                                                              () async {},
                                                              () async {},
                                                              () async {},
                                                              () async {}
                                                            ][i]();
                                                          },
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: TabBarView(
                                                          controller: _model
                                                              .tabBarController,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                primary: false,
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'fuw255xv' /* Upload images about the  membe... */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Form(
                                                                        key: _model
                                                                            .formKey2,
                                                                        autovalidateMode:
                                                                            AutovalidateMode.disabled,
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          primary:
                                                                              false,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children:
                                                                                [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (_model.uploadedLocalFiles1.isEmpty)
                                                                                          InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('MODAL_ADD_MEMBROS_Container_we8qkkgn_ON_');
                                                                                              final selectedMedia = await selectMedia(
                                                                                                maxWidth: 100.00,
                                                                                                maxHeight: 100.00,
                                                                                                mediaSource: MediaSource.photoGallery,
                                                                                                multiImage: true,
                                                                                              );
                                                                                              if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                                safeSetState(() => _model.isDataUploading1 = true);
                                                                                                var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                                try {
                                                                                                  selectedUploadedFiles = selectedMedia
                                                                                                      .map((m) => FFUploadedFile(
                                                                                                            name: m.storagePath.split('/').last,
                                                                                                            bytes: m.bytes,
                                                                                                            height: m.dimensions?.height,
                                                                                                            width: m.dimensions?.width,
                                                                                                            blurHash: m.blurHash,
                                                                                                          ))
                                                                                                      .toList();
                                                                                                } finally {
                                                                                                  _model.isDataUploading1 = false;
                                                                                                }
                                                                                                if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                                  safeSetState(() {
                                                                                                    _model.uploadedLocalFiles1 = selectedUploadedFiles;
                                                                                                  });
                                                                                                } else {
                                                                                                  safeSetState(() {});
                                                                                                  return;
                                                                                                }
                                                                                              }
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                              child: SingleChildScrollView(
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Icon(
                                                                                                        Icons.arrow_back,
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        size: 24.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Align(
                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        FFLocalizations.of(context).getText(
                                                                                                          'n7bo970y' /* Add Photos */,
                                                                                                        ),
                                                                                                        textAlign: TextAlign.center,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        Container(
                                                                                          decoration: const BoxDecoration(),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Builder(
                                                                                                builder: (context) {
                                                                                                  final fotosMembroPaths = _model.uploadedLocalFiles1.toList().take(4).toList();

                                                                                                  return SingleChildScrollView(
                                                                                                    scrollDirection: Axis.horizontal,
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                      children: List.generate(fotosMembroPaths.length, (fotosMembroPathsIndex) {
                                                                                                        final fotosMembroPathsItem = fotosMembroPaths[fotosMembroPathsIndex];
                                                                                                        return Visibility(
                                                                                                          visible: _model.uploadedLocalFiles1.isNotEmpty,
                                                                                                          child: Align(
                                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Container(
                                                                                                              width: 100.0,
                                                                                                              height: 100.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                                                shape: BoxShape.rectangle,
                                                                                                                border: Border.all(
                                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                                  width: 2.0,
                                                                                                                ),
                                                                                                              ),
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Align(
                                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                      child: Padding(
                                                                                                                        padding: const EdgeInsets.all(2.0),
                                                                                                                        child: InkWell(
                                                                                                                          splashColor: Colors.transparent,
                                                                                                                          focusColor: Colors.transparent,
                                                                                                                          hoverColor: Colors.transparent,
                                                                                                                          highlightColor: Colors.transparent,
                                                                                                                          onTap: () async {
                                                                                                                            logFirebaseEvent('MODAL_ADD_MEMBROS_membro_foto_ON_TAP');
                                                                                                                            await Navigator.push(
                                                                                                                              context,
                                                                                                                              PageTransition(
                                                                                                                                type: PageTransitionType.fade,
                                                                                                                                child: FlutterFlowExpandedImageView(
                                                                                                                                  image: Image.memory(
                                                                                                                                    _model.uploadedLocalFiles1[fotosMembroPathsIndex].bytes ?? Uint8List.fromList([]),
                                                                                                                                    fit: BoxFit.contain,
                                                                                                                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                                                                      'assets/images/error_image.png',
                                                                                                                                      fit: BoxFit.contain,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  allowRotation: false,
                                                                                                                                  tag: 'membroFotoTag',
                                                                                                                                  useHeroAnimation: true,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            );
                                                                                                                          },
                                                                                                                          child: Hero(
                                                                                                                            tag: 'membroFotoTag',
                                                                                                                            transitionOnUserGestures: true,
                                                                                                                            child: ClipRRect(
                                                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                                                              child: Image.memory(
                                                                                                                                _model.uploadedLocalFiles1[fotosMembroPathsIndex].bytes ?? Uint8List.fromList([]),
                                                                                                                                width: 100.0,
                                                                                                                                height: 100.0,
                                                                                                                                fit: BoxFit.cover,
                                                                                                                                errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                                                                  'assets/images/error_image.png',
                                                                                                                                  width: 100.0,
                                                                                                                                  height: 100.0,
                                                                                                                                  fit: BoxFit.cover,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  Align(
                                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                    child: InkWell(
                                                                                                                      splashColor: Colors.transparent,
                                                                                                                      focusColor: Colors.transparent,
                                                                                                                      hoverColor: Colors.transparent,
                                                                                                                      highlightColor: Colors.transparent,
                                                                                                                      onTap: () async {
                                                                                                                        logFirebaseEvent('MODAL_ADD_MEMBROS_Icon_gn1akpon_ON_TAP');
                                                                                                                        var confirmDialogResponse = await showDialog<bool>(
                                                                                                                              context: context,
                                                                                                                              builder: (alertDialogContext) {
                                                                                                                                return AlertDialog(
                                                                                                                                  title: const Text('Apagar Foto'),
                                                                                                                                  content: const Text('Deseja apagar esta foto ?'),
                                                                                                                                  actions: [
                                                                                                                                    TextButton(
                                                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                                      child: const Text('Cancelar'),
                                                                                                                                    ),
                                                                                                                                    TextButton(
                                                                                                                                      onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                                      child: const Text('Confirmar'),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                );
                                                                                                                              },
                                                                                                                            ) ??
                                                                                                                            false;
                                                                                                                        if (confirmDialogResponse) {
                                                                                                                          _model.removeAtIndexFromMembrosPhotos(fotosMembroPathsIndex);
                                                                                                                          safeSetState(() {});
                                                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                                                            SnackBar(
                                                                                                                              content: Text(
                                                                                                                                'Foto excluida com sucesso!',
                                                                                                                                style: TextStyle(
                                                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              duration: const Duration(milliseconds: 4000),
                                                                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                                            ),
                                                                                                                          );
                                                                                                                        }
                                                                                                                      },
                                                                                                                      child: Icon(
                                                                                                                        Icons.do_not_disturb_on_rounded,
                                                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                                                        size: 24.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      }).divide(
                                                                                                        const SizedBox(width: 12.0),
                                                                                                        filterFn: (fotosMembroPathsIndex) {
                                                                                                          final fotosMembroPathsItem = fotosMembroPaths[fotosMembroPathsIndex];
                                                                                                          return _model.uploadedLocalFiles1.isNotEmpty;
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 12.0)),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 10,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtNomeCompletoTextController,
                                                                                      focusNode: _model.txtNomeCompletoFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtNomeCompletoTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'npcbcpl9' /* Nome completo */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        alignLabelWithHint: true,
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'eyhgaf81' /* Nome completo */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtNomeCompletoTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtNomeCompletoTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.clear,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtNomeCompletoTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 6,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtAlcunhaAddTextController,
                                                                                      focusNode: _model.txtAlcunhaAddFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtAlcunhaAddTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'ikt0h50o' /* Alcunha */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'jna6z2zu' /* Alcunha */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtAlcunhaAddTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtAlcunhaAddTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.clear,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtAlcunhaAddTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 30.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).primary,
                                                                                    icon: Icon(
                                                                                      Icons.add_rounded,
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('MODAL_ADD_MEMBROS_add_rounded_ICN_ON_TAP');
                                                                                      if (_model.txtAlcunhaAddTextController.text != '') {
                                                                                        _model.addToMembrosAlcunhas(_model.txtAlcunhaAddTextController.text);
                                                                                        safeSetState(() {});
                                                                                        safeSetState(() {
                                                                                          _model.txtAlcunhaAddTextController?.text = _model.membrosLimpar!;
                                                                                        });
                                                                                      } else {
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Informação de Alcunha em branco !',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                              ),
                                                                                            ),
                                                                                            duration: const Duration(milliseconds: 4000),
                                                                                            backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 16,
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final tagAlcunha = _model.membrosAlcunhas.map((e) => e).toList().take(4).toList();

                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: List.generate(tagAlcunha.length, (tagAlcunhaIndex) {
                                                                                            final tagAlcunhaItem = tagAlcunha[tagAlcunhaIndex];
                                                                                            return Expanded(
                                                                                              child: Container(
                                                                                                constraints: const BoxConstraints(
                                                                                                  minHeight: 40.0,
                                                                                                  maxWidth: 40.0,
                                                                                                  maxHeight: 40.0,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                  borderRadius: BorderRadius.circular(16.0),
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                ),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: Align(
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 3.0, 0.0),
                                                                                                                child: SelectionArea(
                                                                                                                    child: Text(
                                                                                                                  tagAlcunhaItem,
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                )),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Align(
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                logFirebaseEvent('MODAL_ADD_MEMBROS_Icon_6qqufm56_ON_TAP');
                                                                                                                _model.removeAtIndexFromMembrosAlcunhas(tagAlcunhaIndex);
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                              child: Icon(
                                                                                                                Icons.do_not_disturb_on_rounded,
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                size: 24.0,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }).divide(const SizedBox(width: 5.0)),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 7,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtMembroNaturalidadeTextController,
                                                                                      focusNode: _model.txtMembroNaturalidadeFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtMembroNaturalidadeTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'deg0fdow' /* Naturalidade */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        alignLabelWithHint: true,
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'o99a5cgx' /* Naturalidade */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtMembroNaturalidadeTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtMembroNaturalidadeTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: const Icon(
                                                                                                  Icons.clear,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtMembroNaturalidadeTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 3,
                                                                                    child: FutureBuilder<List<CargosRow>>(
                                                                                      future: CargosTable().queryRows(
                                                                                        queryFn: (q) => q.order('nome', ascending: true),
                                                                                      ),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  FlutterFlowTheme.of(context).primary,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        List<CargosRow> ddwEstadoCivilCargosRowList = snapshot.data!;

                                                                                        return FlutterFlowDropDown<String>(
                                                                                          controller: _model.ddwEstadoCivilValueController ??= FormFieldController<String>(null),
                                                                                          options: [
                                                                                            FFLocalizations.of(context).getText(
                                                                                              't9eza7j1' /* Solteiro */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'l63dv3dx' /* Casado */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'e2udnh0l' /* DIvorciado */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'ggvr9869' /* Viúvo(a) */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'dq3xw3uc' /* Separados legalmente */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'bm6cnl7l' /* União estável */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '75eegesr' /* Nenhuma das opções */,
                                                                                            )
                                                                                          ],
                                                                                          onChanged: (val) => safeSetState(() => _model.ddwEstadoCivilValue = val),
                                                                                          height: 60.0,
                                                                                          searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'ievjy8qu' /* Estado civil */,
                                                                                          ),
                                                                                          searchHintText: FFLocalizations.of(context).getText(
                                                                                            'tfn53ft8' /* Estado civil */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.keyboard_arrow_down_rounded,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          elevation: 2.0,
                                                                                          borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                          borderWidth: 2.0,
                                                                                          borderRadius: 8.0,
                                                                                          margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          hidesUnderline: true,
                                                                                          isOverButton: false,
                                                                                          isSearchable: true,
                                                                                          isMultiSelect: false,
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 2,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtNoIdentidadeTextController,
                                                                                      focusNode: _model.txtNoIdentidadeFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtNoIdentidadeTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          '2opj9i3o' /* Identidade */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'v4bdomyi' /* Identidade */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtNoIdentidadeTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtNoIdentidadeTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: const Icon(
                                                                                                  Icons.clear,
                                                                                                  color: Color(0xFF757575),
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      keyboardType: TextInputType.number,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtNoIdentidadeTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 1,
                                                                                    child: FutureBuilder<List<CargosRow>>(
                                                                                      future: CargosTable().queryRows(
                                                                                        queryFn: (q) => q.order('nome', ascending: true),
                                                                                      ),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  FlutterFlowTheme.of(context).primary,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        List<CargosRow> ddwOrgaoExpedidorCargosRowList = snapshot.data!;

                                                                                        return FlutterFlowDropDown<int>(
                                                                                          controller: _model.ddwOrgaoExpedidorValueController ??= FormFieldController<int>(
                                                                                            _model.ddwOrgaoExpedidorValue ??= 1,
                                                                                          ),
                                                                                          options: List<int>.from([
                                                                                            1,
                                                                                            2,
                                                                                            3,
                                                                                            4,
                                                                                            5,
                                                                                            6,
                                                                                            0
                                                                                          ]),
                                                                                          optionLabels: [
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'kuvmd4lw' /* SSP-AL */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'i0p55l2k' /* SSP-SE */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'q0egmn1z' /* SSP-CE */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'yoj8hn6v' /* SSP-PE */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'vuc1hntf' /* SSP-BA */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'lhjvkfqm' /* SSP-RN */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'ryqcnfe0' /* Nenhuma das opções */,
                                                                                            )
                                                                                          ],
                                                                                          onChanged: (val) => safeSetState(() => _model.ddwOrgaoExpedidorValue = val),
                                                                                          height: 60.0,
                                                                                          searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'ia9zkanc' /* Órgão expedidor */,
                                                                                          ),
                                                                                          searchHintText: FFLocalizations.of(context).getText(
                                                                                            'h3ykxfak' /* Órgão expedidor */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.keyboard_arrow_down_rounded,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          elevation: 2.0,
                                                                                          borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                          borderWidth: 2.0,
                                                                                          borderRadius: 8.0,
                                                                                          margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                          hidesUnderline: true,
                                                                                          isOverButton: false,
                                                                                          isSearchable: true,
                                                                                          isMultiSelect: false,
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 2,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtNoCpfTextController,
                                                                                      focusNode: _model.txtNoCpfFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtNoCpfTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'k3o15zmt' /* CPF */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '1rai7wkj' /* CPF */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtNoCpfTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtNoCpfTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.clear,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      keyboardType: TextInputType.number,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtNoCpfTextControllerValidator.asValidator(context),
                                                                                      inputFormatters: [
                                                                                        _model.txtNoCpfMask
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 2,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtNoInfopenTextController,
                                                                                      focusNode: _model.txtNoInfopenFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtNoInfopenTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'f434de4i' /* Cadastro Infopen */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '1yyjhbj8' /* Cadastro Infopen */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtNoInfopenTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtNoInfopenTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: const Icon(
                                                                                                  Icons.clear,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      keyboardType: TextInputType.number,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtNoInfopenTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 7,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtFiliacaoMaeTextController,
                                                                                      focusNode: _model.txtFiliacaoMaeFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtFiliacaoMaeTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'cjy846zr' /* Nome da mãe */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '7g88w199' /* Nome da mãe */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtFiliacaoMaeTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtFiliacaoMaeTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.clear,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtFiliacaoMaeTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 3,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwSituacaoMaeValueController ??= FormFieldController<String>(null),
                                                                                      options: [
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '4ebn7u9d' /* Viva */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'vte6onee' /* Falecida */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '188nb78m' /* Cadeirante */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'aw1z7gel' /* Sem informação */,
                                                                                        )
                                                                                      ],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwSituacaoMaeValue = val),
                                                                                      height: 60.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: FFLocalizations.of(context).getText(
                                                                                        'gc3vbmj4' /* Situação da Mãe */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'bj72hiw8' /* Situação da Mãe */,
                                                                                      ),
                                                                                      icon: Icon(
                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 2.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                      borderWidth: 2.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: false,
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 7,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtFiliacaoPaiTextController,
                                                                                      focusNode: _model.txtFiliacaoPaiFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtFiliacaoPaiTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'lbcdz337' /* Nome do pai */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '35jyk488' /* Nome do pai */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtFiliacaoPaiTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtFiliacaoPaiTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.clear,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtFiliacaoPaiTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 3,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwSituacaoPaiValueController ??= FormFieldController<String>(null),
                                                                                      options: [
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'qyc8q0st' /* Vivo */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '7ygxf6rh' /* Falecido */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'wmbvp74d' /* Cadeirante */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'r9rah6gc' /* Sem informação */,
                                                                                        )
                                                                                      ],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwSituacaoPaiValue = val),
                                                                                      height: 60.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: FFLocalizations.of(context).getText(
                                                                                        'cnn9tddw' /* Situação do Pai */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'bsvzf3cx' /* Father's Situation */,
                                                                                      ),
                                                                                      icon: Icon(
                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 2.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                      borderWidth: 2.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: false,
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 3,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwNivelInstrucaoValueController ??= FormFieldController<String>(null),
                                                                                      options: [
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'r2g2yo2p' /* Alfabetizado */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'y7i4eicy' /* Não alfabetizado */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'xmduvdwh' /* Ensino fundamental completo */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'lvynt86i' /* Ensino médiio completo */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'eur8h0kh' /* Ensino superior completo */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'm10ha0nj' /* Ensino fundamental incompleto */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'csrvq6pn' /* Ensino médio incompleto */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'tb0j8o1f' /* Ensino superior incompleto */,
                                                                                        )
                                                                                      ],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwNivelInstrucaoValue = val),
                                                                                      height: 60.0,
                                                                                      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      hintText: FFLocalizations.of(context).getText(
                                                                                        '0wrilaus' /* Grau ou Nível de instruição */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        '4thgagtf' /* Father's Situation */,
                                                                                      ),
                                                                                      icon: Icon(
                                                                                        Icons.keyboard_arrow_down_rounded,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      elevation: 2.0,
                                                                                      borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                      borderWidth: 2.0,
                                                                                      borderRadius: 8.0,
                                                                                      margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                      hidesUnderline: true,
                                                                                      isOverButton: false,
                                                                                      isSearchable: true,
                                                                                      isMultiSelect: false,
                                                                                    ),
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 13.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Form(
                                                                      key: _model
                                                                          .formKey1,
                                                                      autovalidateMode:
                                                                          AutovalidateMode
                                                                              .disabled,
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: SizedBox(
                                                                                    width: 200.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtMembrosEnderecosAddTextController,
                                                                                      focusNode: _model.txtMembrosEnderecosAddFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.txtMembrosEnderecosAddTextController',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'uw8i01r5' /* Endereço Completo */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '97izofel' /* Endereço Completo */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: const BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.txtMembrosEnderecosAddTextController!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.txtMembrosEnderecosAddTextController?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.clear,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.txtMembrosEnderecosAddTextControllerValidator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                FlutterFlowIconButton(
                                                                                  borderRadius: 30.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).primary,
                                                                                  icon: Icon(
                                                                                    Icons.add_rounded,
                                                                                    color: FlutterFlowTheme.of(context).info,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('MODAL_ADD_MEMBROS_add_rounded_ICN_ON_TAP');
                                                                                    if (_model.txtMembrosEnderecosAddTextController.text != '') {
                                                                                      _model.addToMembrosEnderecos(_model.txtMembrosEnderecosAddTextController.text);
                                                                                      safeSetState(() {});
                                                                                      safeSetState(() {
                                                                                        _model.txtMembrosEnderecosAddTextController?.text = _model.membrosLimpar!;
                                                                                        _model.txtMembrosEnderecosAddTextController?.selection = TextSelection.collapsed(offset: _model.txtMembrosEnderecosAddTextController!.text.length);
                                                                                      });
                                                                                    } else {
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            'Informação de Endereço em branco !',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                          ),
                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                        ),
                                                                                      );
                                                                                    }
                                                                                  },
                                                                                ),
                                                                              ].divide(const SizedBox(width: 10.0)),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final listMembrosEnderecos = _model.membrosEnderecos.toList().take(4).toList();

                                                                                  return SingleChildScrollView(
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: List.generate(listMembrosEnderecos.length, (listMembrosEnderecosIndex) {
                                                                                        final listMembrosEnderecosItem = listMembrosEnderecos[listMembrosEnderecosIndex];
                                                                                        return Align(
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: BoxDecoration(
                                                                                              borderRadius: BorderRadius.circular(10.0),
                                                                                              shape: BoxShape.rectangle,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                    child: SingleChildScrollView(
                                                                                                      scrollDirection: Axis.horizontal,
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Align(
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 3.0, 0.0),
                                                                                                              child: Text(
                                                                                                                listMembrosEnderecosItem,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Align(
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                logFirebaseEvent('MODAL_ADD_MEMBROS_Icon_9l4zc2l7_ON_TAP');
                                                                                                                _model.removeAtIndexFromMembrosEnderecos(listMembrosEnderecosIndex);
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                              child: Icon(
                                                                                                                Icons.do_not_disturb_on_rounded,
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                size: 24.0,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }).divide(const SizedBox(width: 10.0)),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                FlutterFlowRadioButton(
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '7tegc2gd' /* Nascido no Brasil */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'j7uzqdk2' /* Naturalizado Brasileiro */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'usfossjo' /* Estrangeiro */,
                                                                                    )
                                                                                  ].toList(),
                                                                                  onChanged: (val) => safeSetState(() {}),
                                                                                  controller: _model.rbNacionalidadeValueController ??= FormFieldController<String>(FFLocalizations.of(context).getText(
                                                                                    'ob87x68k' /* Nascido no Brasil */,
                                                                                  )),
                                                                                  optionHeight: 32.0,
                                                                                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  buttonPosition: RadioButtonPosition.left,
                                                                                  direction: Axis.horizontal,
                                                                                  radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                                  inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                  toggleable: false,
                                                                                  horizontalAlignment: WrapAlignment.start,
                                                                                  verticalAlignment: WrapCrossAlignment.start,
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 4,
                                                                                  child: FutureBuilder<List<EstadosRow>>(
                                                                                    future: EstadosTable().queryRows(
                                                                                      queryFn: (q) => q,
                                                                                    ),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<EstadosRow> ddwEstadoEstadosRowList = snapshot.data!;

                                                                                      return FlutterFlowDropDown<int>(
                                                                                        controller: _model.ddwEstadoValueController ??= FormFieldController<int>(
                                                                                          _model.ddwEstadoValue ??= 27,
                                                                                        ),
                                                                                        options: List<int>.from(ddwEstadoEstadosRowList.map((e) => e.estadoId).toList()),
                                                                                        optionLabels: ddwEstadoEstadosRowList.map((e) => e.sigla).withoutNulls.toList(),
                                                                                        onChanged: (val) => safeSetState(() => _model.ddwEstadoValue = val),
                                                                                        height: 60.0,
                                                                                        searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'baq5xyzk' /* Estado */,
                                                                                        ),
                                                                                        searchHintText: FFLocalizations.of(context).getText(
                                                                                          '8h8sdizg' /* Search... */,
                                                                                        ),
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        elevation: 2.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                        borderWidth: 2.0,
                                                                                        borderRadius: 8.0,
                                                                                        margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                        hidesUnderline: true,
                                                                                        isOverButton: false,
                                                                                        isSearchable: true,
                                                                                        isMultiSelect: false,
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  flex: 4,
                                                                                  child: FutureBuilder<List<MunicipiosRow>>(
                                                                                    future: MunicipiosTable().queryRows(
                                                                                      queryFn: (q) => q.eq(
                                                                                        'estado_id',
                                                                                        _model.ddwEstadoValue,
                                                                                      ),
                                                                                    ),
                                                                                    builder: (context, snapshot) {
                                                                                      // Customize what your widget looks like when it's loading.
                                                                                      if (!snapshot.hasData) {
                                                                                        return Center(
                                                                                          child: SizedBox(
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            child: CircularProgressIndicator(
                                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                FlutterFlowTheme.of(context).primary,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      }
                                                                                      List<MunicipiosRow> ddwMunicipioMunicipiosRowList = snapshot.data!;

                                                                                      return FlutterFlowDropDown<int>(
                                                                                        controller: _model.ddwMunicipioValueController ??= FormFieldController<int>(
                                                                                          _model.ddwMunicipioValue ??= 0,
                                                                                        ),
                                                                                        options: List<int>.from(ddwMunicipioMunicipiosRowList.map((e) => e.municipioId).withoutNulls.toList()),
                                                                                        optionLabels: ddwMunicipioMunicipiosRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                        onChanged: (val) => safeSetState(() => _model.ddwMunicipioValue = val),
                                                                                        height: 60.0,
                                                                                        searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'l7659gs2' /* Municipio */,
                                                                                        ),
                                                                                        searchHintText: FFLocalizations.of(context).getText(
                                                                                          'd6sdnxoa' /* Search... */,
                                                                                        ),
                                                                                        icon: Icon(
                                                                                          Icons.keyboard_arrow_down_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        elevation: 2.0,
                                                                                        borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                        borderWidth: 2.0,
                                                                                        borderRadius: 8.0,
                                                                                        margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                        hidesUnderline: true,
                                                                                        isOverButton: false,
                                                                                        isSearchable: true,
                                                                                        isMultiSelect: false,
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 10.0)),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 6,
                                                                                  child: SizedBox(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    child: Autocomplete<String>(
                                                                                      initialValue: const TextEditingValue(),
                                                                                      optionsBuilder: (textEditingValue) {
                                                                                        if (textEditingValue.text == '') {
                                                                                          return const Iterable<String>.empty();
                                                                                        }
                                                                                        return [
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'lz0njodx' /* Option 1 */,
                                                                                          )
                                                                                        ].where((option) {
                                                                                          final lowercaseOption = option.toLowerCase();
                                                                                          return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                                        });
                                                                                      },
                                                                                      optionsViewBuilder: (context, onSelected, options) {
                                                                                        return AutocompleteOptionsList(
                                                                                          textFieldKey: _model.txtMembroHistoricoKey,
                                                                                          textController: _model.txtMembroHistoricoTextController!,
                                                                                          options: options.toList(),
                                                                                          onSelected: onSelected,
                                                                                          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          textHighlightStyle: const TextStyle(),
                                                                                          elevation: 4.0,
                                                                                          optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          optionHighlightColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          maxHeight: 200.0,
                                                                                        );
                                                                                      },
                                                                                      onSelected: (String selection) {
                                                                                        safeSetState(() => _model.txtMembroHistoricoSelectedOption = selection);
                                                                                        FocusScope.of(context).unfocus();
                                                                                      },
                                                                                      fieldViewBuilder: (
                                                                                        context,
                                                                                        textEditingController,
                                                                                        focusNode,
                                                                                        onEditingComplete,
                                                                                      ) {
                                                                                        _model.txtMembroHistoricoFocusNode = focusNode;

                                                                                        _model.txtMembroHistoricoTextController = textEditingController;
                                                                                        return TextFormField(
                                                                                          key: _model.txtMembroHistoricoKey,
                                                                                          controller: textEditingController,
                                                                                          focusNode: focusNode,
                                                                                          onEditingComplete: onEditingComplete,
                                                                                          onChanged: (_) => EasyDebounce.debounce(
                                                                                            '_model.txtMembroHistoricoTextController',
                                                                                            const Duration(milliseconds: 2000),
                                                                                            () => safeSetState(() {}),
                                                                                          ),
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                              'awnrzzus' /* Histórico */,
                                                                                            ),
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            alignLabelWithHint: true,
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              'o7r2rdc8' /* Histórico */,
                                                                                            ),
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            filled: true,
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                            suffixIcon: _model.txtMembroHistoricoTextController!.text.isNotEmpty
                                                                                                ? InkWell(
                                                                                                    onTap: () async {
                                                                                                      _model.txtMembroHistoricoTextController?.clear();
                                                                                                      safeSetState(() {});
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.clear,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  )
                                                                                                : null,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          maxLines: 20,
                                                                                          keyboardType: TextInputType.multiline,
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtMembroHistoricoTextControllerValidator.asValidator(context),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ].divide(const SizedBox(width: 10.0)),
                                                                            ),
                                                                          ].divide(const SizedBox(height: 13.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            16.0),
                                                                child:
                                                                    SingleChildScrollView(
                                                                  primary:
                                                                      false,
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              12.0,
                                                                              0.0,
                                                                              12.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '4z7rsy3e' /* Informe os dados sobre o membr... */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Form(
                                                                          key: _model
                                                                              .formKey5,
                                                                          autovalidateMode:
                                                                              AutovalidateMode.disabled,
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            primary:
                                                                                false,
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 5,
                                                                                      child: FutureBuilder<List<FaccoesRow>>(
                                                                                        future: FaccoesTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<FaccoesRow> ddwMembroFaccaoFaccoesRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwMembroFaccaoValueController ??= FormFieldController<int>(
                                                                                              _model.ddwMembroFaccaoValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwMembroFaccaoFaccoesRowList.map((e) => e.faccaoId).toList()),
                                                                                            optionLabels: ddwMembroFaccaoFaccoesRowList
                                                                                                .map((e) => valueOrDefault<String>(
                                                                                                      e.nome,
                                                                                                      'nome_faccao',
                                                                                                    ))
                                                                                                .toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwMembroFaccaoValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              'qrs0yx4b' /* Facções */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'xcc9fckm' /* Search... */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 10,
                                                                                      child: Autocomplete<String>(
                                                                                        initialValue: const TextEditingValue(),
                                                                                        optionsBuilder: (textEditingValue) {
                                                                                          if (textEditingValue.text == '') {
                                                                                            return const Iterable<String>.empty();
                                                                                          }
                                                                                          return [
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '8j1rka5p' /* Option 1 */,
                                                                                            )
                                                                                          ].where((option) {
                                                                                            final lowercaseOption = option.toLowerCase();
                                                                                            return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                                          });
                                                                                        },
                                                                                        optionsViewBuilder: (context, onSelected, options) {
                                                                                          return AutocompleteOptionsList(
                                                                                            textFieldKey: _model.txtFaccaoBastismoKey,
                                                                                            textController: _model.txtFaccaoBastismoTextController!,
                                                                                            options: options.toList(),
                                                                                            onSelected: onSelected,
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textHighlightStyle: const TextStyle(),
                                                                                            elevation: 4.0,
                                                                                            optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            optionHighlightColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            maxHeight: 200.0,
                                                                                          );
                                                                                        },
                                                                                        onSelected: (String selection) {
                                                                                          safeSetState(() => _model.txtFaccaoBastismoSelectedOption = selection);
                                                                                          FocusScope.of(context).unfocus();
                                                                                        },
                                                                                        fieldViewBuilder: (
                                                                                          context,
                                                                                          textEditingController,
                                                                                          focusNode,
                                                                                          onEditingComplete,
                                                                                        ) {
                                                                                          _model.txtFaccaoBastismoFocusNode = focusNode;

                                                                                          _model.txtFaccaoBastismoTextController = textEditingController;
                                                                                          return TextFormField(
                                                                                            key: _model.txtFaccaoBastismoKey,
                                                                                            controller: textEditingController,
                                                                                            focusNode: focusNode,
                                                                                            onEditingComplete: onEditingComplete,
                                                                                            onChanged: (_) => EasyDebounce.debounce(
                                                                                              '_model.txtFaccaoBastismoTextController',
                                                                                              const Duration(milliseconds: 2000),
                                                                                              () => safeSetState(() {}),
                                                                                            ),
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                                'wkak4lxs' /* Batismo */,
                                                                                              ),
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              alignLabelWithHint: true,
                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                'pm0rvser' /* Batismo */,
                                                                                              ),
                                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                              ),
                                                                                              errorBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                              ),
                                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                              ),
                                                                                              filled: true,
                                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                              suffixIcon: _model.txtFaccaoBastismoTextController!.text.isNotEmpty
                                                                                                  ? InkWell(
                                                                                                      onTap: () async {
                                                                                                        _model.txtFaccaoBastismoTextController?.clear();
                                                                                                        safeSetState(() {});
                                                                                                      },
                                                                                                      child: const Icon(
                                                                                                        Icons.clear,
                                                                                                        size: 24.0,
                                                                                                      ),
                                                                                                    )
                                                                                                  : null,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtFaccaoBastismoTextControllerValidator.asValidator(context),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 10,
                                                                                      child: TextFormField(
                                                                                        controller: _model.txtFacaoLocalBastismoTextController,
                                                                                        focusNode: _model.txtFacaoLocalBastismoFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.txtFacaoLocalBastismoTextController',
                                                                                          const Duration(milliseconds: 2000),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'v5ktssho' /* Local do Batismo */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          alignLabelWithHint: true,
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            '344g39wc' /* Local do Batismo */,
                                                                                          ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          filled: true,
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                          suffixIcon: _model.txtFacaoLocalBastismoTextController!.text.isNotEmpty
                                                                                              ? InkWell(
                                                                                                  onTap: () async {
                                                                                                    _model.txtFacaoLocalBastismoTextController?.clear();
                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                  child: const Icon(
                                                                                                    Icons.clear,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                )
                                                                                              : null,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                        validator: _model.txtFacaoLocalBastismoTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 10,
                                                                                      child: TextFormField(
                                                                                        controller: _model.txtMembrosFaccaoPadrinhoTextController,
                                                                                        focusNode: _model.txtMembrosFaccaoPadrinhoFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.txtMembrosFaccaoPadrinhoTextController',
                                                                                          const Duration(milliseconds: 2000),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'cteddjhn' /* Padrinho */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          alignLabelWithHint: true,
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'zntstdx4' /* Padrinho */,
                                                                                          ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          filled: true,
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                          suffixIcon: _model.txtMembrosFaccaoPadrinhoTextController!.text.isNotEmpty
                                                                                              ? InkWell(
                                                                                                  onTap: () async {
                                                                                                    _model.txtMembrosFaccaoPadrinhoTextController?.clear();
                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                  child: const Icon(
                                                                                                    Icons.clear,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                )
                                                                                              : null,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                        validator: _model.txtMembrosFaccaoPadrinhoTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 10,
                                                                                      child: TextFormField(
                                                                                        controller: _model.txtMembroFaccaoSenhaTextController,
                                                                                        focusNode: _model.txtMembroFaccaoSenhaFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.txtMembroFaccaoSenhaTextController',
                                                                                          const Duration(milliseconds: 2000),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'uylgtxfb' /* Senha */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          alignLabelWithHint: true,
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'h7acv992' /* Senha */,
                                                                                          ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          filled: true,
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                          suffixIcon: _model.txtMembroFaccaoSenhaTextController!.text.isNotEmpty
                                                                                              ? InkWell(
                                                                                                  onTap: () async {
                                                                                                    _model.txtMembroFaccaoSenhaTextController?.clear();
                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                  child: const Icon(
                                                                                                    Icons.clear,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                )
                                                                                              : null,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                        validator: _model.txtMembroFaccaoSenhaTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<CargosRow>>(
                                                                                        future: CargosTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<CargosRow> ddwMembroFaccaoCargoAtualCargosRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwMembroFaccaoCargoAtualValueController ??= FormFieldController<int>(
                                                                                              _model.ddwMembroFaccaoCargoAtualValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwMembroFaccaoCargoAtualCargosRowList.map((e) => e.cargoId).toList()),
                                                                                            optionLabels: ddwMembroFaccaoCargoAtualCargosRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwMembroFaccaoCargoAtualValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '5xrtyank' /* Cargo atual */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'u231jvsq' /* Marital status */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<CargosRow>>(
                                                                                        future: CargosTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<CargosRow> ddwMembroFaccaoCargoAnteriorCargosRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwMembroFaccaoCargoAnteriorValueController ??= FormFieldController<int>(
                                                                                              _model.ddwMembroFaccaoCargoAnteriorValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwMembroFaccaoCargoAnteriorCargosRowList.map((e) => e.cargoId).toList()),
                                                                                            optionLabels: ddwMembroFaccaoCargoAnteriorCargosRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwMembroFaccaoCargoAnteriorValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              'uhi29t9v' /* Cargo anterior */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'bfv93uyj' /* Marital status */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<FuncoesRow>>(
                                                                                        future: FuncoesTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<FuncoesRow> ddwFaccaoFuncaoAtualFuncoesRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwFaccaoFuncaoAtualValueController ??= FormFieldController<int>(
                                                                                              _model.ddwFaccaoFuncaoAtualValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwFaccaoFuncaoAtualFuncoesRowList.map((e) => e.funcaoId).toList()),
                                                                                            optionLabels: ddwFaccaoFuncaoAtualFuncoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwFaccaoFuncaoAtualValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '0c8h6wz9' /* Função atual */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'qc1gohjk' /* Mother's Situation */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<FuncoesRow>>(
                                                                                        future: FuncoesTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<FuncoesRow> ddwFaccaoFuncaoAnteriorFuncoesRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwFaccaoFuncaoAnteriorValueController ??= FormFieldController<int>(
                                                                                              _model.ddwFaccaoFuncaoAnteriorValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwFaccaoFuncaoAnteriorFuncoesRowList.map((e) => e.funcaoId).toList()),
                                                                                            optionLabels: ddwFaccaoFuncaoAnteriorFuncoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwFaccaoFuncaoAnteriorValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '8c2yoabs' /* Função anterior */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'xtghmnhj' /* Função anterior */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: TextFormField(
                                                                                        controller: _model.txtFaccaoTresLocaisAddTextController,
                                                                                        focusNode: _model.txtFaccaoTresLocaisAddFocusNode,
                                                                                        onChanged: (_) => EasyDebounce.debounce(
                                                                                          '_model.txtFaccaoTresLocaisAddTextController',
                                                                                          const Duration(milliseconds: 2000),
                                                                                          () => safeSetState(() {}),
                                                                                        ),
                                                                                        autofocus: false,
                                                                                        obscureText: false,
                                                                                        decoration: InputDecoration(
                                                                                          labelText: FFLocalizations.of(context).getText(
                                                                                            'm25toomj' /* Três últimos locais onde estev... */,
                                                                                          ),
                                                                                          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          hintText: FFLocalizations.of(context).getText(
                                                                                            'xroteapo' /* Três últimos locais onde estev... */,
                                                                                          ),
                                                                                          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          enabledBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          errorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          focusedErrorBorder: OutlineInputBorder(
                                                                                            borderSide: BorderSide(
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(12.0),
                                                                                          ),
                                                                                          filled: true,
                                                                                          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                          suffixIcon: _model.txtFaccaoTresLocaisAddTextController!.text.isNotEmpty
                                                                                              ? InkWell(
                                                                                                  onTap: () async {
                                                                                                    _model.txtFaccaoTresLocaisAddTextController?.clear();
                                                                                                    safeSetState(() {});
                                                                                                  },
                                                                                                  child: const Icon(
                                                                                                    Icons.clear,
                                                                                                    size: 24.0,
                                                                                                  ),
                                                                                                )
                                                                                              : null,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                        validator: _model.txtFaccaoTresLocaisAddTextControllerValidator.asValidator(context),
                                                                                      ),
                                                                                    ),
                                                                                    FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 30.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).primary,
                                                                                      icon: Icon(
                                                                                        Icons.add_rounded,
                                                                                        color: FlutterFlowTheme.of(context).info,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        logFirebaseEvent('MODAL_ADD_MEMBROS_add_rounded_ICN_ON_TAP');
                                                                                        if (_model.txtFaccaoTresLocaisAddTextController.text != '') {
                                                                                          _model.addToMembrosFaccaoTresLocais(_model.txtFaccaoTresLocaisAddTextController.text);
                                                                                          safeSetState(() {});
                                                                                          safeSetState(() {
                                                                                            _model.txtFaccaoTresLocaisAddTextController?.text = _model.membrosLimpar!;
                                                                                          });
                                                                                        } else {
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Informação de Local em branco !',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                ),
                                                                                              ),
                                                                                              duration: const Duration(milliseconds: 4000),
                                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                      },
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 7,
                                                                                      child: Builder(
                                                                                        builder: (context) {
                                                                                          final childenTresLocais = _model.membrosFaccaoTresLocais.toList().take(3).toList();

                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: List.generate(childenTresLocais.length, (childenTresLocaisIndex) {
                                                                                              final childenTresLocaisItem = childenTresLocais[childenTresLocaisIndex];
                                                                                              return Expanded(
                                                                                                child: Container(
                                                                                                  constraints: const BoxConstraints(
                                                                                                    minWidth: 200.0,
                                                                                                    minHeight: 40.0,
                                                                                                    maxWidth: 200.0,
                                                                                                    maxHeight: 40.0,
                                                                                                  ),
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                                    border: Border.all(
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      width: 2.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                                                    children: [
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          Expanded(
                                                                                                            child: Align(
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 3.0, 0.0),
                                                                                                                child: SelectionArea(
                                                                                                                    child: Text(
                                                                                                                  childenTresLocaisItem,
                                                                                                                  textAlign: TextAlign.center,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                )),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Align(
                                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                            child: InkWell(
                                                                                                              splashColor: Colors.transparent,
                                                                                                              focusColor: Colors.transparent,
                                                                                                              hoverColor: Colors.transparent,
                                                                                                              highlightColor: Colors.transparent,
                                                                                                              onTap: () async {
                                                                                                                logFirebaseEvent('MODAL_ADD_MEMBROS_Icon_zcdxsxk7_ON_TAP');
                                                                                                                _model.removeAtIndexFromMembrosFaccaoTresLocais(childenTresLocaisIndex);
                                                                                                                safeSetState(() {});
                                                                                                              },
                                                                                                              child: Icon(
                                                                                                                Icons.do_not_disturb_on_rounded,
                                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                                size: 24.0,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            }).divide(const SizedBox(width: 5.0)),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<FaccoesRow>>(
                                                                                        future: FaccoesTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<FaccoesRow> ddwFaccaoIntegrouFaccoesRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwFaccaoIntegrouValueController ??= FormFieldController<int>(
                                                                                              _model.ddwFaccaoIntegrouValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwFaccaoIntegrouFaccoesRowList.map((e) => e.faccaoId).toList()),
                                                                                            optionLabels: ddwFaccaoIntegrouFaccoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwFaccaoIntegrouValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '8uf1jitv' /* Facção que integrou */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'fzkhhi3x' /* Facção que integrou */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<FaccoesRow>>(
                                                                                        future: FaccoesTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<FaccoesRow> ddwFaccaoAliadaFaccoesRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwFaccaoAliadaValueController ??= FormFieldController<int>(
                                                                                              _model.ddwFaccaoAliadaValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwFaccaoAliadaFaccoesRowList.map((e) => e.faccaoId).toList()),
                                                                                            optionLabels: ddwFaccaoAliadaFaccoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwFaccaoAliadaValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '4i6g2oa6' /* Facção aliada */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'rnawpmov' /* Father's Situation */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      flex: 3,
                                                                                      child: FutureBuilder<List<FaccoesRow>>(
                                                                                        future: FaccoesTable().queryRows(
                                                                                          queryFn: (q) => q,
                                                                                        ),
                                                                                        builder: (context, snapshot) {
                                                                                          // Customize what your widget looks like when it's loading.
                                                                                          if (!snapshot.hasData) {
                                                                                            return Center(
                                                                                              child: SizedBox(
                                                                                                width: 50.0,
                                                                                                height: 50.0,
                                                                                                child: CircularProgressIndicator(
                                                                                                  valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                    FlutterFlowTheme.of(context).primary,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          }
                                                                                          List<FaccoesRow> ddwFaccaoInimigaFaccoesRowList = snapshot.data!;

                                                                                          return FlutterFlowDropDown<int>(
                                                                                            controller: _model.ddwFaccaoInimigaValueController ??= FormFieldController<int>(
                                                                                              _model.ddwFaccaoInimigaValue ??= 0,
                                                                                            ),
                                                                                            options: List<int>.from(ddwFaccaoInimigaFaccoesRowList.map((e) => e.faccaoId).toList()),
                                                                                            optionLabels: ddwFaccaoInimigaFaccoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwFaccaoInimigaValue = val),
                                                                                            height: 60.0,
                                                                                            searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '2rfuge4k' /* Facção Inimiga */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              '03pc9yaz' /* Facção Inimiga */,
                                                                                            ),
                                                                                            icon: Icon(
                                                                                              Icons.keyboard_arrow_down_rounded,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            elevation: 2.0,
                                                                                            borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                            borderWidth: 2.0,
                                                                                            borderRadius: 8.0,
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 15.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Form(
                                                                    key: _model
                                                                        .formKey4,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .disabled,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          13.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4trmbq2b' /* Informe os dados sobre os Proc... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                flex: 6,
                                                                                child: TextFormField(
                                                                                  controller: _model.txtProcedimentoNoTextController,
                                                                                  focusNode: _model.txtProcedimentoNoFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.txtProcedimentoNoTextController',
                                                                                    const Duration(milliseconds: 2000),
                                                                                    () => safeSetState(() {}),
                                                                                  ),
                                                                                  autofocus: false,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: FFLocalizations.of(context).getText(
                                                                                      'ehpi1bdt' /* Procedimento */,
                                                                                    ),
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    alignLabelWithHint: true,
                                                                                    hintText: FFLocalizations.of(context).getText(
                                                                                      'cqb8a5yu' /* Procedimento */,
                                                                                    ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    filled: true,
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                    suffixIcon: _model.txtProcedimentoNoTextController!.text.isNotEmpty
                                                                                        ? InkWell(
                                                                                            onTap: () async {
                                                                                              _model.txtProcedimentoNoTextController?.clear();
                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: const Icon(
                                                                                              Icons.clear,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          )
                                                                                        : null,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.number,
                                                                                  cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                  validator: _model.txtProcedimentoNoTextControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<String>(
                                                                                  controller: _model.ddwProcedimentoUnidadeValueController ??= FormFieldController<String>(null),
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'a1mq04vz' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ptm9fsnl' /* Delegacia Local */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ewv0wp4u' /* Delegacia Especializada */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'tfba3ok1' /* Delegacia Regional */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcedimentoUnidadeValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'p4l0yjdk' /* Unidade */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'ugrmtsta' /* Search... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<String>(
                                                                                  controller: _model.ddwProcedimentoTipoValueController ??= FormFieldController<String>(null),
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '2oi2gd2o' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'fqtt5evw' /* IPL. Portaria */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'nlsyfr82' /* IPL. Flagrante */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '1sk13k9j' /* T.C.O */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcedimentoTipoValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'z4wg64u9' /* Tipo do procedimento */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'cd6xrkst' /* Search... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<String>(
                                                                                  controller: _model.ddwProcedimentoCrimeValueController ??= FormFieldController<String>(null),
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'sgflhc8f' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '6pi3pms7' /* Tráfico de drogas */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '5zqnvie0' /* Roubo Qualificado */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ohxl9bc7' /* Lesão Corporal */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '1zj80s5y' /* Homicídio */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcedimentoCrimeValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '86bdc01p' /* Crime */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'bqng7ebw' /* Search... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 3,
                                                                                child: TextFormField(
                                                                                  controller: _model.txtProcedimentoDataTextController,
                                                                                  focusNode: _model.txtProcedimentoDataFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.txtProcedimentoDataTextController',
                                                                                    const Duration(milliseconds: 2000),
                                                                                    () => safeSetState(() {}),
                                                                                  ),
                                                                                  autofocus: false,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: FFLocalizations.of(context).getText(
                                                                                      'kkjjfns6' /* Data do Procedimento */,
                                                                                    ),
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    alignLabelWithHint: true,
                                                                                    hintText: FFLocalizations.of(context).getText(
                                                                                      'y539pnv4' /* Data do Procedimento */,
                                                                                    ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    filled: true,
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                    suffixIcon: _model.txtProcedimentoDataTextController!.text.isNotEmpty
                                                                                        ? InkWell(
                                                                                            onTap: () async {
                                                                                              _model.txtProcedimentoDataTextController?.clear();
                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: const Icon(
                                                                                              Icons.clear,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          )
                                                                                        : null,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.datetime,
                                                                                  cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                  validator: _model.txtProcedimentoDataTextControllerValidator.asValidator(context),
                                                                                  inputFormatters: [
                                                                                    _model.txtProcedimentoDataMask
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              FlutterFlowIconButton(
                                                                                borderRadius: 8.0,
                                                                                buttonSize: 40.0,
                                                                                fillColor: FlutterFlowTheme.of(context).primary,
                                                                                icon: Icon(
                                                                                  Icons.calendar_month_outlined,
                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                  size: 24.0,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_calendar_month_outline');
                                                                                  final datePickedDate = await showDatePicker(
                                                                                    context: context,
                                                                                    initialDate: getCurrentTimestamp,
                                                                                    firstDate: DateTime(1900),
                                                                                    lastDate: getCurrentTimestamp,
                                                                                    builder: (context, child) {
                                                                                      return wrapInMaterialDatePickerTheme(
                                                                                        context,
                                                                                        child!,
                                                                                        headerBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                        headerForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                        headerTextStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              fontSize: 32.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                        pickerBackgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        pickerForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                        selectedDateTimeBackgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                        selectedDateTimeForegroundColor: FlutterFlowTheme.of(context).info,
                                                                                        actionButtonForegroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                        iconSize: 24.0,
                                                                                      );
                                                                                    },
                                                                                  );

                                                                                  if (datePickedDate != null) {
                                                                                    safeSetState(() {
                                                                                      _model.datePicked = DateTime(
                                                                                        datePickedDate.year,
                                                                                        datePickedDate.month,
                                                                                        datePickedDate.day,
                                                                                      );
                                                                                    });
                                                                                  }
                                                                                },
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children:
                                                                                [
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_LIMPAR_PROCEDIMENTOS_A');
                                                                                  _model.membrosProcedimentos = [];
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  '5mm0nr5l' /* Limpar procedimentos abaixo */,
                                                                                ),
                                                                                icon: const Icon(
                                                                                  Icons.remove_outlined,
                                                                                  size: 15.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).overlay0,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_ADICIONAR_BTN_ON_TAP');
                                                                                  _model.addToMembrosProcedimentos(DataTypesProcedimentosStruct(
                                                                                    procedimentoNo: _model.txtProcedimentoNoTextController.text,
                                                                                    procedimentoTipo: _model.ddwProcedimentoTipoValue,
                                                                                    unidade: _model.ddwProcedimentoUnidadeValue,
                                                                                    crime: _model.ddwProcedimentoCrimeValue,
                                                                                    data: _model.datePicked,
                                                                                  ));
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  '8pxnhql5' /* Adicionar */,
                                                                                ),
                                                                                icon: const Icon(
                                                                                  Icons.add_rounded,
                                                                                  size: 24.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 13.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        ListView(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      children: [
                                                                        StickyHeader(
                                                                          overlapHeaders:
                                                                              false,
                                                                          header:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 36.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                  ))
                                                                                    Container(
                                                                                      width: 39.0,
                                                                                      height: 100.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                    tabletLandscape: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'g3vpoxn0' /* Procedimento */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            '6vsm4hcv' /* Unidade */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '1rnrt2ya' /* Tipo de Procedimento: */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '7esylq1a' /* Crime */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                    tabletLandscape: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '8m6o6goq' /* Data */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 24.0,
                                                                                      height: 100.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          content:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      boxShadow: const [
                                                                                        BoxShadow(
                                                                                          blurRadius: 3.0,
                                                                                          color: Color(0x20000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            1.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final childrenProcedimentos = _model.membrosProcedimentos.toList();

                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: List.generate(childrenProcedimentos.length, (childrenProcedimentosIndex) {
                                                                                            final childrenProcedimentosItem = childrenProcedimentos[childrenProcedimentosIndex];
                                                                                            return Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              childrenProcedimentosItem.procedimentoNo,
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Container(
                                                                                                            width: 100.0,
                                                                                                            height: 26.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            ),
                                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Visibility(
                                                                                                              visible: responsiveVisibility(
                                                                                                                context: context,
                                                                                                                phone: false,
                                                                                                                tablet: false,
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  childrenProcedimentosItem.unidade,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        if (responsiveVisibility(
                                                                                                          context: context,
                                                                                                          phone: false,
                                                                                                          tablet: false,
                                                                                                        ))
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                childrenProcedimentosItem.procedimentoTipo,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        if (responsiveVisibility(
                                                                                                          context: context,
                                                                                                          phone: false,
                                                                                                          tablet: false,
                                                                                                        ))
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                childrenProcedimentosItem.crime,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                width: 130.0,
                                                                                                                height: 32.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).accent2,
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                  border: Border.all(
                                                                                                                    color: FlutterFlowTheme.of(context).secondary,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Padding(
                                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                                                    child: Text(
                                                                                                                      dateTimeFormat(
                                                                                                                        "d/M/y",
                                                                                                                        childrenProcedimentosItem.data!,
                                                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                                                      ),
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                                            letterSpacing: 0.0,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                                    child: InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        logFirebaseEvent('MODAL_ADD_MEMBROS_Icon_wakbomnr_ON_TAP');
                                                                                                        _model.removeAtIndexFromMembrosProcedimentos(childrenProcedimentosIndex);
                                                                                                        safeSetState(() {});
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.do_not_disturb_on_rounded,
                                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                                        size: 24.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          }),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Form(
                                                                    key: _model
                                                                        .formKey3,
                                                                    autovalidateMode:
                                                                        AutovalidateMode
                                                                            .disabled,
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '50bd7mi1' /* Informe os dados sobre os Proc... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                flex: 6,
                                                                                child: TextFormField(
                                                                                  controller: _model.txtProcessoNoAcaoPenalTextController,
                                                                                  focusNode: _model.txtProcessoNoAcaoPenalFocusNode,
                                                                                  onChanged: (_) => EasyDebounce.debounce(
                                                                                    '_model.txtProcessoNoAcaoPenalTextController',
                                                                                    const Duration(milliseconds: 2000),
                                                                                    () => safeSetState(() {}),
                                                                                  ),
                                                                                  autofocus: false,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    labelText: FFLocalizations.of(context).getText(
                                                                                      'ig1tpcu8' /* Nº da ação Penal */,
                                                                                    ),
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    alignLabelWithHint: true,
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 2.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    filled: true,
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                                    suffixIcon: _model.txtProcessoNoAcaoPenalTextController!.text.isNotEmpty
                                                                                        ? InkWell(
                                                                                            onTap: () async {
                                                                                              _model.txtProcessoNoAcaoPenalTextController?.clear();
                                                                                              safeSetState(() {});
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.clear,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          )
                                                                                        : null,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  keyboardType: TextInputType.number,
                                                                                  cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                  validator: _model.txtProcessoNoAcaoPenalTextControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<String>(
                                                                                  controller: _model.ddwProcessoVaraValueController ??= FormFieldController<String>(null),
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'on8d1j5b' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '3y3arw03' /* 1ª VARA PENAL */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '2ad97h60' /* 2ª VARA PENAL */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '62uy1ula' /* 3ª VARA PENAL */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcessoVaraValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '52tqxh7t' /* Vara */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'f81efpi5' /* Search ... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<String>(
                                                                                  controller: _model.ddwProcessoSituacaoJuridicaValueController ??= FormFieldController<String>(null),
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '9ntgj4nz' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '9krzgpyy' /* Condenado */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'veeirmiy' /* Provisório */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '85dco8ds' /* Aguardando Sentença */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcessoSituacaoJuridicaValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'njzw806d' /* Situação jurídica */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'p7i3qgzk' /* Search... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<String>(
                                                                                  controller: _model.ddwProcessoRegimeValueController ??= FormFieldController<String>(null),
                                                                                  options: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'eskukxtn' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '3ucnkzsn' /* Fechado */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '9ogzdq4x' /* Semi-aberto */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcessoRegimeValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'gjnab6i2' /* Regime */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'zgtd0ndz' /* Search... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                flex: 5,
                                                                                child: FlutterFlowDropDown<int>(
                                                                                  controller: _model.ddwProcessoSituacaoReuValueController ??= FormFieldController<int>(
                                                                                    _model.ddwProcessoSituacaoReuValue ??= 0,
                                                                                  ),
                                                                                  options: List<int>.from([
                                                                                    0,
                                                                                    1,
                                                                                    2
                                                                                  ]),
                                                                                  optionLabels: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'tn9os876' /* Nenhuma das opções */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '6f4ajcmk' /* Fechado */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'wjr32pf6' /* Semi-aberto */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.ddwProcessoSituacaoReuValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'whrvcs43' /* Situação réu */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'dquf2f18' /* Search... */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_arrow_down_rounded,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  elevation: 2.0,
                                                                                  borderColor: FlutterFlowTheme.of(context).alternate,
                                                                                  borderWidth: 2.0,
                                                                                  borderRadius: 8.0,
                                                                                  margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children:
                                                                                [
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_COMP_LIMPAR_BTN_ON_TAP');
                                                                                  _model.membrosProcessos = [];
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  'tveo07et' /* Limpar */,
                                                                                ),
                                                                                icon: const Icon(
                                                                                  Icons.remove_outlined,
                                                                                  size: 15.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).overlay0,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_ADICIONAR_BTN_ON_TAP');
                                                                                  _model.addToMembrosProcessos(DataTypesProcessosStruct(
                                                                                    noAcaoPenal: _model.txtProcessoNoAcaoPenalTextController.text,
                                                                                    vara: _model.ddwProcessoVaraValue,
                                                                                    situacaoJuridica: _model.ddwProcessoSituacaoJuridicaValue,
                                                                                    regime: _model.ddwProcessoRegimeValue,
                                                                                    situacaoReu: _model.ddwProcessoSituacaoReuValue?.toString(),
                                                                                  ));
                                                                                  safeSetState(() {});
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  'vm7t0n6u' /* Adicionar */,
                                                                                ),
                                                                                icon: const Icon(
                                                                                  Icons.add_rounded,
                                                                                  size: 24.0,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(width: 10.0)),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 13.0)),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        ListView(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      primary:
                                                                          false,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      children: [
                                                                        StickyHeader(
                                                                          overlapHeaders:
                                                                              false,
                                                                          header:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                50.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 36.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                  ))
                                                                                    Container(
                                                                                      width: 39.0,
                                                                                      height: 100.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                    tabletLandscape: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'noufgwqe' /* Nº da ação Penal */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'xeuwwqlt' /* Vara */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '9t25cx0m' /* Situação jurídica */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'ptv8ms3l' /* Regime */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                    tablet: false,
                                                                                    tabletLandscape: false,
                                                                                  ))
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '670xv14p' /* Situação réu */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 24.0,
                                                                                      height: 100.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          content:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                                                                                  child: Container(
                                                                                    width: double.infinity,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      boxShadow: const [
                                                                                        BoxShadow(
                                                                                          blurRadius: 3.0,
                                                                                          color: Color(0x20000000),
                                                                                          offset: Offset(
                                                                                            0.0,
                                                                                            1.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      borderRadius: BorderRadius.circular(12.0),
                                                                                    ),
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final childrenProcessos = _model.membrosProcessos.toList();

                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: List.generate(childrenProcessos.length, (childrenProcessosIndex) {
                                                                                            final childrenProcessosItem = childrenProcessos[childrenProcessosIndex];
                                                                                            return Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              childrenProcessosItem.noAcaoPenal,
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Container(
                                                                                                            width: 100.0,
                                                                                                            height: 26.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                            ),
                                                                                                            alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                            child: Visibility(
                                                                                                              visible: responsiveVisibility(
                                                                                                                context: context,
                                                                                                                phone: false,
                                                                                                                tablet: false,
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                                child: Text(
                                                                                                                  childrenProcessosItem.vara,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                        letterSpacing: 0.0,
                                                                                                                      ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        if (responsiveVisibility(
                                                                                                          context: context,
                                                                                                          phone: false,
                                                                                                          tablet: false,
                                                                                                        ))
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                childrenProcessosItem.situacaoJuridica,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        if (responsiveVisibility(
                                                                                                          context: context,
                                                                                                          phone: false,
                                                                                                          tablet: false,
                                                                                                        ))
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                              child: Text(
                                                                                                                childrenProcessosItem.regime,
                                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                    ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        Expanded(
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                                                            children: [
                                                                                                              Expanded(
                                                                                                                child: Container(
                                                                                                                  height: 32.0,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    color: FlutterFlowTheme.of(context).accent2,
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                    border: Border.all(
                                                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Align(
                                                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                                      child: Text(
                                                                                                                        childrenProcessosItem.situacaoReu,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                                              letterSpacing: 0.0,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                                    child: InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        logFirebaseEvent('MODAL_ADD_MEMBROS_Icon_mt52g5ip_ON_TAP');
                                                                                                        _model.removeAtIndexFromMembrosProcessos(childrenProcessosIndex);
                                                                                                        safeSetState(() {});
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.do_not_disturb_on_rounded,
                                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                                        size: 24.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            );
                                                                                          }),
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '7v3qtjj2' /* Faça um resumo das principais ... */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        SizedBox(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      child: Autocomplete<
                                                                          String>(
                                                                        initialValue:
                                                                            const TextEditingValue(),
                                                                        optionsBuilder:
                                                                            (textEditingValue) {
                                                                          if (textEditingValue.text ==
                                                                              '') {
                                                                            return const Iterable<String>.empty();
                                                                          }
                                                                          return [
                                                                            FFLocalizations.of(context).getText(
                                                                              '8j1rka5p' /* Option 1 */,
                                                                            )
                                                                          ].where(
                                                                              (option) {
                                                                            final lowercaseOption =
                                                                                option.toLowerCase();
                                                                            return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                          });
                                                                        },
                                                                        optionsViewBuilder: (context,
                                                                            onSelected,
                                                                            options) {
                                                                          return AutocompleteOptionsList(
                                                                            textFieldKey:
                                                                                _model.txtMembroAtuacaoKey,
                                                                            textController:
                                                                                _model.txtMembroAtuacaoTextController!,
                                                                            options:
                                                                                options.toList(),
                                                                            onSelected:
                                                                                onSelected,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            textHighlightStyle:
                                                                                const TextStyle(),
                                                                            elevation:
                                                                                4.0,
                                                                            optionBackgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            optionHighlightColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            maxHeight:
                                                                                200.0,
                                                                          );
                                                                        },
                                                                        onSelected:
                                                                            (String
                                                                                selection) {
                                                                          safeSetState(() =>
                                                                              _model.txtMembroAtuacaoSelectedOption = selection);
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                        },
                                                                        fieldViewBuilder:
                                                                            (
                                                                          context,
                                                                          textEditingController,
                                                                          focusNode,
                                                                          onEditingComplete,
                                                                        ) {
                                                                          _model.txtMembroAtuacaoFocusNode =
                                                                              focusNode;

                                                                          _model.txtMembroAtuacaoTextController =
                                                                              textEditingController;
                                                                          return TextFormField(
                                                                            key:
                                                                                _model.txtMembroAtuacaoKey,
                                                                            controller:
                                                                                textEditingController,
                                                                            focusNode:
                                                                                focusNode,
                                                                            onEditingComplete:
                                                                                onEditingComplete,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.txtMembroAtuacaoTextController',
                                                                              const Duration(milliseconds: 2000),
                                                                              () => safeSetState(() {}),
                                                                            ),
                                                                            autofocus:
                                                                                false,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              isDense: true,
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                'ssjp267b' /* Atuação no Crime */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              alignLabelWithHint: true,
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'dak0lg3s' /* Atuação no Crime */,
                                                                              ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0x00000000),
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              filled: true,
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              contentPadding: const EdgeInsetsDirectional.fromSTEB(14.0, 24.0, 24.0, 24.0),
                                                                              suffixIcon: _model.txtMembroAtuacaoTextController!.text.isNotEmpty
                                                                                  ? InkWell(
                                                                                      onTap: () async {
                                                                                        _model.txtMembroAtuacaoTextController?.clear();
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.clear,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                    )
                                                                                  : null,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            maxLines:
                                                                                20,
                                                                            keyboardType:
                                                                                TextInputType.multiline,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            validator:
                                                                                _model.txtMembroAtuacaoTextControllerValidator.asValidator(context),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '3etmnyzt' /* Ativar alerta */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                      ),
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                        child: Switch
                                                                            .adaptive(
                                                                          value:
                                                                              _model.switchAlertaValue!,
                                                                          onChanged:
                                                                              (newValue) async {
                                                                            safeSetState(() =>
                                                                                _model.switchAlertaValue = newValue);
                                                                          },
                                                                          activeColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          activeTrackColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          inactiveTrackColor:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          inactiveThumbColor:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            16.0)),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        SizedBox(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      child: Autocomplete<
                                                                          String>(
                                                                        initialValue:
                                                                            const TextEditingValue(),
                                                                        optionsBuilder:
                                                                            (textEditingValue) {
                                                                          if (textEditingValue.text ==
                                                                              '') {
                                                                            return const Iterable<String>.empty();
                                                                          }
                                                                          return [
                                                                            FFLocalizations.of(context).getText(
                                                                              'buogb0wh' /* Option 1 */,
                                                                            )
                                                                          ].where(
                                                                              (option) {
                                                                            final lowercaseOption =
                                                                                option.toLowerCase();
                                                                            return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                          });
                                                                        },
                                                                        optionsViewBuilder: (context,
                                                                            onSelected,
                                                                            options) {
                                                                          return AutocompleteOptionsList(
                                                                            textFieldKey:
                                                                                _model.txtMembroAlertaKey,
                                                                            textController:
                                                                                _model.txtMembroAlertaTextController!,
                                                                            options:
                                                                                options.toList(),
                                                                            onSelected:
                                                                                onSelected,
                                                                            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            textHighlightStyle:
                                                                                const TextStyle(),
                                                                            elevation:
                                                                                4.0,
                                                                            optionBackgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            optionHighlightColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            maxHeight:
                                                                                200.0,
                                                                          );
                                                                        },
                                                                        onSelected:
                                                                            (String
                                                                                selection) {
                                                                          safeSetState(() =>
                                                                              _model.txtMembroAlertaSelectedOption = selection);
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                        },
                                                                        fieldViewBuilder:
                                                                            (
                                                                          context,
                                                                          textEditingController,
                                                                          focusNode,
                                                                          onEditingComplete,
                                                                        ) {
                                                                          _model.txtMembroAlertaFocusNode =
                                                                              focusNode;

                                                                          _model.txtMembroAlertaTextController =
                                                                              textEditingController;
                                                                          return TextFormField(
                                                                            key:
                                                                                _model.txtMembroAlertaKey,
                                                                            controller:
                                                                                textEditingController,
                                                                            focusNode:
                                                                                focusNode,
                                                                            onEditingComplete:
                                                                                onEditingComplete,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.txtMembroAlertaTextController',
                                                                              const Duration(milliseconds: 2000),
                                                                              () => safeSetState(() {}),
                                                                            ),
                                                                            autofocus:
                                                                                false,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              isDense: true,
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                '29530mgy' /* Alerta */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              alignLabelWithHint: true,
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'kx61gjir' /* Alerta */,
                                                                              ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0x00000000),
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 2.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              filled: true,
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              contentPadding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                                                                              suffixIcon: _model.txtMembroAlertaTextController!.text.isNotEmpty
                                                                                  ? InkWell(
                                                                                      onTap: () async {
                                                                                        _model.txtMembroAlertaTextController?.clear();
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.clear,
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                    )
                                                                                  : null,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            maxLines:
                                                                                20,
                                                                            keyboardType:
                                                                                TextInputType.multiline,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            validator:
                                                                                _model.txtMembroAlertaTextControllerValidator.asValidator(context),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        16.0)),
                                                              ),
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hg8tsf0e' /* Percentual  de validação dos d... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                              child: Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 100.0, 0.0),
                                                                                  child: CircularPercentIndicator(
                                                                                    percent: valueOrDefault<double>(
                                                                                      _model.membrosPercetualValidacao,
                                                                                      0.0,
                                                                                    ),
                                                                                    radius: 140.0,
                                                                                    lineWidth: 30.0,
                                                                                    animation: true,
                                                                                    animateFromLastPercent: true,
                                                                                    progressColor: FlutterFlowTheme.of(context).success,
                                                                                    backgroundColor: FlutterFlowTheme.of(context).accent4,
                                                                                    center: Text(
                                                                                      formatNumber(
                                                                                        _model.membrosPercetualValidacao,
                                                                                        formatType: FormatType.percent,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                            fontFamily: 'Outfit',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Divider(
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                                Expanded(
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 10.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'z911x2kd' /* Como foram validados os dados ... */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              FlutterFlowChoiceChips(
                                                                                options: [
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'udriebg5' /* Validação Local ou área de atu... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'ekk2ybut' /* Apenas  atráves de fontes aber... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'jq3rovfo' /* Apenas através de fontes restr... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'si112iv5' /*  */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'ucqyj1ot' /* Através de outra(s) agência de... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'qd88nb62' /* Atráves de  outro(s) órgãos co... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'gq42kahm' /* Dentro de um Estabelecimento P... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'ma9rbpmx' /* Dentro de um Estabelecimento P... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    '1i2vccnc' /* Apenas  através de informes  */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'zcj6hpny' /* Apenas através de Coolaborador... */,
                                                                                  )),
                                                                                  ChipData(FFLocalizations.of(context).getText(
                                                                                    'v0fvpqeq' /* Apenas através de informante(s... */,
                                                                                  ))
                                                                                ],
                                                                                onChanged: (val) async {
                                                                                  safeSetState(() => _model.choiceChipsValues = val);
                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_ChoiceChips_4gyoh8qd_O');
                                                                                  if (_model.membrosPercetualValidacao <= 1.0) {
                                                                                    _model.membrosPercetualValidacao = _model.membrosPercetualValidacao + 0.10;
                                                                                    safeSetState(() {});
                                                                                  } else {
                                                                                    _model.membrosPercetualValidacao = 1.0;
                                                                                    safeSetState(() {});
                                                                                  }
                                                                                },
                                                                                selectedChipStyle: ChipStyle(
                                                                                  backgroundColor: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).info,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  iconColor: FlutterFlowTheme.of(context).info,
                                                                                  iconSize: 16.0,
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                unselectedChipStyle: ChipStyle(
                                                                                  backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                  iconSize: 16.0,
                                                                                  elevation: 0.0,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                                chipSpacing: 8.0,
                                                                                rowSpacing: 8.0,
                                                                                multiselect: true,
                                                                                initialized: _model.choiceChipsValues != null,
                                                                                alignment: WrapAlignment.start,
                                                                                controller: _model.choiceChipsValueController ??= FormFieldController<List<String>>(
                                                                                  [],
                                                                                ),
                                                                                wrapped: true,
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                                                                                  child: SizedBox(
                                                                                    width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.textController21,
                                                                                      focusNode: _model.textFieldFocusNode,
                                                                                      onChanged: (_) => EasyDebounce.debounce(
                                                                                        '_model.textController21',
                                                                                        const Duration(milliseconds: 2000),
                                                                                        () => safeSetState(() {}),
                                                                                      ),
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'hu7rwf8m' /* Observação(ões) */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                              lineHeight: 5.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '0a8jmcbn' /* Observação(ões) */,
                                                                                        ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        errorStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).error,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).alternate,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: const BorderSide(
                                                                                            color: Color(0x00000000),
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 2.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(12.0),
                                                                                        ),
                                                                                        filled: true,
                                                                                        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 24.0),
                                                                                        suffixIcon: _model.textController21!.text.isNotEmpty
                                                                                            ? InkWell(
                                                                                                onTap: () async {
                                                                                                  _model.textController21?.clear();
                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: const Icon(
                                                                                                  Icons.clear,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              )
                                                                                            : null,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                      maxLines: 2,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      validator: _model.textController21Validator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ].divide(const SizedBox(height: 16.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 16.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 16.0, 16.0),
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ld0rt7j2' /* Relations */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final childrenColMembrosRelacoes =
                                                                  _model
                                                                      .membrosRelacoes
                                                                      .toList()
                                                                      .take(9)
                                                                      .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: List.generate(
                                                                    childrenColMembrosRelacoes
                                                                        .length,
                                                                    (childrenColMembrosRelacoesIndex) {
                                                                  final childrenColMembrosRelacoesItem =
                                                                      childrenColMembrosRelacoes[
                                                                          childrenColMembrosRelacoesIndex];
                                                                  return Expanded(
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final childrenRolMembrosRelacoes = _model
                                                                              .membrosRelacoes
                                                                              .toList()
                                                                              .take(3)
                                                                              .toList();

                                                                          return GridView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            gridDelegate:
                                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                                              crossAxisCount: 3,
                                                                              crossAxisSpacing: 10.0,
                                                                              mainAxisSpacing: 10.0,
                                                                              childAspectRatio: 1.0,
                                                                            ),
                                                                            primary:
                                                                                false,
                                                                            shrinkWrap:
                                                                                true,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                childrenRolMembrosRelacoes.length,
                                                                            itemBuilder:
                                                                                (context, childrenRolMembrosRelacoesIndex) {
                                                                              final childrenRolMembrosRelacoesItem = childrenRolMembrosRelacoes[childrenRolMembrosRelacoesIndex];
                                                                              return ClipRRect(
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/379/600',
                                                                                  width: 200.0,
                                                                                  height: 200.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              );
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'hikp6nbx' /* Groups */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final childrenColMembrosGrupos =
                                                                  _model
                                                                      .membrosGrupos
                                                                      .toList()
                                                                      .take(9)
                                                                      .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: List.generate(
                                                                    childrenColMembrosGrupos
                                                                        .length,
                                                                    (childrenColMembrosGruposIndex) {
                                                                  final childrenColMembrosGruposItem =
                                                                      childrenColMembrosGrupos[
                                                                          childrenColMembrosGruposIndex];
                                                                  return Expanded(
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final childrenRolMembrosGrupos = _model
                                                                            .membrosGrupos
                                                                            .toList()
                                                                            .take(3)
                                                                            .toList();

                                                                        return GridView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          gridDelegate:
                                                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                                            crossAxisCount:
                                                                                3,
                                                                            crossAxisSpacing:
                                                                                10.0,
                                                                            mainAxisSpacing:
                                                                                10.0,
                                                                            childAspectRatio:
                                                                                1.0,
                                                                          ),
                                                                          primary:
                                                                              false,
                                                                          shrinkWrap:
                                                                              true,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              childrenRolMembrosGrupos.length,
                                                                          itemBuilder:
                                                                              (context, childrenRolMembrosGruposIndex) {
                                                                            final childrenRolMembrosGruposItem =
                                                                                childrenRolMembrosGrupos[childrenRolMembrosGruposIndex];
                                                                            return ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                'https://picsum.photos/seed/79/600',
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            );
                                                                          },
                                                                        );
                                                                      },
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.05),
                                              child: FFButtonWidget(
                                                onPressed: () {
                                                  print(
                                                      'ButtonCancelar pressed ...');
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'qziqype9' /* Cancel */,
                                                ),
                                                icon: const Icon(
                                                  Icons.cancel_outlined,
                                                  size: 24.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 44.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  hoverTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                  hoverElevation: 3.0,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.05),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'MODAL_ADD_MEMBROS_SAVE_MEMBER_BTN_ON_TAP');
                                                  var shouldSetState = false;
                                                  var confirmDialogResponse =
                                                      await showDialog<bool>(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title:
                                                                    const Text('S'),
                                                                content: const Text(
                                                                    'Deseja salvar os  dados ?'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                    child: const Text(
                                                                        'Cancelar'),
                                                                  ),
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                    child: const Text(
                                                                        'Confirmar'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          ) ??
                                                          false;
                                                  if (confirmDialogResponse) {
                                                    final selectedMedia =
                                                        await selectMedia(
                                                      storageFolderPath:
                                                          'membros',
                                                      maxWidth: 100.00,
                                                      maxHeight: 100.00,
                                                      mediaSource: MediaSource
                                                          .photoGallery,
                                                      multiImage: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      safeSetState(() => _model
                                                              .isDataUploading2 =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        showUploadMessage(
                                                          context,
                                                          'Uploading file...',
                                                          showLoading: true,
                                                        );
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      height: m
                                                                          .dimensions
                                                                          ?.height,
                                                                      width: m
                                                                          .dimensions
                                                                          ?.width,
                                                                      blurHash:
                                                                          m.blurHash,
                                                                    ))
                                                                .toList();

                                                        downloadUrls =
                                                            await uploadSupabaseStorageFiles(
                                                          bucketName: 'uploads',
                                                          selectedFiles:
                                                              selectedMedia,
                                                        );
                                                      } finally {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .hideCurrentSnackBar();
                                                        _model.isDataUploading2 =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedMedia
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFiles2 =
                                                              selectedUploadedFiles;
                                                          _model.uploadedFileUrls2 =
                                                              downloadUrls;
                                                        });
                                                        showUploadMessage(
                                                            context,
                                                            'Success!');
                                                      } else {
                                                        safeSetState(() {});
                                                        showUploadMessage(
                                                            context,
                                                            'Failed to upload data');
                                                        return;
                                                      }
                                                    }

                                                    _model.retMembrosAdd =
                                                        await MembrosTable()
                                                            .insert({
                                                      'nome_completo': _model
                                                          .txtNomeCompletoTextController
                                                          .text,
                                                      'fotos_path':
                                                          _model.membrosPhotos,
                                                      'alcunha': _model
                                                          .membrosAlcunhas,
                                                      'cpf': _model
                                                          .txtNoCpfTextController
                                                          .text,
                                                      'identidade': _model
                                                          .txtNoIdentidadeTextController
                                                          .text,
                                                      'naturalidade': _model
                                                          .txtMembroNaturalidadeTextController
                                                          .text,
                                                      'filiacao_mae': _model
                                                          .txtFiliacaoMaeTextController
                                                          .text,
                                                      'filiacao_pai': _model
                                                          .txtFiliacaoPaiTextController
                                                          .text,
                                                      'situacao_mae': _model
                                                          .ddwSituacaoMaeValue,
                                                      'situacao_pai': _model
                                                          .ddwSituacaoPaiValue,
                                                      'nivel_instrucao': _model
                                                          .ddwNivelInstrucaoValue,
                                                      'estado_civil': _model
                                                          .ddwEstadoCivilValue,
                                                      'membro_endereco': _model
                                                          .membrosEnderecos,
                                                      'estado_id':
                                                          _model.ddwEstadoValue,
                                                      'membro_id': _model
                                                          .ddwMunicipioValue,
                                                      'historico': _model
                                                          .txtMembroHistoricoTextController
                                                          .text,
                                                      'faccao_id': _model
                                                          .ddwMembroFaccaoValue,
                                                      'batismo': _model
                                                          .txtFaccaoBastismoTextController
                                                          .text,
                                                      'batismo_local': _model
                                                          .txtFacaoLocalBastismoTextController
                                                          .text,
                                                      'padrinho': _model
                                                          .txtMembrosFaccaoPadrinhoTextController
                                                          .text,
                                                      'faccao_senha': _model
                                                          .txtMembroFaccaoSenhaTextController
                                                          .text,
                                                      'cargo_id': _model
                                                          .ddwMembroFaccaoCargoAtualValue,
                                                      'funcao_id': _model
                                                          .ddwFaccaoFuncaoAtualValue,
                                                      'cargo_ant_id': _model
                                                          .ddwMembroFaccaoCargoAnteriorValue,
                                                      'faccao_inimiga': _model
                                                          .ddwFaccaoInimigaValue,
                                                      'faccao_aliada': _model
                                                          .ddwFaccaoAliadaValue,
                                                      'nacionalidade': _model
                                                          .rbNacionalidadeValue,
                                                      'funcao_ant_id': _model
                                                          .ddwFaccaoFuncaoAnteriorValue,
                                                      'faccao_integrou': _model
                                                          .ddwFaccaoIntegrouValue,
                                                      'municipio_id': _model
                                                          .ddwMunicipioValue,
                                                      'infopen': _model
                                                          .txtNoInfopenTextController
                                                          .text,
                                                      'tres_ultimo_locais_preso':
                                                          _model
                                                              .membrosFaccaoTresLocais,
                                                    });
                                                    shouldSetState = true;
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds: 500));
                                                    await Future.wait([
                                                      Future(() async {
                                                        if (_model
                                                                .membrosProcedimentos.isNotEmpty) {
                                                          _model.membrosProcedimentosCount =
                                                              -1;
                                                          safeSetState(() {});
                                                          while (_model
                                                                  .membrosProcedimentosCount! <=
                                                              _model
                                                                  .membrosProcedimentos
                                                                  .length) {
                                                            _model.membrosProcedimentosCount =
                                                                _model.membrosProcedimentosCount! +
                                                                    1;
                                                            safeSetState(() {});
                                                            _model.apiResultProcedimentos =
                                                                await ProcedimentosADDCall
                                                                    .call(
                                                              membroId: _model
                                                                  .retMembrosAdd
                                                                  ?.membroId
                                                                  .toString(),
                                                              procedimentoNo: _model
                                                                  .membrosProcedimentos[
                                                                      _model
                                                                          .membrosProcedimentosCount!]
                                                                  .unidade,
                                                              unidade: _model
                                                                  .membrosProcedimentos[
                                                                      _model
                                                                          .membrosProcedimentosCount!]
                                                                  .procedimentoTipo,
                                                              procedimentoTipo: _model
                                                                  .membrosProcedimentos[
                                                                      _model
                                                                          .membrosProcedimentosCount!]
                                                                  .crime,
                                                              crime: _model
                                                                  .membrosProcedimentos[
                                                                      _model
                                                                          .membrosProcedimentosCount!]
                                                                  .crime,
                                                              data: _model
                                                                  .membrosProcedimentos[
                                                                      _model
                                                                          .membrosProcedimentosCount!]
                                                                  .data
                                                                  ?.toString(),
                                                            );

                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .apiResultProcedimentos
                                                                    ?.succeeded ??
                                                                true)) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Dados dos procedimentos salvos !',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                            }
                                                          }
                                                        } else {
                                                          if (shouldSetState) {
                                                            safeSetState(() {});
                                                          }
                                                          return;
                                                        }
                                                      }),
                                                      Future(() async {
                                                        if (_model
                                                                .membrosProcessos.isNotEmpty) {
                                                          _model.membrosProcessosCount =
                                                              -1;
                                                          safeSetState(() {});
                                                          while (_model
                                                                  .membrosProcessosCount! <=
                                                              _model
                                                                  .membrosProcessos
                                                                  .length) {
                                                            _model.membrosProcessosCount =
                                                                _model.membrosProcessosCount! +
                                                                    1;
                                                            safeSetState(() {});
                                                            _model.apiResultProcessos =
                                                                await ProcessosADDCall
                                                                    .call(
                                                              membroId: _model
                                                                  .retMembrosAdd
                                                                  ?.membroId
                                                                  .toString(),
                                                              acaoPenalNo: _model
                                                                  .membrosProcessos[
                                                                      _model
                                                                          .membrosProcessosCount!]
                                                                  .noAcaoPenal,
                                                              vara: _model
                                                                  .membrosProcessos[
                                                                      _model
                                                                          .membrosProcessosCount!]
                                                                  .vara,
                                                              situacaoJuridica: _model
                                                                  .membrosProcessos[
                                                                      _model
                                                                          .membrosProcessosCount!]
                                                                  .situacaoJuridica,
                                                              regime: _model
                                                                  .membrosProcessos[
                                                                      _model
                                                                          .membrosProcessosCount!]
                                                                  .situacaoJuridica,
                                                              situacaoReu: _model
                                                                  .membrosProcessos[
                                                                      _model
                                                                          .membrosProcessosCount!]
                                                                  .situacaoReu,
                                                            );

                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .apiResultProcessos
                                                                    ?.succeeded ??
                                                                true)) {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Dados dos processos salvos !',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                            }
                                                          }
                                                        } else {
                                                          if (shouldSetState) {
                                                            safeSetState(() {});
                                                          }
                                                          return;
                                                        }
                                                      }),
                                                    ]);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Dados do Membro salvo com sucesso !',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    );
                                                  } else {
                                                    if (shouldSetState) {
                                                      safeSetState(() {});
                                                    }
                                                    return;
                                                  }

                                                  if (shouldSetState) {
                                                    safeSetState(() {});
                                                  }
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'xkcg34s5' /* Save Member */,
                                                ),
                                                icon: const Icon(
                                                  Icons.check_circle,
                                                  size: 24.0,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 44.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        letterSpacing: 0.0,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  hoverColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .accent1,
                                                  hoverBorderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 1.0,
                                                  ),
                                                  hoverTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  hoverElevation: 0.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['blurOnPageLoadAnimation']!),
    );
  }
}
