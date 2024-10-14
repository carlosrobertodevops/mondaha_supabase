import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
      length: 7,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.txtNomeCompletoFocusNode1 ??= FocusNode();

    _model.txtAlcunhaAddTextController ??= TextEditingController();
    _model.txtAlcunhaAddFocusNode ??= FocusNode();

    _model.txtNomeCompletoTextController2 ??= TextEditingController();
    _model.txtNomeCompletoFocusNode2 ??= FocusNode();

    _model.txtNoIdentidadeTextController ??= TextEditingController();
    _model.txtNoIdentidadeFocusNode ??= FocusNode();

    _model.txtNoCpfTextController ??= TextEditingController();
    _model.txtNoCpfFocusNode ??= FocusNode();

    _model.txtNoInfopenTextController ??= TextEditingController();
    _model.txtNoInfopenFocusNode ??= FocusNode();

    _model.txtMaeNomeTextController ??= TextEditingController();
    _model.txtMaeNomeFocusNode ??= FocusNode();

    _model.txtNomePaiTextController ??= TextEditingController();
    _model.txtNomePaiFocusNode ??= FocusNode();

    _model.txtMembrosEnderecosAddTextController ??= TextEditingController();
    _model.txtMembrosEnderecosAddFocusNode ??= FocusNode();

    _model.txtMembroHistoricoTextController ??= TextEditingController();
    _model.txtMembroHistoricoFocusNode ??= FocusNode();

    _model.txtBastismoTextController ??= TextEditingController();
    _model.txtBastismoFocusNode ??= FocusNode();

    _model.txtLocalBastismoTextController1 ??= TextEditingController();
    _model.txtLocalBastismoFocusNode1 ??= FocusNode();

    _model.txtMembrosPadrinhoTextController ??= TextEditingController();
    _model.txtMembrosPadrinhoFocusNode ??= FocusNode();

    _model.txtMembroSenhaTextController ??= TextEditingController();
    _model.txtMembroSenhaFocusNode ??= FocusNode();

    _model.txtMembrosSenhaTextController ??= TextEditingController();
    _model.txtMembrosSenhaFocusNode ??= FocusNode();

    _model.txtLocalBastismoTextController2 ??= TextEditingController();
    _model.txtLocalBastismoFocusNode2 ??= FocusNode();

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

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
                  child: FutureBuilder<List<MembrosRow>>(
                    future: MembrosTable().querySingleRow(
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
                      List<MembrosRow> overlayMembrosRowList = snapshot.data!;

                      final overlayMembrosRow = overlayMembrosRowList.isNotEmpty
                          ? overlayMembrosRowList.first
                          : null;

                      return ClipRRect(
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rgboq48h' /* Add Member */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: SafeArea(
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.85,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const Alignment(
                                                                    0.0, 0),
                                                            child: TabBar(
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
                                                                  const EdgeInsets
                                                                      .all(2.0),
                                                              tabs: [
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'ap8ub3ro' /* Profile */,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'nvxntirq' /* History */,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'zo5mhuuq' /* Faction */,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xeeiaebp' /* Procedimentos */,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '0v0s6s8e' /* Processos */,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xaeljp2r' /* Atuação */,
                                                                  ),
                                                                ),
                                                                Tab(
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '8slh1eth' /* Alerta */,
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
                                                                    primary:
                                                                        false,
                                                                    child:
                                                                        Column(
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
                                                                                'fuw255xv' /* Upload images about the  membe... */,
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
                                                                            key:
                                                                                _model.formKey2,
                                                                            autovalidateMode:
                                                                                AutovalidateMode.disabled,
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              primary: false,
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (_model.uploadedFileUrls.isEmpty)
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_Container_we8qkkgn_ON_');
                                                                                                  final selectedMedia = await selectMedia(
                                                                                                    storageFolderPath: 'membros',
                                                                                                    maxWidth: 100.00,
                                                                                                    maxHeight: 100.00,
                                                                                                    mediaSource: MediaSource.photoGallery,
                                                                                                    multiImage: true,
                                                                                                  );
                                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                                    safeSetState(() => _model.isDataUploading = true);
                                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                                    var downloadUrls = <String>[];
                                                                                                    try {
                                                                                                      showUploadMessage(
                                                                                                        context,
                                                                                                        'Uploading file...',
                                                                                                        showLoading: true,
                                                                                                      );
                                                                                                      selectedUploadedFiles = selectedMedia
                                                                                                          .map((m) => FFUploadedFile(
                                                                                                                name: m.storagePath.split('/').last,
                                                                                                                bytes: m.bytes,
                                                                                                                height: m.dimensions?.height,
                                                                                                                width: m.dimensions?.width,
                                                                                                                blurHash: m.blurHash,
                                                                                                              ))
                                                                                                          .toList();

                                                                                                      downloadUrls = await uploadSupabaseStorageFiles(
                                                                                                        bucketName: 'uploads',
                                                                                                        selectedFiles: selectedMedia,
                                                                                                      );
                                                                                                    } finally {
                                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                                      _model.isDataUploading = false;
                                                                                                    }
                                                                                                    if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                                      safeSetState(() {
                                                                                                        _model.uploadedLocalFiles = selectedUploadedFiles;
                                                                                                        _model.uploadedFileUrls = downloadUrls;
                                                                                                      });
                                                                                                      showUploadMessage(context, 'Success!');
                                                                                                    } else {
                                                                                                      safeSetState(() {});
                                                                                                      showUploadMessage(context, 'Failed to upload data');
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
                                                                                                      final fotosMembroPaths = _model.uploadedFileUrls.map((e) => e).toList().take(4).toList();

                                                                                                      return SingleChildScrollView(
                                                                                                        scrollDirection: Axis.horizontal,
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                          children: List.generate(fotosMembroPaths.length, (fotosMembroPathsIndex) {
                                                                                                            final fotosMembroPathsItem = fotosMembroPaths[fotosMembroPathsIndex];
                                                                                                            return Visibility(
                                                                                                              visible: _model.uploadedFileUrls.isNotEmpty,
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
                                                                                                                                      image: Image.network(
                                                                                                                                        fotosMembroPathsItem,
                                                                                                                                        fit: BoxFit.contain,
                                                                                                                                        errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                                                                          'assets/images/error_image.png',
                                                                                                                                          fit: BoxFit.contain,
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                      allowRotation: false,
                                                                                                                                      tag: fotosMembroPathsItem,
                                                                                                                                      useHeroAnimation: true,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                );
                                                                                                                              },
                                                                                                                              child: Hero(
                                                                                                                                tag: fotosMembroPathsItem,
                                                                                                                                transitionOnUserGestures: true,
                                                                                                                                child: ClipRRect(
                                                                                                                                  borderRadius: BorderRadius.circular(10.0),
                                                                                                                                  child: Image.network(
                                                                                                                                    fotosMembroPathsItem,
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
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          }).divide(
                                                                                                            const SizedBox(width: 12.0),
                                                                                                            filterFn: (fotosMembroPathsIndex) {
                                                                                                              final fotosMembroPathsItem = fotosMembroPaths[fotosMembroPathsIndex];
                                                                                                              return _model.uploadedFileUrls.isNotEmpty;
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
                                                                                          controller: _model.txtNomeCompletoTextController1 ??= TextEditingController(
                                                                                            text: overlayMembrosRow?.nomeCompleto,
                                                                                          ),
                                                                                          focusNode: _model.txtNomeCompletoFocusNode1,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: valueOrDefault<String>(
                                                                                              overlayMembrosRow?.nomeCompleto,
                                                                                              'Nome completo',
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtNomeCompletoTextController1Validator.asValidator(context),
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
                                                                                          controller: _model.txtAlcunhaAddTextController,
                                                                                          focusNode: _model.txtAlcunhaAddFocusNode,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                              'ikt0h50o' /* Nickname */,
                                                                                            ),
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              'jna6z2zu' /* Nickname */,
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
                                                                                              _model.txtAlcunhaAddTextController?.text = '\"\"';
                                                                                              _model.txtAlcunhaAddTextController?.selection = TextSelection.collapsed(offset: _model.txtAlcunhaAddTextController!.text.length);
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
                                                                                                      children: [
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
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
                                                                                                            Align(
                                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                              child: FlutterFlowIconButton(
                                                                                                                borderRadius: 30.0,
                                                                                                                buttonSize: 30.0,
                                                                                                                fillColor: FlutterFlowTheme.of(context).error,
                                                                                                                icon: Icon(
                                                                                                                  Icons.remove_outlined,
                                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                                  size: 12.0,
                                                                                                                ),
                                                                                                                onPressed: () async {
                                                                                                                  logFirebaseEvent('MODAL_ADD_MEMBROS_remove_outlined_ICN_ON');
                                                                                                                  _model.removeAtIndexFromMembrosAlcunhas(tagAlcunhaIndex);
                                                                                                                  safeSetState(() {});
                                                                                                                },
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
                                                                                        flex: 7,
                                                                                        child: TextFormField(
                                                                                          controller: _model.txtNomeCompletoTextController2,
                                                                                          focusNode: _model.txtNomeCompletoFocusNode2,
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtNomeCompletoTextController2Validator.asValidator(context),
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

                                                                                            return FlutterFlowDropDown<int>(
                                                                                              controller: _model.ddwEstadoCivilValueController ??= FormFieldController<int>(
                                                                                                _model.ddwEstadoCivilValue ??= 0,
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
                                                                                              margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtNoIdentidadeTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: TextFormField(
                                                                                          controller: _model.txtNoCpfTextController,
                                                                                          focusNode: _model.txtNoCpfFocusNode,
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtNoCpfTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 2,
                                                                                        child: TextFormField(
                                                                                          controller: _model.txtNoInfopenTextController,
                                                                                          focusNode: _model.txtNoInfopenFocusNode,
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
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
                                                                                          controller: _model.txtMaeNomeTextController,
                                                                                          focusNode: _model.txtMaeNomeFocusNode,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                              'cjy846zr' /* Mother Name */,
                                                                                            ),
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtMaeNomeTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 3,
                                                                                        child: FlutterFlowDropDown<int>(
                                                                                          controller: _model.ddwSituacaoMaeValueController ??= FormFieldController<int>(
                                                                                            _model.ddwSituacaoMaeValue ??= 1,
                                                                                          ),
                                                                                          options: List<int>.from([0, 1, 2, 3]),
                                                                                          optionLabels: [
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '4ebn7u9d' /* Viva */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'vte6onee' /* Viva */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '188nb78m' /* Falecida */,
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
                                                                                          margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                                                                                          controller: _model.txtNomePaiTextController,
                                                                                          focusNode: _model.txtNomePaiFocusNode,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                              'lbcdz337' /* Father Name */,
                                                                                            ),
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtNomePaiTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                      Expanded(
                                                                                        flex: 3,
                                                                                        child: FlutterFlowDropDown<int>(
                                                                                          controller: _model.ddwSituacaoPaiValueController1 ??= FormFieldController<int>(
                                                                                            _model.ddwSituacaoPaiValue1 ??= 1,
                                                                                          ),
                                                                                          options: List<int>.from([0, 1, 2, 3]),
                                                                                          optionLabels: [
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'qyc8q0st' /* Vivo */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '7ygxf6rh' /* Vivo */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'wmbvp74d' /* Falecido */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'r9rah6gc' /* Sem informação */,
                                                                                            )
                                                                                          ],
                                                                                          onChanged: (val) => safeSetState(() => _model.ddwSituacaoPaiValue1 = val),
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
                                                                                          margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                                                                                        child: FlutterFlowDropDown<int>(
                                                                                          controller: _model.ddwIntrucaoValueController ??= FormFieldController<int>(
                                                                                            _model.ddwIntrucaoValue ??= 1,
                                                                                          ),
                                                                                          options: List<int>.from([
                                                                                            0,
                                                                                            1,
                                                                                            2,
                                                                                            3,
                                                                                            4
                                                                                          ]),
                                                                                          optionLabels: [
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'r2g2yo2p' /* Não alfabetizado */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'y7i4eicy' /* Não alfabetizado */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'xmduvdwh' /* Ensino Fundamental */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'lvynt86i' /* Ensino médiio */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'eur8h0kh' /* Ensino superior */,
                                                                                            )
                                                                                          ],
                                                                                          onChanged: (val) => safeSetState(() => _model.ddwIntrucaoValue = val),
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
                                                                                          margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                                                                        child:
                                                                            Form(
                                                                          key: _model
                                                                              .formKey1,
                                                                          autovalidateMode:
                                                                              AutovalidateMode.disabled,
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: SizedBox(
                                                                                        width: 200.0,
                                                                                        child: TextFormField(
                                                                                          controller: _model.txtMembrosEnderecosAddTextController,
                                                                                          focusNode: _model.txtMembrosEnderecosAddFocusNode,
                                                                                          autofocus: false,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            isDense: true,
                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                              'uw8i01r5' /* Endereço */,
                                                                                            ),
                                                                                            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            hintText: FFLocalizations.of(context).getText(
                                                                                              '97izofel' /* Endereço */,
                                                                                            ),
                                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            enabledBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            focusedBorder: OutlineInputBorder(
                                                                                              borderSide: const BorderSide(
                                                                                                color: Color(0x00000000),
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            errorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            focusedErrorBorder: OutlineInputBorder(
                                                                                              borderSide: BorderSide(
                                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(12.0),
                                                                                            ),
                                                                                            filled: true,
                                                                                            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            contentPadding: const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
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
                                                                                            _model.txtMembrosEnderecosAddTextController?.text = '\"\"';
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
                                                                                Builder(
                                                                                  builder: (context) {
                                                                                    final listMembrosEnderecos = _model.membrosEnderecos.toList().take(4).toList();

                                                                                    return Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: List.generate(listMembrosEnderecos.length, (listMembrosEnderecosIndex) {
                                                                                        final listMembrosEnderecosItem = listMembrosEnderecos[listMembrosEnderecosIndex];
                                                                                        return Container(
                                                                                          decoration: BoxDecoration(
                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                            shape: BoxShape.rectangle,
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              width: 2.0,
                                                                                            ),
                                                                                          ),
                                                                                          alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              SingleChildScrollView(
                                                                                                scrollDirection: Axis.horizontal,
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                                      child: Text(
                                                                                                        listMembrosEnderecosItem,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              letterSpacing: 0.0,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Align(
                                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                      child: FlutterFlowIconButton(
                                                                                                        borderColor: Colors.transparent,
                                                                                                        borderRadius: 30.0,
                                                                                                        buttonSize: 30.0,
                                                                                                        fillColor: FlutterFlowTheme.of(context).error,
                                                                                                        icon: Icon(
                                                                                                          Icons.remove_outlined,
                                                                                                          color: FlutterFlowTheme.of(context).info,
                                                                                                          size: 12.0,
                                                                                                        ),
                                                                                                        onPressed: () async {
                                                                                                          logFirebaseEvent('MODAL_ADD_MEMBROS_remove_outlined_ICN_ON');
                                                                                                          _model.removeAtIndexFromMembrosEnderecos(listMembrosEnderecosIndex);
                                                                                                          safeSetState(() {});
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        );
                                                                                      }).divide(const SizedBox(width: 10.0)),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    FlutterFlowRadioButton(
                                                                                      options: [
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '7tegc2gd' /* Brazilian born */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'j7uzqdk2' /* Naturalized Brazilian */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'usfossjo' /* Foreigner */,
                                                                                        )
                                                                                      ].toList(),
                                                                                      onChanged: (val) => safeSetState(() {}),
                                                                                      controller: _model.radioButtonValueController ??= FormFieldController<String>(null),
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
                                                                                              _model.ddwEstadoValue ??= valueOrDefault<int>(
                                                                                                overlayMembrosRow?.estadoId,
                                                                                                27,
                                                                                              ),
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
                                                                                              _model.ddwMunicipioValue ??= overlayMembrosRow?.municipioId,
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
                                                                                      flex: 4,
                                                                                      child: FlutterFlowDropDown<String>(
                                                                                        controller: _model.ddwDistritoValueController ??= FormFieldController<String>(
                                                                                          _model.ddwDistritoValue ??= '',
                                                                                        ),
                                                                                        options: List<String>.from(['']),
                                                                                        optionLabels: const [''],
                                                                                        onChanged: (val) => safeSetState(() => _model.ddwDistritoValue = val),
                                                                                        height: 60.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          '8ws4718a' /* Posições */,
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
                                                                                        isSearchable: false,
                                                                                        isMultiSelect: false,
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
                                                                                        child: TextFormField(
                                                                                          controller: _model.txtMembroHistoricoTextController,
                                                                                          focusNode: _model.txtMembroHistoricoFocusNode,
                                                                                          autofocus: true,
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
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          maxLines: 19,
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtMembroHistoricoTextControllerValidator.asValidator(context),
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
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            16.0),
                                                                    child:
                                                                        SingleChildScrollView(
                                                                      primary:
                                                                          false,
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                                                                              child: Text(
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
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Form(
                                                                              key: _model.formKey3,
                                                                              autovalidateMode: AutovalidateMode.disabled,
                                                                              child: SingleChildScrollView(
                                                                                primary: false,
                                                                                child: Column(
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
                                                                                              List<FaccoesRow> ddwFaccaoFaccoesRowList = snapshot.data!;

                                                                                              return FlutterFlowDropDown<int>(
                                                                                                controller: _model.ddwFaccaoValueController ??= FormFieldController<int>(
                                                                                                  _model.ddwFaccaoValue ??= overlayMembrosRow?.faccaoId,
                                                                                                ),
                                                                                                options: List<int>.from(ddwFaccaoFaccoesRowList.map((e) => e.faccaoId).toList()),
                                                                                                optionLabels: ddwFaccaoFaccoesRowList
                                                                                                    .map((e) => valueOrDefault<String>(
                                                                                                          e.nome,
                                                                                                          'nome_faccao',
                                                                                                        ))
                                                                                                    .toList(),
                                                                                                onChanged: (val) => safeSetState(() => _model.ddwFaccaoValue = val),
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
                                                                                          flex: 4,
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
                                                                                              List<FuncoesRow> ddwFuncaoFuncoesRowList = snapshot.data!;

                                                                                              return FlutterFlowDropDown<int>(
                                                                                                controller: _model.ddwFuncaoValueController ??= FormFieldController<int>(
                                                                                                  _model.ddwFuncaoValue ??= overlayMembrosRow?.funcaoId,
                                                                                                ),
                                                                                                options: List<int>.from(ddwFuncaoFuncoesRowList.map((e) => e.funcaoId).toList()),
                                                                                                optionLabels: ddwFuncaoFuncoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                                onChanged: (val) => safeSetState(() => _model.ddwFuncaoValue = val),
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
                                                                                                  'jlqk41h6' /* Função */,
                                                                                                ),
                                                                                                searchHintText: FFLocalizations.of(context).getText(
                                                                                                  'srjrgtad' /* Search... */,
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
                                                                                          flex: 4,
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
                                                                                              List<CargosRow> ddwCargoCargosRowList = snapshot.data!;

                                                                                              return FlutterFlowDropDown<int>(
                                                                                                controller: _model.ddwCargoValueController ??= FormFieldController<int>(
                                                                                                  _model.ddwCargoValue ??= overlayMembrosRow?.cargoId,
                                                                                                ),
                                                                                                options: List<int>.from(ddwCargoCargosRowList.map((e) => e.cargoId).toList()),
                                                                                                optionLabels: ddwCargoCargosRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                                onChanged: (val) => safeSetState(() => _model.ddwCargoValue = val),
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
                                                                                                  't4551wj3' /* Cargo */,
                                                                                                ),
                                                                                                searchHintText: FFLocalizations.of(context).getText(
                                                                                                  'b73egaj9' /* Search... */,
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
                                                                                      ].divide(const SizedBox(width: 10.0)),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          flex: 10,
                                                                                          child: TextFormField(
                                                                                            controller: _model.txtBastismoTextController,
                                                                                            focusNode: _model.txtBastismoFocusNode,
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtBastismoTextControllerValidator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 10,
                                                                                          child: TextFormField(
                                                                                            controller: _model.txtLocalBastismoTextController1,
                                                                                            focusNode: _model.txtLocalBastismoFocusNode1,
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtLocalBastismoTextController1Validator.asValidator(context),
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
                                                                                            controller: _model.txtMembrosPadrinhoTextController,
                                                                                            focusNode: _model.txtMembrosPadrinhoFocusNode,
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
                                                                                                'zntstdx4' /* Batismo */,
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtMembrosPadrinhoTextControllerValidator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 10,
                                                                                          child: TextFormField(
                                                                                            controller: _model.txtMembroSenhaTextController,
                                                                                            focusNode: _model.txtMembroSenhaFocusNode,
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
                                                                                                'h7acv992' /* Local do Batismo */,
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtMembroSenhaTextControllerValidator.asValidator(context),
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
                                                                                            controller: _model.txtMembrosSenhaTextController,
                                                                                            focusNode: _model.txtMembrosSenhaFocusNode,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                                'ttnl9bl6' /* Senha */,
                                                                                              ),
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              alignLabelWithHint: true,
                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                'szi911dp' /* Batismo */,
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtMembrosSenhaTextControllerValidator.asValidator(context),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 10,
                                                                                          child: TextFormField(
                                                                                            controller: _model.txtLocalBastismoTextController2,
                                                                                            focusNode: _model.txtLocalBastismoFocusNode2,
                                                                                            autofocus: false,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                                'h4o9kjih' /* Local do Batismo */,
                                                                                              ),
                                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              alignLabelWithHint: true,
                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                'asni2rgc' /* Local do Batismo */,
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
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                            cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                            validator: _model.txtLocalBastismoTextController2Validator.asValidator(context),
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
                                                                                              List<CargosRow> ddwCargoAtualCargosRowList = snapshot.data!;

                                                                                              return FlutterFlowDropDown<int>(
                                                                                                controller: _model.ddwCargoAtualValueController ??= FormFieldController<int>(
                                                                                                  _model.ddwCargoAtualValue ??= 1,
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
                                                                                                    'g4cudkfo' /* Single */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'm7nto11y' /* Married */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'lua0u9r7' /* Divorced */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'pagj2byz' /* Widowed */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '7ia0ilv6' /* Legally separated */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'wb6wqo3u' /* Stable union: */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'doyxn8td' /* None of the options */,
                                                                                                  )
                                                                                                ],
                                                                                                onChanged: (val) => safeSetState(() => _model.ddwCargoAtualValue = val),
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
                                                                                                  '5xrtyank' /* Marital status */,
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
                                                                                              List<CargosRow> ddwCargoAnteriorCargosRowList = snapshot.data!;

                                                                                              return FlutterFlowDropDown<int>(
                                                                                                controller: _model.ddwCargoAnteriorValueController1 ??= FormFieldController<int>(
                                                                                                  _model.ddwCargoAnteriorValue1 ??= 1,
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
                                                                                                    'hx5z1zse' /* Single */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'uq2ji1sc' /* Married */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'yyxfrhvy' /* Divorced */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'x8874h89' /* Widowed */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '375vhpqk' /* Legally separated */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'p5znajxx' /* Stable union: */,
                                                                                                  ),
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'da0eemx5' /* None of the options */,
                                                                                                  )
                                                                                                ],
                                                                                                onChanged: (val) => safeSetState(() => _model.ddwCargoAnteriorValue1 = val),
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
                                                                                                  'uhi29t9v' /* Marital status */,
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
                                                                                                margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                                                                                          child: FlutterFlowDropDown<String>(
                                                                                            controller: _model.ddwFuncaoAtualValueController ??= FormFieldController<String>(
                                                                                              _model.ddwFuncaoAtualValue ??= '',
                                                                                            ),
                                                                                            options: List<String>.from(['']),
                                                                                            optionLabels: const [''],
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwFuncaoAtualValue = val),
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
                                                                                              '0c8h6wz9' /* Mother Situation */,
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
                                                                                            margin: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                            hidesUnderline: true,
                                                                                            isOverButton: false,
                                                                                            isSearchable: true,
                                                                                            isMultiSelect: false,
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          flex: 3,
                                                                                          child: FlutterFlowDropDown<String>(
                                                                                            controller: _model.ddwCargoAnteriorValueController2 ??= FormFieldController<String>(
                                                                                              _model.ddwCargoAnteriorValue2 ??= '',
                                                                                            ),
                                                                                            options: List<String>.from(['']),
                                                                                            optionLabels: const [''],
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwCargoAnteriorValue2 = val),
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
                                                                                              '8c2yoabs' /* Mother Situation */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'xtghmnhj' /* Mother's Situation */,
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
                                                                                            controller: _model.ddwSituacaoPaiValueController2 ??= FormFieldController<String>(
                                                                                              _model.ddwSituacaoPaiValue2 ??= '',
                                                                                            ),
                                                                                            options: List<String>.from(['']),
                                                                                            optionLabels: const [''],
                                                                                            onChanged: (val) => safeSetState(() => _model.ddwSituacaoPaiValue2 = val),
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
                                                                                              '8uf1jitv' /* Father's Situation */,
                                                                                            ),
                                                                                            searchHintText: FFLocalizations.of(context).getText(
                                                                                              'fzkhhi3x' /* Father's Situation */,
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
                                                                const Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [],
                                                                ),
                                                                const Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [],
                                                                ),
                                                                const Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [],
                                                                ),
                                                                const Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [],
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
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 16.0, 16.0),
                                        child: SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            GridView(
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
                                                                          children: const [],
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
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
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
                                                                          color:
                                                                              FlutterFlowTheme.of(context).info,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          GridView(
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
                                                                        children: const [],
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
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.05),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'qziqype9' /* Cancel */,
                                                    ),
                                                    icon: const Icon(
                                                      Icons.cancel_outlined,
                                                      size: 24.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.05),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'xkcg34s5' /* Save Member */,
                                                    ),
                                                    icon: const Icon(
                                                      Icons.check_circle,
                                                      size: 24.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 44.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
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
                      );
                    },
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
