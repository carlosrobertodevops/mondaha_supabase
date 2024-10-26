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
import 'dart:math';
import 'dart:ui';
import 'modal_add_membros_widget.dart' show ModalAddMembrosWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ModalAddMembrosModel extends FlutterFlowModel<ModalAddMembrosWidget> {
  ///  Local state fields for this component.

  late LoggableList<String> _membrosPhotos = LoggableList([]);
  set membrosPhotos(List<String> value) {
    if (value != null) {
      _membrosPhotos = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get membrosPhotos =>
      _membrosPhotos?..logger = () => debugLogWidgetClass(this);
  void addToMembrosPhotos(String item) => membrosPhotos.add(item);
  void removeFromMembrosPhotos(String item) => membrosPhotos.remove(item);
  void removeAtIndexFromMembrosPhotos(int index) =>
      membrosPhotos.removeAt(index);
  void insertAtIndexInMembrosPhotos(int index, String item) =>
      membrosPhotos.insert(index, item);
  void updateMembrosPhotosAtIndex(int index, Function(String) updateFn) =>
      membrosPhotos[index] = updateFn(membrosPhotos[index]);

  late LoggableList<String> _membrosAlcunhas = LoggableList([]);
  set membrosAlcunhas(List<String> value) {
    if (value != null) {
      _membrosAlcunhas = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get membrosAlcunhas =>
      _membrosAlcunhas?..logger = () => debugLogWidgetClass(this);
  void addToMembrosAlcunhas(String item) => membrosAlcunhas.add(item);
  void removeFromMembrosAlcunhas(String item) => membrosAlcunhas.remove(item);
  void removeAtIndexFromMembrosAlcunhas(int index) =>
      membrosAlcunhas.removeAt(index);
  void insertAtIndexInMembrosAlcunhas(int index, String item) =>
      membrosAlcunhas.insert(index, item);
  void updateMembrosAlcunhasAtIndex(int index, Function(String) updateFn) =>
      membrosAlcunhas[index] = updateFn(membrosAlcunhas[index]);

  late LoggableList<String> _membrosEnderecos = LoggableList([]);
  set membrosEnderecos(List<String> value) {
    if (value != null) {
      _membrosEnderecos = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get membrosEnderecos =>
      _membrosEnderecos?..logger = () => debugLogWidgetClass(this);
  void addToMembrosEnderecos(String item) => membrosEnderecos.add(item);
  void removeFromMembrosEnderecos(String item) => membrosEnderecos.remove(item);
  void removeAtIndexFromMembrosEnderecos(int index) =>
      membrosEnderecos.removeAt(index);
  void insertAtIndexInMembrosEnderecos(int index, String item) =>
      membrosEnderecos.insert(index, item);
  void updateMembrosEnderecosAtIndex(int index, Function(String) updateFn) =>
      membrosEnderecos[index] = updateFn(membrosEnderecos[index]);

  bool _membroAlerta = false;
  set membroAlerta(bool value) {
    _membroAlerta = value;
    debugLogWidgetClass(this);
  }

  bool get membroAlerta => _membroAlerta;

  String? _membrosLimpar;
  set membrosLimpar(String? value) {
    _membrosLimpar = value;
    debugLogWidgetClass(this);
  }

  String? get membrosLimpar => _membrosLimpar;

  late LoggableList<String> _membrosGrupos = LoggableList([]);
  set membrosGrupos(List<String> value) {
    if (value != null) {
      _membrosGrupos = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get membrosGrupos =>
      _membrosGrupos?..logger = () => debugLogWidgetClass(this);
  void addToMembrosGrupos(String item) => membrosGrupos.add(item);
  void removeFromMembrosGrupos(String item) => membrosGrupos.remove(item);
  void removeAtIndexFromMembrosGrupos(int index) =>
      membrosGrupos.removeAt(index);
  void insertAtIndexInMembrosGrupos(int index, String item) =>
      membrosGrupos.insert(index, item);
  void updateMembrosGruposAtIndex(int index, Function(String) updateFn) =>
      membrosGrupos[index] = updateFn(membrosGrupos[index]);

  late LoggableList<String> _membrosRelacoes = LoggableList([]);
  set membrosRelacoes(List<String> value) {
    if (value != null) {
      _membrosRelacoes = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get membrosRelacoes =>
      _membrosRelacoes?..logger = () => debugLogWidgetClass(this);
  void addToMembrosRelacoes(String item) => membrosRelacoes.add(item);
  void removeFromMembrosRelacoes(String item) => membrosRelacoes.remove(item);
  void removeAtIndexFromMembrosRelacoes(int index) =>
      membrosRelacoes.removeAt(index);
  void insertAtIndexInMembrosRelacoes(int index, String item) =>
      membrosRelacoes.insert(index, item);
  void updateMembrosRelacoesAtIndex(int index, Function(String) updateFn) =>
      membrosRelacoes[index] = updateFn(membrosRelacoes[index]);

  late LoggableList<String> _membrosFaccaoTresLocais = LoggableList([]);
  set membrosFaccaoTresLocais(List<String> value) {
    if (value != null) {
      _membrosFaccaoTresLocais = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get membrosFaccaoTresLocais =>
      _membrosFaccaoTresLocais?..logger = () => debugLogWidgetClass(this);
  void addToMembrosFaccaoTresLocais(String item) =>
      membrosFaccaoTresLocais.add(item);
  void removeFromMembrosFaccaoTresLocais(String item) =>
      membrosFaccaoTresLocais.remove(item);
  void removeAtIndexFromMembrosFaccaoTresLocais(int index) =>
      membrosFaccaoTresLocais.removeAt(index);
  void insertAtIndexInMembrosFaccaoTresLocais(int index, String item) =>
      membrosFaccaoTresLocais.insert(index, item);
  void updateMembrosFaccaoTresLocaisAtIndex(
          int index, Function(String) updateFn) =>
      membrosFaccaoTresLocais[index] = updateFn(membrosFaccaoTresLocais[index]);

  late LoggableList<DataTypesProcedimentosStruct> _membrosProcedimentos =
      LoggableList([]);
  set membrosProcedimentos(List<DataTypesProcedimentosStruct> value) {
    if (value != null) {
      _membrosProcedimentos = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<DataTypesProcedimentosStruct> get membrosProcedimentos =>
      _membrosProcedimentos?..logger = () => debugLogWidgetClass(this);
  void addToMembrosProcedimentos(DataTypesProcedimentosStruct item) =>
      membrosProcedimentos.add(item);
  void removeFromMembrosProcedimentos(DataTypesProcedimentosStruct item) =>
      membrosProcedimentos.remove(item);
  void removeAtIndexFromMembrosProcedimentos(int index) =>
      membrosProcedimentos.removeAt(index);
  void insertAtIndexInMembrosProcedimentos(
          int index, DataTypesProcedimentosStruct item) =>
      membrosProcedimentos.insert(index, item);
  void updateMembrosProcedimentosAtIndex(
          int index, Function(DataTypesProcedimentosStruct) updateFn) =>
      membrosProcedimentos[index] = updateFn(membrosProcedimentos[index]);

  late LoggableList<DataTypesProcessosStruct> _membrosProcessos =
      LoggableList([]);
  set membrosProcessos(List<DataTypesProcessosStruct> value) {
    if (value != null) {
      _membrosProcessos = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<DataTypesProcessosStruct> get membrosProcessos =>
      _membrosProcessos?..logger = () => debugLogWidgetClass(this);
  void addToMembrosProcessos(DataTypesProcessosStruct item) =>
      membrosProcessos.add(item);
  void removeFromMembrosProcessos(DataTypesProcessosStruct item) =>
      membrosProcessos.remove(item);
  void removeAtIndexFromMembrosProcessos(int index) =>
      membrosProcessos.removeAt(index);
  void insertAtIndexInMembrosProcessos(
          int index, DataTypesProcessosStruct item) =>
      membrosProcessos.insert(index, item);
  void updateMembrosProcessosAtIndex(
          int index, Function(DataTypesProcessosStruct) updateFn) =>
      membrosProcessos[index] = updateFn(membrosProcessos[index]);

  double _membrosPercetualValidacao = 0.1;
  set membrosPercetualValidacao(double value) {
    _membrosPercetualValidacao = value;
    debugLogWidgetClass(this);
  }

  double get membrosPercetualValidacao => _membrosPercetualValidacao;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode1;
  TextEditingController? txtNomeCompletoTextController1;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextController1Validator;
  // State field(s) for txt_alcunha_add widget.
  FocusNode? txtAlcunhaAddFocusNode;
  TextEditingController? txtAlcunhaAddTextController;
  String? Function(BuildContext, String?)? txtAlcunhaAddTextControllerValidator;
  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode2;
  TextEditingController? txtNomeCompletoTextController2;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextController2Validator;
  // State field(s) for ddw_estado_civil widget.
  int? _ddwEstadoCivilValue;
  set ddwEstadoCivilValue(int? value) {
    _ddwEstadoCivilValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwEstadoCivilValue => _ddwEstadoCivilValue;

  FormFieldController<int>? ddwEstadoCivilValueController;
  // State field(s) for txt_no_identidade widget.
  FocusNode? txtNoIdentidadeFocusNode;
  TextEditingController? txtNoIdentidadeTextController;
  String? Function(BuildContext, String?)?
      txtNoIdentidadeTextControllerValidator;
  // State field(s) for ddw_orgao_expedidor widget.
  int? _ddwOrgaoExpedidorValue;
  set ddwOrgaoExpedidorValue(int? value) {
    _ddwOrgaoExpedidorValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwOrgaoExpedidorValue => _ddwOrgaoExpedidorValue;

  FormFieldController<int>? ddwOrgaoExpedidorValueController;
  // State field(s) for txt_no_cpf widget.
  FocusNode? txtNoCpfFocusNode;
  TextEditingController? txtNoCpfTextController;
  final txtNoCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? txtNoCpfTextControllerValidator;
  // State field(s) for txt_no_infopen widget.
  FocusNode? txtNoInfopenFocusNode;
  TextEditingController? txtNoInfopenTextController;
  String? Function(BuildContext, String?)? txtNoInfopenTextControllerValidator;
  // State field(s) for txt_mae_nome widget.
  FocusNode? txtMaeNomeFocusNode;
  TextEditingController? txtMaeNomeTextController;
  String? Function(BuildContext, String?)? txtMaeNomeTextControllerValidator;
  // State field(s) for ddw_situacao_mae widget.
  String? _ddwSituacaoMaeValue;
  set ddwSituacaoMaeValue(String? value) {
    _ddwSituacaoMaeValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwSituacaoMaeValue => _ddwSituacaoMaeValue;

  FormFieldController<String>? ddwSituacaoMaeValueController;
  // State field(s) for txt_nome_pai widget.
  FocusNode? txtNomePaiFocusNode;
  TextEditingController? txtNomePaiTextController;
  String? Function(BuildContext, String?)? txtNomePaiTextControllerValidator;
  // State field(s) for ddw_situacao_pai widget.
  String? _ddwSituacaoPaiValue;
  set ddwSituacaoPaiValue(String? value) {
    _ddwSituacaoPaiValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwSituacaoPaiValue => _ddwSituacaoPaiValue;

  FormFieldController<String>? ddwSituacaoPaiValueController;
  // State field(s) for ddw_intrucao widget.
  String? _ddwIntrucaoValue;
  set ddwIntrucaoValue(String? value) {
    _ddwIntrucaoValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwIntrucaoValue => _ddwIntrucaoValue;

  FormFieldController<String>? ddwIntrucaoValueController;
  // State field(s) for txt_membros_enderecos_add widget.
  FocusNode? txtMembrosEnderecosAddFocusNode;
  TextEditingController? txtMembrosEnderecosAddTextController;
  String? Function(BuildContext, String?)?
      txtMembrosEnderecosAddTextControllerValidator;
  // State field(s) for rbtnPerfilNatural widget.
  FormFieldController<String>? rbtnPerfilNaturalValueController;
  // State field(s) for ddw_estado widget.
  int? _ddwEstadoValue;
  set ddwEstadoValue(int? value) {
    _ddwEstadoValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwEstadoValue => _ddwEstadoValue;

  FormFieldController<int>? ddwEstadoValueController;
  // State field(s) for ddw_municipio widget.
  int? _ddwMunicipioValue;
  set ddwMunicipioValue(int? value) {
    _ddwMunicipioValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwMunicipioValue => _ddwMunicipioValue;

  FormFieldController<int>? ddwMunicipioValueController;
  // State field(s) for txt_membro_historico widget.
  final txtMembroHistoricoKey = GlobalKey();
  FocusNode? txtMembroHistoricoFocusNode;
  TextEditingController? txtMembroHistoricoTextController;
  String? txtMembroHistoricoSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembroHistoricoTextControllerValidator;
  // State field(s) for ddw_membro_faccao widget.
  int? _ddwMembroFaccaoValue;
  set ddwMembroFaccaoValue(int? value) {
    _ddwMembroFaccaoValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwMembroFaccaoValue => _ddwMembroFaccaoValue;

  FormFieldController<int>? ddwMembroFaccaoValueController;
  // State field(s) for txt_faccao_bastismo widget.
  final txtFaccaoBastismoKey = GlobalKey();
  FocusNode? txtFaccaoBastismoFocusNode;
  TextEditingController? txtFaccaoBastismoTextController;
  String? txtFaccaoBastismoSelectedOption;
  String? Function(BuildContext, String?)?
      txtFaccaoBastismoTextControllerValidator;
  // State field(s) for txt_facao_local_bastismo widget.
  FocusNode? txtFacaoLocalBastismoFocusNode;
  TextEditingController? txtFacaoLocalBastismoTextController;
  String? Function(BuildContext, String?)?
      txtFacaoLocalBastismoTextControllerValidator;
  // State field(s) for txt_membros_faccao_padrinho widget.
  FocusNode? txtMembrosFaccaoPadrinhoFocusNode;
  TextEditingController? txtMembrosFaccaoPadrinhoTextController;
  String? Function(BuildContext, String?)?
      txtMembrosFaccaoPadrinhoTextControllerValidator;
  // State field(s) for txt_membro_faccao_senha widget.
  FocusNode? txtMembroFaccaoSenhaFocusNode;
  TextEditingController? txtMembroFaccaoSenhaTextController;
  String? Function(BuildContext, String?)?
      txtMembroFaccaoSenhaTextControllerValidator;
  // State field(s) for ddw_membro_faccao_cargo_atual widget.
  int? _ddwMembroFaccaoCargoAtualValue;
  set ddwMembroFaccaoCargoAtualValue(int? value) {
    _ddwMembroFaccaoCargoAtualValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwMembroFaccaoCargoAtualValue => _ddwMembroFaccaoCargoAtualValue;

  FormFieldController<int>? ddwMembroFaccaoCargoAtualValueController;
  // State field(s) for ddw_membro_faccao_cargo_anterior widget.
  int? _ddwMembroFaccaoCargoAnteriorValue;
  set ddwMembroFaccaoCargoAnteriorValue(int? value) {
    _ddwMembroFaccaoCargoAnteriorValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwMembroFaccaoCargoAnteriorValue =>
      _ddwMembroFaccaoCargoAnteriorValue;

  FormFieldController<int>? ddwMembroFaccaoCargoAnteriorValueController;
  // State field(s) for ddw_faccao_funcao_atual widget.
  int? _ddwFaccaoFuncaoAtualValue;
  set ddwFaccaoFuncaoAtualValue(int? value) {
    _ddwFaccaoFuncaoAtualValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwFaccaoFuncaoAtualValue => _ddwFaccaoFuncaoAtualValue;

  FormFieldController<int>? ddwFaccaoFuncaoAtualValueController;
  // State field(s) for ddw_faccao_funcao_anterior widget.
  int? _ddwFaccaoFuncaoAnteriorValue;
  set ddwFaccaoFuncaoAnteriorValue(int? value) {
    _ddwFaccaoFuncaoAnteriorValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwFaccaoFuncaoAnteriorValue => _ddwFaccaoFuncaoAnteriorValue;

  FormFieldController<int>? ddwFaccaoFuncaoAnteriorValueController;
  // State field(s) for txt_faccao_tres_locais_add widget.
  FocusNode? txtFaccaoTresLocaisAddFocusNode;
  TextEditingController? txtFaccaoTresLocaisAddTextController;
  String? Function(BuildContext, String?)?
      txtFaccaoTresLocaisAddTextControllerValidator;
  // State field(s) for ddw_faccao_integrou widget.
  int? _ddwFaccaoIntegrouValue;
  set ddwFaccaoIntegrouValue(int? value) {
    _ddwFaccaoIntegrouValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwFaccaoIntegrouValue => _ddwFaccaoIntegrouValue;

  FormFieldController<int>? ddwFaccaoIntegrouValueController;
  // State field(s) for ddw_faccao_aliada widget.
  int? _ddwFaccaoAliadaValue;
  set ddwFaccaoAliadaValue(int? value) {
    _ddwFaccaoAliadaValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwFaccaoAliadaValue => _ddwFaccaoAliadaValue;

  FormFieldController<int>? ddwFaccaoAliadaValueController;
  // State field(s) for ddw_faccao_inimiga widget.
  int? _ddwFaccaoInimigaValue;
  set ddwFaccaoInimigaValue(int? value) {
    _ddwFaccaoInimigaValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwFaccaoInimigaValue => _ddwFaccaoInimigaValue;

  FormFieldController<int>? ddwFaccaoInimigaValueController;
  // State field(s) for txt_procedimento_no widget.
  FocusNode? txtProcedimentoNoFocusNode;
  TextEditingController? txtProcedimentoNoTextController;
  String? Function(BuildContext, String?)?
      txtProcedimentoNoTextControllerValidator;
  // State field(s) for ddw_procedimento_unidade widget.
  String? _ddwProcedimentoUnidadeValue;
  set ddwProcedimentoUnidadeValue(String? value) {
    _ddwProcedimentoUnidadeValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwProcedimentoUnidadeValue => _ddwProcedimentoUnidadeValue;

  FormFieldController<String>? ddwProcedimentoUnidadeValueController;
  // State field(s) for ddw_procedimento_tipo widget.
  String? _ddwProcedimentoTipoValue;
  set ddwProcedimentoTipoValue(String? value) {
    _ddwProcedimentoTipoValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwProcedimentoTipoValue => _ddwProcedimentoTipoValue;

  FormFieldController<String>? ddwProcedimentoTipoValueController;
  // State field(s) for ddw_procedimento_crime widget.
  String? _ddwProcedimentoCrimeValue;
  set ddwProcedimentoCrimeValue(String? value) {
    _ddwProcedimentoCrimeValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwProcedimentoCrimeValue => _ddwProcedimentoCrimeValue;

  FormFieldController<String>? ddwProcedimentoCrimeValueController;
  // State field(s) for txt_procedimento_data widget.
  FocusNode? txtProcedimentoDataFocusNode;
  TextEditingController? txtProcedimentoDataTextController;
  final txtProcedimentoDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      txtProcedimentoDataTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for txt_processo_no_acao_penal widget.
  FocusNode? txtProcessoNoAcaoPenalFocusNode;
  TextEditingController? txtProcessoNoAcaoPenalTextController;
  String? Function(BuildContext, String?)?
      txtProcessoNoAcaoPenalTextControllerValidator;
  // State field(s) for ddw_processo_vara widget.
  String? _ddwProcessoVaraValue;
  set ddwProcessoVaraValue(String? value) {
    _ddwProcessoVaraValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwProcessoVaraValue => _ddwProcessoVaraValue;

  FormFieldController<String>? ddwProcessoVaraValueController;
  // State field(s) for ddw_processo_situacao_juridica widget.
  String? _ddwProcessoSituacaoJuridicaValue;
  set ddwProcessoSituacaoJuridicaValue(String? value) {
    _ddwProcessoSituacaoJuridicaValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwProcessoSituacaoJuridicaValue =>
      _ddwProcessoSituacaoJuridicaValue;

  FormFieldController<String>? ddwProcessoSituacaoJuridicaValueController;
  // State field(s) for ddw_processo_regime widget.
  String? _ddwProcessoRegimeValue;
  set ddwProcessoRegimeValue(String? value) {
    _ddwProcessoRegimeValue = value;
    debugLogWidgetClass(this);
  }

  String? get ddwProcessoRegimeValue => _ddwProcessoRegimeValue;

  FormFieldController<String>? ddwProcessoRegimeValueController;
  // State field(s) for ddw_processo_situacao_reu widget.
  int? _ddwProcessoSituacaoReuValue;
  set ddwProcessoSituacaoReuValue(int? value) {
    _ddwProcessoSituacaoReuValue = value;
    debugLogWidgetClass(this);
  }

  int? get ddwProcessoSituacaoReuValue => _ddwProcessoSituacaoReuValue;

  FormFieldController<int>? ddwProcessoSituacaoReuValueController;
  // State field(s) for txt_membro_atuacao widget.
  final txtMembroAtuacaoKey = GlobalKey();
  FocusNode? txtMembroAtuacaoFocusNode;
  TextEditingController? txtMembroAtuacaoTextController;
  String? txtMembroAtuacaoSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembroAtuacaoTextControllerValidator;
  // State field(s) for SwitchAlerta widget.
  bool? _switchAlertaValue;
  set switchAlertaValue(bool? value) {
    _switchAlertaValue = value;
    debugLogWidgetClass(this);
  }

  bool? get switchAlertaValue => _switchAlertaValue;

  // State field(s) for txt_membro_alerta widget.
  final txtMembroAlertaKey = GlobalKey();
  FocusNode? txtMembroAlertaFocusNode;
  TextEditingController? txtMembroAlertaTextController;
  String? txtMembroAlertaSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembroAlertaTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) {
    choiceChipsValueController?.value = val;
    debugLogWidgetClass(this);
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNomeCompletoFocusNode1?.dispose();
    txtNomeCompletoTextController1?.dispose();

    txtAlcunhaAddFocusNode?.dispose();
    txtAlcunhaAddTextController?.dispose();

    txtNomeCompletoFocusNode2?.dispose();
    txtNomeCompletoTextController2?.dispose();

    txtNoIdentidadeFocusNode?.dispose();
    txtNoIdentidadeTextController?.dispose();

    txtNoCpfFocusNode?.dispose();
    txtNoCpfTextController?.dispose();

    txtNoInfopenFocusNode?.dispose();
    txtNoInfopenTextController?.dispose();

    txtMaeNomeFocusNode?.dispose();
    txtMaeNomeTextController?.dispose();

    txtNomePaiFocusNode?.dispose();
    txtNomePaiTextController?.dispose();

    txtMembrosEnderecosAddFocusNode?.dispose();
    txtMembrosEnderecosAddTextController?.dispose();

    txtMembroHistoricoFocusNode?.dispose();

    txtFaccaoBastismoFocusNode?.dispose();

    txtFacaoLocalBastismoFocusNode?.dispose();
    txtFacaoLocalBastismoTextController?.dispose();

    txtMembrosFaccaoPadrinhoFocusNode?.dispose();
    txtMembrosFaccaoPadrinhoTextController?.dispose();

    txtMembroFaccaoSenhaFocusNode?.dispose();
    txtMembroFaccaoSenhaTextController?.dispose();

    txtFaccaoTresLocaisAddFocusNode?.dispose();
    txtFaccaoTresLocaisAddTextController?.dispose();

    txtProcedimentoNoFocusNode?.dispose();
    txtProcedimentoNoTextController?.dispose();

    txtProcedimentoDataFocusNode?.dispose();
    txtProcedimentoDataTextController?.dispose();

    txtProcessoNoAcaoPenalFocusNode?.dispose();
    txtProcessoNoAcaoPenalTextController?.dispose();

    txtMembroAtuacaoFocusNode?.dispose();

    txtMembroAlertaFocusNode?.dispose();

    textFieldFocusNode?.dispose();
    textController21?.dispose();
  }

  /// Additional helper methods.
  String? get rbtnPerfilNaturalValue => rbtnPerfilNaturalValueController?.value;
  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'membrosPhotos': debugSerializeParam(
            membrosPhotos,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiAKFgoNbWVtYnJvc1Bob3RvcxIFZ2x3c21yBhICCAMgAFAAWg1tZW1icm9zUGhvdG9zYhFtb2RhbF9hZGRfbWVtYnJvcw==',
            name: 'String',
            nullable: false,
          ),
          'membrosAlcunhas': debugSerializeParam(
            membrosAlcunhas,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiIKGAoPbWVtYnJvc0FsY3VuaGFzEgVtY3BkN3IGEgIIAyAAUABaD21lbWJyb3NBbGN1bmhhc2IRbW9kYWxfYWRkX21lbWJyb3M=',
            name: 'String',
            nullable: false,
          ),
          'membrosEnderecos': debugSerializeParam(
            membrosEnderecos,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiMKGQoQbWVtYnJvc0VuZGVyZWNvcxIFaGFwZHZyBhICCAMgAVAAWhBtZW1icm9zRW5kZXJlY29zYhFtb2RhbF9hZGRfbWVtYnJvcw==',
            name: 'String',
            nullable: false,
          ),
          'membroAlerta': debugSerializeParam(
            membroAlerta,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiYKFQoMbWVtYnJvQWxlcnRhEgVqeHc2byoHEgVmYWxzZXIECAUgAVAAWgxtZW1icm9BbGVydGFiEW1vZGFsX2FkZF9tZW1icm9z',
            name: 'bool',
            nullable: false,
          ),
          'membrosLimpar': debugSerializeParam(
            membrosLimpar,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiIKFgoNbWVtYnJvc0xpbXBhchIFZ3d0eHEqAhIAcgQIAyAAUABaDW1lbWJyb3NMaW1wYXJiEW1vZGFsX2FkZF9tZW1icm9z',
            name: 'String',
            nullable: true,
          ),
          'membrosGrupos': debugSerializeParam(
            membrosGrupos,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiAKFgoNbWVtYnJvc0dydXBvcxIFdjFqbnZyBhICCAQgAVAAWg1tZW1icm9zR3J1cG9zYhFtb2RhbF9hZGRfbWVtYnJvcw==',
            name: 'String',
            nullable: false,
          ),
          'membrosRelacoes': debugSerializeParam(
            membrosRelacoes,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QiIKGAoPbWVtYnJvc1JlbGFjb2VzEgVlaTM2YnIGEgIIBCABUABaD21lbWJyb3NSZWxhY29lc2IRbW9kYWxfYWRkX21lbWJyb3M=',
            name: 'String',
            nullable: false,
          ),
          'membrosFaccaoTresLocais': debugSerializeParam(
            membrosFaccaoTresLocais,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=Qi4KIAoXbWVtYnJvc0ZhY2Nhb1RyZXNMb2NhaXMSBXFvMWV1KgISAHIGEgIIAyABUABaF21lbWJyb3NGYWNjYW9UcmVzTG9jYWlzYhFtb2RhbF9hZGRfbWVtYnJvcw==',
            name: 'String',
            nullable: false,
          ),
          'membrosProcedimentos': debugSerializeParam(
            membrosProcedimentos,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QkgKHQoUbWVtYnJvc1Byb2NlZGltZW50b3MSBTZsOXRscicSAggUKiESHwoWRGF0YVR5cGVzUHJvY2VkaW1lbnRvcxIFYmhxdTZQAFoUbWVtYnJvc1Byb2NlZGltZW50b3NiEW1vZGFsX2FkZF9tZW1icm9z',
            name: 'DataTypesProcedimentos',
            nullable: false,
          ),
          'membrosProcessos': debugSerializeParam(
            membrosProcessos,
            ParamType.DataStruct,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QkAKGQoQbWVtYnJvc1Byb2Nlc3NvcxIFMHJyYXNyIxICCBQqHRIbChJEYXRhVHlwZXNQcm9jZXNzb3MSBTRwOXh2UABaEG1lbWJyb3NQcm9jZXNzb3NiEW1vZGFsX2FkZF9tZW1icm9z',
            name: 'DataTypesProcessos',
            nullable: false,
          ),
          'membrosPercetualValidacao': debugSerializeParam(
            membrosPercetualValidacao,
            ParamType.double,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            searchReference:
                'reference=QioKIgoZbWVtYnJvc1BlcmNldHVhbFZhbGlkYWNhbxIFMm0yZjByBAgCIAFQAFoZbWVtYnJvc1BlcmNldHVhbFZhbGlkYWNhb2IRbW9kYWxfYWRkX21lbWJyb3M=',
            name: 'double',
            nullable: false,
          )
        },
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtNomeCompletoText1': debugSerializeParam(
            txtNomeCompletoTextController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtAlcunhaAddText': debugSerializeParam(
            txtAlcunhaAddTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtNomeCompletoText2': debugSerializeParam(
            txtNomeCompletoTextController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwEstadoCivilValue': debugSerializeParam(
            ddwEstadoCivilValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtNoIdentidadeText': debugSerializeParam(
            txtNoIdentidadeTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwOrgaoExpedidorValue': debugSerializeParam(
            ddwOrgaoExpedidorValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtNoCpfText': debugSerializeParam(
            txtNoCpfTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtNoInfopenText': debugSerializeParam(
            txtNoInfopenTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtMaeNomeText': debugSerializeParam(
            txtMaeNomeTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwSituacaoMaeValue': debugSerializeParam(
            ddwSituacaoMaeValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtNomePaiText': debugSerializeParam(
            txtNomePaiTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwSituacaoPaiValue': debugSerializeParam(
            ddwSituacaoPaiValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwIntrucaoValue': debugSerializeParam(
            ddwIntrucaoValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtMembrosEnderecosAddText': debugSerializeParam(
            txtMembrosEnderecosAddTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'rbtnPerfilNaturalValue': debugSerializeParam(
            rbtnPerfilNaturalValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwEstadoValue': debugSerializeParam(
            ddwEstadoValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'ddwMunicipioValue': debugSerializeParam(
            ddwMunicipioValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtMembroHistoricoText': debugSerializeParam(
            txtMembroHistoricoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwMembroFaccaoValue': debugSerializeParam(
            ddwMembroFaccaoValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtFaccaoBastismoText': debugSerializeParam(
            txtFaccaoBastismoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtFacaoLocalBastismoText': debugSerializeParam(
            txtFacaoLocalBastismoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtMembrosFaccaoPadrinhoText': debugSerializeParam(
            txtMembrosFaccaoPadrinhoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtMembroFaccaoSenhaText': debugSerializeParam(
            txtMembroFaccaoSenhaTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwMembroFaccaoCargoAtualValue': debugSerializeParam(
            ddwMembroFaccaoCargoAtualValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'ddwMembroFaccaoCargoAnteriorValue': debugSerializeParam(
            ddwMembroFaccaoCargoAnteriorValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'ddwFaccaoFuncaoAtualValue': debugSerializeParam(
            ddwFaccaoFuncaoAtualValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'ddwFaccaoFuncaoAnteriorValue': debugSerializeParam(
            ddwFaccaoFuncaoAnteriorValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtFaccaoTresLocaisAddText': debugSerializeParam(
            txtFaccaoTresLocaisAddTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwFaccaoIntegrouValue': debugSerializeParam(
            ddwFaccaoIntegrouValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'ddwFaccaoAliadaValue': debugSerializeParam(
            ddwFaccaoAliadaValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'ddwFaccaoInimigaValue': debugSerializeParam(
            ddwFaccaoInimigaValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtProcedimentoNoText': debugSerializeParam(
            txtProcedimentoNoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcedimentoUnidadeValue': debugSerializeParam(
            ddwProcedimentoUnidadeValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcedimentoTipoValue': debugSerializeParam(
            ddwProcedimentoTipoValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcedimentoCrimeValue': debugSerializeParam(
            ddwProcedimentoCrimeValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtProcedimentoDataText': debugSerializeParam(
            txtProcedimentoDataTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'txtProcessoNoAcaoPenalText': debugSerializeParam(
            txtProcessoNoAcaoPenalTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcessoVaraValue': debugSerializeParam(
            ddwProcessoVaraValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcessoSituacaoJuridicaValue': debugSerializeParam(
            ddwProcessoSituacaoJuridicaValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcessoRegimeValue': debugSerializeParam(
            ddwProcessoRegimeValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'ddwProcessoSituacaoReuValue': debugSerializeParam(
            ddwProcessoSituacaoReuValue,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'int',
            nullable: true,
          ),
          'txtMembroAtuacaoText': debugSerializeParam(
            txtMembroAtuacaoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'switchAlertaValue': debugSerializeParam(
            switchAlertaValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'bool',
            nullable: true,
          ),
          'txtMembroAlertaText': debugSerializeParam(
            txtMembroAlertaTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'choiceChipsValues': debugSerializeParam(
            choiceChipsValues,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          ),
          'textFieldText': debugSerializeParam(
            textController21?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/mondaha-be2293?tab=uiBuilder&page=modal_add_membros',
            name: 'String',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/mondaha-be2293/tab=uiBuilder&page=modal_add_membros',
        searchReference:
            'reference=OhFtb2RhbF9hZGRfbWVtYnJvc1AAWhFtb2RhbF9hZGRfbWVtYnJvcw==',
        widgetClassName: 'modal_add_membros',
      );
}
