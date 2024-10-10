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
import 'package:sticky_headers/sticky_headers.dart';
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
      length: 6,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.txtNomeCompletoFocusNode ??= FocusNode();

    _model.txtAlcunhaAddTextController ??= TextEditingController();
    _model.txtAlcunhaAddFocusNode ??= FocusNode();

    _model.txtDataUltimaPrisaoTextController ??= TextEditingController();
    _model.txtDataUltimaPrisaoFocusNode ??= FocusNode();

    _model.txtDataNascimentoTextController ??= TextEditingController();
    _model.txtDataNascimentoFocusNode ??= FocusNode();

    _model.txtNoInfopenTextController ??= TextEditingController();
    _model.txtNoInfopenFocusNode ??= FocusNode();

    _model.txtMaeNomeTextController ??= TextEditingController();
    _model.txtMaeNomeFocusNode ??= FocusNode();

    _model.txtNomePaiTextController ??= TextEditingController();
    _model.txtNomePaiFocusNode ??= FocusNode();

    _model.txtMembroHistoricoFocusNode ??= FocusNode();

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
          _model.txtDataUltimaPrisaoTextController?.text = dateTimeFormat(
            "d/M/y",
            _model.datePicked2,
            locale: FFLocalizations.of(context).languageCode,
          );
          _model.txtDataNascimentoTextController?.text = dateTimeFormat(
            "d/M/y",
            _model.datePicked1,
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

                      return Container(
                        width: 1440.0,
                        height: 900.0,
                        constraints: BoxConstraints(
                          minWidth: 1440.0,
                          minHeight: 900.0,
                          maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                          maxHeight: MediaQuery.sizeOf(context).height * 1.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
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
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.826,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const Alignment(0.0, 0),
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
                                                                '5got0r9g' /* Procedures */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'zo5mhuuq' /* Faction */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'stse0963' /* Crime Action */,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'i3nwl1ug' /* Alert */,
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
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
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
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Form(
                                                                        key: _model
                                                                            .formKey1,
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
                                                                                                  final fotosMembroPaths = _model.uploadedFileUrls.map((e) => e).toList();

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
                                                                                    flex: 5,
                                                                                    child: FutureBuilder<List<FaccoesRow>>(
                                                                                      future: FaccoesTable().queryRows(
                                                                                        queryFn: (q) => q.order('nome'),
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
                                                                                            'p8zr65o2' /* Factions */,
                                                                                          ),
                                                                                          searchHintText: FFLocalizations.of(context).getText(
                                                                                            'c65kmjew' /* Search... */,
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
                                                                                        queryFn: (q) => q.order('descricao', ascending: true),
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
                                                                                          optionLabels: ddwFuncaoFuncoesRowList.map((e) => e.descricao).withoutNulls.toList(),
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
                                                                                            '4fb7ygyu' /* Function */,
                                                                                          ),
                                                                                          searchHintText: FFLocalizations.of(context).getText(
                                                                                            'zg77wevd' /* Search... */,
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
                                                                                            '5rqof90h' /* Positions */,
                                                                                          ),
                                                                                          searchHintText: FFLocalizations.of(context).getText(
                                                                                            '6gzu9rr7' /* Search... */,
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
                                                                                      controller: _model.txtNomeCompletoTextController ??= TextEditingController(
                                                                                        text: overlayMembrosRow?.nomeCompleto,
                                                                                      ),
                                                                                      focusNode: _model.txtNomeCompletoFocusNode,
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
                                                                                      validator: _model.txtNomeCompletoTextControllerValidator.asValidator(context),
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
                                                                                            _model.ddwEstadoCivilValue ??= 1,
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
                                                                                              'rfc9v78y' /* Single */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'm9mi75d2' /* Married */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'qso8sekn' /* Divorced */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'erusnuss' /* Widowed */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'vcm3xon0' /* Legally separated */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'joe5pub6' /* Stable union: */,
                                                                                            ),
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '3ubhuqyx' /* None of the options */,
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
                                                                                            '2rr730y3' /* Marital status */,
                                                                                          ),
                                                                                          searchHintText: FFLocalizations.of(context).getText(
                                                                                            'hshq11tm' /* Marital status */,
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
                                                                                  Icon(
                                                                                    Icons.add_circle_outlined,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 40.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    flex: 16,
                                                                                    child: Builder(
                                                                                      builder: (context) {
                                                                                        final tagAlcunha = (overlayMembrosRow?.alcunha.toList() ?? []).take(5).toList();

                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: List.generate(tagAlcunha.length, (tagAlcunhaIndex) {
                                                                                            final tagAlcunhaItem = tagAlcunha[tagAlcunhaIndex];
                                                                                            return Expanded(
                                                                                              child: Container(
                                                                                                constraints: const BoxConstraints(
                                                                                                  minHeight: 40.0,
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
                                                                                                child: Align(
                                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'xvhtuhnm' /* Alcunha #1 */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  )),
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
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwLocalizacoesValueController ??= FormFieldController<String>(
                                                                                        _model.ddwLocalizacoesValue ??= '',
                                                                                      ),
                                                                                      options: List<String>.from(['']),
                                                                                      optionLabels: const [''],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwLocalizacoesValue = val),
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
                                                                                        '8bhgzjw3' /* Localizations */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'w89q228c' /* Search... */,
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
                                                                                  Icon(
                                                                                    Icons.add_circle_outlined,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 40.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtDataUltimaPrisaoTextController,
                                                                                      focusNode: _model.txtDataUltimaPrisaoFocusNode,
                                                                                      autofocus: false,
                                                                                      textInputAction: TextInputAction.send,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          '6is0v9cf' /* Date of last arrest */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'y0skhz0z' /* Date of last arrest */,
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
                                                                                      keyboardType: TextInputType.datetime,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtDataUltimaPrisaoTextControllerValidator.asValidator(context),
                                                                                      inputFormatters: [
                                                                                        _model.txtDataUltimaPrisaoMask
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 8.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).primary,
                                                                                    icon: Icon(
                                                                                      Icons.calendar_month_sharp,
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('MODAL_ADD_MEMBROS_calendar_month_sharp_I');
                                                                                      final datePicked1Date = await showDatePicker(
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

                                                                                      if (datePicked1Date != null) {
                                                                                        safeSetState(() {
                                                                                          _model.datePicked1 = DateTime(
                                                                                            datePicked1Date.year,
                                                                                            datePicked1Date.month,
                                                                                            datePicked1Date.day,
                                                                                          );
                                                                                        });
                                                                                      }
                                                                                      safeSetState(() {
                                                                                        _model.txtDataUltimaPrisaoTextController?.text = dateTimeFormat(
                                                                                          "yMd",
                                                                                          _model.datePicked1,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        );
                                                                                        _model.txtDataUltimaPrisaoTextController?.selection = TextSelection.collapsed(offset: _model.txtDataUltimaPrisaoTextController!.text.length);
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtDataNascimentoTextController,
                                                                                      focusNode: _model.txtDataNascimentoFocusNode,
                                                                                      autofocus: false,
                                                                                      textInputAction: TextInputAction.send,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          'ekm5bqzl' /* Date of birth */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'qsg1hkly' /* Date of birth */,
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
                                                                                      keyboardType: TextInputType.datetime,
                                                                                      cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                      validator: _model.txtDataNascimentoTextControllerValidator.asValidator(context),
                                                                                      inputFormatters: [
                                                                                        _model.txtDataNascimentoMask
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 8.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).primary,
                                                                                    icon: Icon(
                                                                                      Icons.calendar_month_sharp,
                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      logFirebaseEvent('MODAL_ADD_MEMBROS_calendar_month_sharp_I');
                                                                                      final datePicked2Date = await showDatePicker(
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

                                                                                      if (datePicked2Date != null) {
                                                                                        safeSetState(() {
                                                                                          _model.datePicked2 = DateTime(
                                                                                            datePicked2Date.year,
                                                                                            datePicked2Date.month,
                                                                                            datePicked2Date.day,
                                                                                          );
                                                                                        });
                                                                                      }
                                                                                      safeSetState(() {
                                                                                        _model.txtDataNascimentoTextController?.text = dateTimeFormat(
                                                                                          "yMd",
                                                                                          _model.datePicked2,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        );
                                                                                        _model.txtDataNascimentoTextController?.selection = TextSelection.collapsed(offset: _model.txtDataNascimentoTextController!.text.length);
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ].divide(const SizedBox(width: 10.0)),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    flex: 2,
                                                                                    child: TextFormField(
                                                                                      controller: _model.txtNoInfopenTextController,
                                                                                      focusNode: _model.txtNoInfopenFocusNode,
                                                                                      autofocus: false,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                          '2opj9i3o' /* National Infopen Number */,
                                                                                        ),
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'v4bdomyi' /* National Infopen Number */,
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
                                                                                  Expanded(
                                                                                    flex: 3,
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwEstadoValueController1 ??= FormFieldController<String>(
                                                                                        _model.ddwEstadoValue1 ??= '',
                                                                                      ),
                                                                                      options: List<String>.from(['']),
                                                                                      optionLabels: const [''],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwEstadoValue1 = val),
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
                                                                                        'i92q2h5w' /* Procedural status */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'ov8z5k7q' /* Procedural status */,
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
                                                                                      controller: _model.ddwMunicipioValueController1 ??= FormFieldController<String>(
                                                                                        _model.ddwMunicipioValue1 ??= '',
                                                                                      ),
                                                                                      options: List<String>.from(['']),
                                                                                      optionLabels: const [''],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwMunicipioValue1 = val),
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
                                                                                        'uqfd5q9z' /* Color/Skin/Ethnicity */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'nbz99o5b' /* Color/Skin/Ethnicity */,
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
                                                                                      controller: _model.ddwDistritoValueController1 ??= FormFieldController<String>(
                                                                                        _model.ddwDistritoValue1 ??= '',
                                                                                      ),
                                                                                      options: List<String>.from(['']),
                                                                                      optionLabels: const [''],
                                                                                      onChanged: (val) => safeSetState(() => _model.ddwDistritoValue1 = val),
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
                                                                                        '05v92wca' /* Blood type */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'f70cpju6' /* Blood type */,
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
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwSituacaoMaeValueController ??= FormFieldController<String>(
                                                                                        _model.ddwSituacaoMaeValue ??= '',
                                                                                      ),
                                                                                      options: List<String>.from(['']),
                                                                                      optionLabels: const [''],
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
                                                                                        'gc3vbmj4' /* Mother Situation */,
                                                                                      ),
                                                                                      searchHintText: FFLocalizations.of(context).getText(
                                                                                        'bj72hiw8' /* Mother's Situation */,
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
                                                                                    child: FlutterFlowDropDown<String>(
                                                                                      controller: _model.ddwSituacaoPaiValueController ??= FormFieldController<String>(
                                                                                        _model.ddwSituacaoPaiValue ??= '',
                                                                                      ),
                                                                                      options: List<String>.from(['']),
                                                                                      optionLabels: const [''],
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
                                                                                        'cnn9tddw' /* Father's Situation */,
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
                                                                            ].divide(const SizedBox(height: 15.0)),
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
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Form(
                                                                      key: _model
                                                                          .formKey2,
                                                                      autovalidateMode:
                                                                          AutovalidateMode
                                                                              .disabled,
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            1149.0,
                                                                        height:
                                                                            701.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              16.0,
                                                                              0.0,
                                                                              0.0),
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
                                                                                    FlutterFlowRadioButton(
                                                                                      options: [
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '08f1it9z' /* Brazilian born */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '5r7kuicl' /* Naturalized Brazilian */,
                                                                                        ),
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'pjygocz6' /* Foreigner */,
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
                                                                                      child: FlutterFlowDropDown<String>(
                                                                                        controller: _model.ddwEstadoValueController2 ??= FormFieldController<String>(
                                                                                          _model.ddwEstadoValue2 ??= '',
                                                                                        ),
                                                                                        options: List<String>.from(['']),
                                                                                        optionLabels: const [''],
                                                                                        onChanged: (val) => safeSetState(() => _model.ddwEstadoValue2 = val),
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
                                                                                          'cbh3ukkw' /* Function */,
                                                                                        ),
                                                                                        searchHintText: FFLocalizations.of(context).getText(
                                                                                          'td986qh3' /* Search... */,
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
                                                                                      flex: 4,
                                                                                      child: FlutterFlowDropDown<String>(
                                                                                        controller: _model.ddwMunicipioValueController2 ??= FormFieldController<String>(
                                                                                          _model.ddwMunicipioValue2 ??= '',
                                                                                        ),
                                                                                        options: List<String>.from(['']),
                                                                                        optionLabels: const [''],
                                                                                        onChanged: (val) => safeSetState(() => _model.ddwMunicipioValue2 = val),
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
                                                                                          'tsjf37kw' /* Function */,
                                                                                        ),
                                                                                        searchHintText: FFLocalizations.of(context).getText(
                                                                                          'el0ub5v2' /* Search... */,
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
                                                                                      flex: 4,
                                                                                      child: FlutterFlowDropDown<String>(
                                                                                        controller: _model.ddwDistritoValueController2 ??= FormFieldController<String>(
                                                                                          _model.ddwDistritoValue2 ??= '',
                                                                                        ),
                                                                                        options: List<String>.from(['']),
                                                                                        optionLabels: const [''],
                                                                                        onChanged: (val) => safeSetState(() => _model.ddwDistritoValue2 = val),
                                                                                        height: 60.0,
                                                                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                          'sdft18te' /* Positions */,
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
                                                                                          controller: _model.txtMembroHistoricoTextController ??= TextEditingController(
                                                                                            text: overlayMembrosRow?.historico,
                                                                                          ),
                                                                                          focusNode: _model.txtMembroHistoricoFocusNode,
                                                                                          autofocus: true,
                                                                                          obscureText: false,
                                                                                          decoration: InputDecoration(
                                                                                            labelText: FFLocalizations.of(context).getText(
                                                                                              'awnrzzus' /* Historic */,
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
                                                                                          maxLines: 26,
                                                                                          cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                          validator: _model.txtMembroHistoricoTextControllerValidator.asValidator(context),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 10.0)),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 10.0)),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                                      child:
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
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                          ),
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.stretch,
                                                                            children: [
                                                                              Container(
                                                                                decoration: const BoxDecoration(),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                  child: SingleChildScrollView(
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'pkxqwpe0' /* Procedure */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '8wkf62hp' /* Procedure */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'cwdxjy9v' /* Unit */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'l2vacdhp' /* Type of Procedure */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'vpcryda6' /* Crime */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Container(
                                                                                            decoration: const BoxDecoration(),
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  's7pnbuqy' /* Data */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(const SizedBox(width: 16.0)),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        content:
                                                                            Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  height: 70.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 0.0,
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        offset: const Offset(
                                                                                          0.0,
                                                                                          1.0,
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(1.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    ),
                                                                                  ),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                  child: FlutterFlowIconButton(
                                                                                                    borderRadius: 40.0,
                                                                                                    buttonSize: 40.0,
                                                                                                    fillColor: FlutterFlowTheme.of(context).primary,
                                                                                                    icon: Icon(
                                                                                                      Icons.arrow_back,
                                                                                                      color: FlutterFlowTheme.of(context).info,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                    showLoadingIndicator: true,
                                                                                                    onPressed: () {
                                                                                                      print('IconButton pressed ...');
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'k0z056dg' /* List Item */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    '4vkiqra9' /* List Item */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'qddih2dx' /* List Item */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'cyqz7sdo' /* List Item */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 100.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'iwh4sdh0' /* List Item */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.chevron_right_rounded,
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          size: 24.0,
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
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.756,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              0.8,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          MediaQuery.sizeOf(context).height *
                                                                              0.8,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
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
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'yotbhdup' /* Cancel */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
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
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            hoverBorderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
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
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'afbgi0tm' /* Save Member */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
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
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1,
                                                            hoverBorderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                          ],
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    child:
                                                                        GridView(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
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
                          ],
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
