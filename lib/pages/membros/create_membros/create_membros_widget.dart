import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'create_membros_model.dart';
export 'create_membros_model.dart';

class CreateMembrosWidget extends StatefulWidget {
  const CreateMembrosWidget({super.key});

  @override
  State<CreateMembrosWidget> createState() => _CreateMembrosWidgetState();
}

class _CreateMembrosWidgetState extends State<CreateMembrosWidget>
    with TickerProviderStateMixin {
  late CreateMembrosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateMembrosModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'create_membros'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 7,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.nomeCompletoTextController ??= TextEditingController();
    _model.nomeCompletoFocusNode ??= FocusNode();

    _model.dataNascimentoTextController ??= TextEditingController();
    _model.dataNascimentoFocusNode ??= FocusNode();

    _model.dataUltimaPrissaoTextController ??= TextEditingController();
    _model.dataUltimaPrissaoFocusNode ??= FocusNode();

    _model.noInfopenNacionalTextController ??= TextEditingController();
    _model.noInfopenNacionalFocusNode ??= FocusNode();

    _model.maeTextController ??= TextEditingController();
    _model.maeFocusNode ??= FocusNode();

    _model.paiTextController ??= TextEditingController();
    _model.paiFocusNode ??= FocusNode();

    _model.distritoTextController ??= TextEditingController();
    _model.distritoFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30.0,
          ),
          onPressed: () async {
            logFirebaseEvent('CREATE_MEMBROS_arrow_back_rounded_ICN_ON');
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'zt5b7d9p' /* Add Member */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap().containsKey(
                    FlutterFlowTheme.of(context).headlineMediumFamily),
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        top: true,
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
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
                          List<MembrosRow> columnMembrosRowList =
                              snapshot.data!;

                          final columnMembrosRow =
                              columnMembrosRowList.isNotEmpty
                                  ? columnMembrosRowList.first
                                  : null;

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(0.0, 0),
                                        child: TabBar(
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily),
                                              ),
                                          unselectedLabelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMediumFamily,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMediumFamily),
                                                  ),
                                          indicatorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          tabs: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_task_rounded,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'd42cp4ch' /* Perfil */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .history_toggle_off_rounded,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'm29cw784' /* Historic */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.policy_outlined,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'lm32ioyv' /* Procedures */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.local_police_outlined,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '0prey7w1' /* Processis */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 12.0, 0.0),
                                                  child: Icon(
                                                    Icons.account_tree_outlined,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '5c8skmyl' /* Faction */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.pending_actions,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '8r89pwle' /* Crime Action */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.crisis_alert_outlined,
                                                  ),
                                                ),
                                                Tab(
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ikkmo8ny' /* Alert */,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                          controller: _model.tabBarController,
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
                                          controller: _model.tabBarController,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 12.0,
                                                    color: Color(0x1E000000),
                                                    offset: Offset(
                                                      0.0,
                                                      5.0,
                                                    ),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Form(
                                                      key: _model.formKey,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .disabled,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        16.0,
                                                                        24.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '398bi6zs' /* Upload images about the member... */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent1,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              2.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://picsum.photos/seed/123/600',
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent1,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              2.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://picsum.photos/seed/123/600',
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent1,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              2.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        child: Image
                                                                            .network(
                                                                          'https://picsum.photos/seed/123/600',
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ]
                                                                    .divide(SizedBox(
                                                                        width:
                                                                            12.0))
                                                                    .addToStart(
                                                                        SizedBox(
                                                                            width:
                                                                                24.0))
                                                                    .addToEnd(
                                                                        SizedBox(
                                                                            width:
                                                                                24.0)),
                                                              ),
                                                              Flexible(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Expanded(
                                                                          flex:
                                                                              4,
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
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
                                                                                  List<FaccoesRow> dropDownFaccaoFaccoesRowList = snapshot.data!;

                                                                                  return FlutterFlowDropDown<int>(
                                                                                    controller: _model.dropDownFaccaoValueController ??= FormFieldController<int>(null),
                                                                                    options: List<int>.from(dropDownFaccaoFaccoesRowList.map((e) => e.faccaoId).toList()),
                                                                                    optionLabels: dropDownFaccaoFaccoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                    onChanged: (val) => safeSetState(() => _model.dropDownFaccaoValue = val),
                                                                                    height: 60.0,
                                                                                    searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                        ),
                                                                                    searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                    hintText: FFLocalizations.of(context).getText(
                                                                                      'x6mky7qo' /* Select one Faction ... */,
                                                                                    ),
                                                                                    searchHintText: FFLocalizations.of(context).getText(
                                                                                      'bhtndv36' /* Search... */,
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
                                                                                    borderRadius: 12.0,
                                                                                    margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                    hidesUnderline: true,
                                                                                    isOverButton: false,
                                                                                    isSearchable: true,
                                                                                    isMultiSelect: false,
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              4,
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                FutureBuilder<List<FuncoesRow>>(
                                                                              future: FuncoesTable().queryRows(
                                                                                queryFn: (q) => q.order('funcao_id', ascending: true),
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
                                                                                List<FuncoesRow> dropDownFuncaoFuncoesRowList = snapshot.data!;

                                                                                return FlutterFlowDropDown<int>(
                                                                                  controller: _model.dropDownFuncaoValueController ??= FormFieldController<int>(null),
                                                                                  options: List<int>.from(dropDownFuncaoFuncoesRowList.map((e) => e.funcaoId).toList()),
                                                                                  optionLabels: dropDownFuncaoFuncoesRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownFuncaoValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'pklsojyd' /* Select one Function */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'k2hripax' /* Search... */,
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
                                                                                  borderRadius: 12.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              controller: _model.dropDownSexoValueController ??= FormFieldController<String>(null),
                                                                              options: List<String>.from([
                                                                                '1',
                                                                                '2',
                                                                                '3'
                                                                              ]),
                                                                              optionLabels: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'g5cc4pxm' /* Male */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'i6epv2gh' /* Female */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '6givblnf' /* Others */,
                                                                                )
                                                                              ],
                                                                              onChanged: (val) => safeSetState(() => _model.dropDownSexoValue = val),
                                                                              height: 60.0,
                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'oilq80u5' /* Select one Sex ... */,
                                                                              ),
                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                'kx5e00wb' /* Search... */,
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
                                                                              borderRadius: 12.0,
                                                                              margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              hidesUnderline: true,
                                                                              isOverButton: false,
                                                                              isSearchable: true,
                                                                              isMultiSelect: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          flex:
                                                                              3,
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                FlutterFlowDropDown<String>(
                                                                              controller: _model.dropDownTipoSanguineoValueController ??= FormFieldController<String>(null),
                                                                              options: List<String>.from([
                                                                                'A+',
                                                                                'A-',
                                                                                'B+',
                                                                                'B-',
                                                                                'O+',
                                                                                'O-',
                                                                                'AB+',
                                                                                'AB-'
                                                                              ]),
                                                                              optionLabels: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'sphccniy' /* A+ */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '4qy7groc' /* A- */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'qi9bptnr' /* B+ */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '33axhdsz' /* B- */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'sltd6l9q' /* O+ */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '2xmhmsma' /* O- */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'xu4rgnqy' /* AB+ */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '7xhb8fgz' /* AB- */,
                                                                                )
                                                                              ],
                                                                              onChanged: (val) => safeSetState(() => _model.dropDownTipoSanguineoValue = val),
                                                                              height: 60.0,
                                                                              searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                '77rkki8e' /* Blood type ... */,
                                                                              ),
                                                                              searchHintText: FFLocalizations.of(context).getText(
                                                                                'anxapn2i' /* Search... */,
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
                                                                              borderRadius: 12.0,
                                                                              margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                              hidesUnderline: true,
                                                                              isOverButton: false,
                                                                              isSearchable: true,
                                                                              isMultiSelect: false,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 12.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 1.0,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.nomeCompletoTextController,
                                                                            focusNode:
                                                                                _model.nomeCompletoFocusNode,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                'wrnn3dpp' /* Full Name of Member */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'ap4evi76' /* Full Name of Member */,
                                                                              ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            validator:
                                                                                _model.nomeCompletoTextControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.dataNascimentoTextController,
                                                                            focusNode:
                                                                                _model.dataNascimentoFocusNode,
                                                                            onFieldSubmitted:
                                                                                (_) async {
                                                                              logFirebaseEvent('CREATE_MEMBROS_data-nascimento_ON_TEXTFI');
                                                                              FFAppState().addToData(FFAppState().mascara);
                                                                              safeSetState(() {});
                                                                            },
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                '88zmsnd2' /* Date of birth */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            maxLength:
                                                                                11,
                                                                            buildCounter: (context, {required currentLength, required isFocused, maxLength}) =>
                                                                                null,
                                                                            keyboardType:
                                                                                TextInputType.datetime,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            validator:
                                                                                _model.dataNascimentoTextControllerValidator.asValidator(context),
                                                                            inputFormatters: [
                                                                              _model.dataNascimentoMask
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.dataUltimaPrissaoTextController,
                                                                            focusNode:
                                                                                _model.dataUltimaPrissaoFocusNode,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                'xy10hy0e' /* Date of last arrest */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            keyboardType:
                                                                                TextInputType.datetime,
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            validator:
                                                                                _model.dataUltimaPrissaoTextControllerValidator.asValidator(context),
                                                                            inputFormatters: [
                                                                              _model.dataUltimaPrissaoMask
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.noInfopenNacionalTextController,
                                                                            focusNode:
                                                                                _model.noInfopenNacionalFocusNode,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                'wdgae0rc' /* Infopen number */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            validator:
                                                                                _model.noInfopenNacionalTextControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 5,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              FutureBuilder<List<FuncoesRow>>(
                                                                            future:
                                                                                FuncoesTable().queryRows(
                                                                              queryFn: (q) => q,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<FuncoesRow> dropDownSituacaoProcessualFuncoesRowList = snapshot.data!;

                                                                              return FlutterFlowDropDown<String>(
                                                                                controller: _model.dropDownSituacaoProcessualValueController ??= FormFieldController<String>(null),
                                                                                options: List<String>.from([
                                                                                  'Option 1',
                                                                                  'Option 2',
                                                                                  'Option 3'
                                                                                ]),
                                                                                optionLabels: [
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'eaakj3m3' /* Option 1 */,
                                                                                  ),
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'm5iymkyr' /* Option 2 */,
                                                                                  ),
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'u8na1z7w' /* Option 3 */,
                                                                                  )
                                                                                ],
                                                                                onChanged: (val) => safeSetState(() => _model.dropDownSituacaoProcessualValue = val),
                                                                                height: 60.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                    ),
                                                                                searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                hintText: FFLocalizations.of(context).getText(
                                                                                  'q0lyli0d' /* Process situaction */,
                                                                                ),
                                                                                searchHintText: FFLocalizations.of(context).getText(
                                                                                  'z2yglpw9' /* Search... */,
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
                                                                                borderRadius: 12.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: true,
                                                                                isMultiSelect: false,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 4,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              FutureBuilder<List<FaccoesRow>>(
                                                                            future:
                                                                                FaccoesTable().queryRows(
                                                                              queryFn: (q) => q,
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<FaccoesRow> dropDownCorPeleEtniaFaccoesRowList = snapshot.data!;

                                                                              return FlutterFlowDropDown<String>(
                                                                                controller: _model.dropDownCorPeleEtniaValueController ??= FormFieldController<String>(null),
                                                                                options: List<String>.from([
                                                                                  'Option 1',
                                                                                  'Option 2',
                                                                                  'Option 3'
                                                                                ]),
                                                                                optionLabels: [
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'qkkgfo6c' /* Option 1 */,
                                                                                  ),
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'p1rl94m1' /* Option 2 */,
                                                                                  ),
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'bm5w0ytr' /* Option 3 */,
                                                                                  )
                                                                                ],
                                                                                onChanged: (val) => safeSetState(() => _model.dropDownCorPeleEtniaValue = val),
                                                                                height: 60.0,
                                                                                searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                    ),
                                                                                searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                                hintText: FFLocalizations.of(context).getText(
                                                                                  '93et3kgp' /* Color/Skin/Ethnicity ... */,
                                                                                ),
                                                                                searchHintText: FFLocalizations.of(context).getText(
                                                                                  'imlpdzfi' /* Search... */,
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
                                                                                borderRadius: 12.0,
                                                                                margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                hidesUnderline: true,
                                                                                isOverButton: false,
                                                                                isSearchable: true,
                                                                                isMultiSelect: false,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            12.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Row(
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
                                                                      Expanded(
                                                                        flex: 6,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.maeTextController,
                                                                              focusNode: _model.maeFocusNode,
                                                                              autofocus: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'aw983q3g' /* Mother */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                    ),
                                                                                hintText: FFLocalizations.of(context).getText(
                                                                                  'n8fg5v4y' /* Enter in your website without ... */,
                                                                                ),
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              cursorColor: FlutterFlowTheme.of(context).primary,
                                                                              validator: _model.maeTextControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                FutureBuilder<List<FuncoesRow>>(
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
                                                                                List<FuncoesRow> dropDownSituacaoMaeFuncoesRowList = snapshot.data!;

                                                                                return FlutterFlowDropDown<String>(
                                                                                  controller: _model.dropDownSituacaoMaeValueController ??= FormFieldController<String>(null),
                                                                                  options: List<String>.from([
                                                                                    'Option 1',
                                                                                    'Option 2',
                                                                                    'Option 3'
                                                                                  ]),
                                                                                  optionLabels: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '00ygo4e8' /* Option 1 */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'g9r8g63w' /* Option 2 */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '2pbnl68y' /* Option 3 */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownSituacaoMaeValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'qjk0q0ej' /* Mother Situation ... */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'orcfcnrt' /* Search... */,
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
                                                                                  borderRadius: 12.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            12.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Row(
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
                                                                      Expanded(
                                                                        flex: 6,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.paiTextController,
                                                                            focusNode:
                                                                                _model.paiFocusNode,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelText: FFLocalizations.of(context).getText(
                                                                                '1zd5646m' /* Father */,
                                                                              ),
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                '1mb13ovl' /* Enter in your website without ... */,
                                                                              ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                  letterSpacing: 0.0,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                ),
                                                                            cursorColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            validator:
                                                                                _model.paiTextControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                FutureBuilder<List<FuncoesRow>>(
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
                                                                                List<FuncoesRow> dropDownSituacaoPaiFuncoesRowList = snapshot.data!;

                                                                                return FlutterFlowDropDown<String>(
                                                                                  controller: _model.dropDownSituacaoPaiValueController ??= FormFieldController<String>(null),
                                                                                  options: List<String>.from([
                                                                                    'Option 1',
                                                                                    'Option 2',
                                                                                    'Option 3'
                                                                                  ]),
                                                                                  optionLabels: [
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '10z2t8bw' /* Option 1 */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'vhhcvtqn' /* Option 2 */,
                                                                                    ),
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'pzsndih4' /* Option 3 */,
                                                                                    )
                                                                                  ],
                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownSituacaoPaiValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '6pb9t2yl' /* Father Situation ... */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'ck86kowm' /* Search... */,
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
                                                                                  borderRadius: 12.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            12.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  child: Row(
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
                                                                      Expanded(
                                                                        flex: 7,
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                16.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FlutterFlowRadioButton(
                                                                              options: [
                                                                                FFLocalizations.of(context).getText(
                                                                                  'u5o3gw5t' /* Brazilian Born */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  'my7pwr8a' /* Brazilian Naturalized */,
                                                                                ),
                                                                                FFLocalizations.of(context).getText(
                                                                                  '77flygss' /* Foreigner */,
                                                                                )
                                                                              ].toList(),
                                                                              onChanged: (val) => safeSetState(() {}),
                                                                              controller: _model.radioButtonValueController ??= FormFieldController<String>(null),
                                                                              optionHeight: 32.0,
                                                                              textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                  ),
                                                                              selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              buttonPosition: RadioButtonPosition.left,
                                                                              direction: Axis.horizontal,
                                                                              radioButtonColor: FlutterFlowTheme.of(context).primary,
                                                                              inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
                                                                              toggleable: false,
                                                                              horizontalAlignment: WrapAlignment.start,
                                                                              verticalAlignment: WrapCrossAlignment.start,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 2,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                FutureBuilder<List<EstadosRow>>(
                                                                              future: EstadosTable().queryRows(
                                                                                queryFn: (q) => q.order('sigla', ascending: true),
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
                                                                                List<EstadosRow> dropDownEstadoEstadosRowList = snapshot.data!;

                                                                                return FlutterFlowDropDown<int>(
                                                                                  controller: _model.dropDownEstadoValueController ??= FormFieldController<int>(
                                                                                    _model.dropDownEstadoValue ??= 27,
                                                                                  ),
                                                                                  options: List<int>.from(dropDownEstadoEstadosRowList.map((e) => e.estadoId).toList()),
                                                                                  optionLabels: dropDownEstadoEstadosRowList.map((e) => e.sigla).withoutNulls.toList(),
                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownEstadoValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '2ky1fnhf' /* State ... */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'y2uo2ocn' /* State... */,
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
                                                                                  borderRadius: 12.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                FutureBuilder<List<MunicipiosRow>>(
                                                                              future: MunicipiosTable().queryRows(
                                                                                queryFn: (q) => q
                                                                                    .eq(
                                                                                      'estado_id',
                                                                                      _model.dropDownEstadoValue,
                                                                                    )
                                                                                    .order('estado_id', ascending: true),
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
                                                                                List<MunicipiosRow> dropDownMunicipioMunicipiosRowList = snapshot.data!;

                                                                                return FlutterFlowDropDown<int>(
                                                                                  controller: _model.dropDownMunicipioValueController ??= FormFieldController<int>(
                                                                                    _model.dropDownMunicipioValue ??= 27,
                                                                                  ),
                                                                                  options: List<int>.from(dropDownMunicipioMunicipiosRowList.map((e) => e.municipioId).withoutNulls.toList()),
                                                                                  optionLabels: dropDownMunicipioMunicipiosRowList.map((e) => e.nome).withoutNulls.toList(),
                                                                                  onChanged: (val) => safeSetState(() => _model.dropDownMunicipioValue = val),
                                                                                  height: 60.0,
                                                                                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                      ),
                                                                                  searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '002xztjg' /* Municipality... */,
                                                                                  ),
                                                                                  searchHintText: FFLocalizations.of(context).getText(
                                                                                    'wi0rpub7' /* Municipality... */,
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
                                                                                  borderRadius: 12.0,
                                                                                  margin: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                                                                                  hidesUnderline: true,
                                                                                  isOverButton: false,
                                                                                  isSearchable: true,
                                                                                  isMultiSelect: false,
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        flex: 3,
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.distritoTextController,
                                                                              focusNode: _model.distritoFocusNode,
                                                                              autofocus: true,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                labelText: FFLocalizations.of(context).getText(
                                                                                  'fcnebsya' /* District */,
                                                                                ),
                                                                                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                                    ),
                                                                                hintText: FFLocalizations.of(context).getText(
                                                                                  '9ea2ilm3' /* District */,
                                                                                ),
                                                                                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
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
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                  ),
                                                                              cursorColor: FlutterFlowTheme.of(context).primary,
                                                                              validator: _model.distritoTextControllerValidator.asValidator(context),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            12.0)),
                                                                  ),
                                                                ),
                                                              ),
                                                            ].divide(SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation']!),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 16.0, 24.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.05),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'CREATE_MEMBROS_PAGE_CANCEL_BTN_ON_TAP');
                                              context.safePop();
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '5f6ql4l7' /* Cancel */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 44.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              hoverBorderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              hoverElevation: 3.0,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.05),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'imd8zz6k' /* Save Member */,
                                            ),
                                            options: FFButtonOptions(
                                              height: 44.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              hoverBorderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              hoverElevation: 0.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 3.0,
                                height: 350.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            icon: Icon(
                                              Icons.reduce_capacity,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'a4oprhwn' /* Relationships */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLargeFamily),
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: GridView(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 1.0,
                                        ),
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 3.0,
                                height: 350.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 8.0,
                                            buttonSize: 40.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            icon: Icon(
                                              Icons.recent_actors_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              size: 24.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tu5xy9mp' /* Groups */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLargeFamily,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLargeFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: GridView(
                                          padding: EdgeInsets.zero,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 10.0,
                                            mainAxisSpacing: 10.0,
                                            childAspectRatio: 1.0,
                                          ),
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          children: [],
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
