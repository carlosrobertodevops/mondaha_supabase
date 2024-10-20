import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_add_membros_widget.dart' show ModalAddMembrosWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModalAddMembrosModel extends FlutterFlowModel<ModalAddMembrosWidget> {
  ///  Local state fields for this component.

  List<String> membrosPhotos = [];
  void addToMembrosPhotos(String item) => membrosPhotos.add(item);
  void removeFromMembrosPhotos(String item) => membrosPhotos.remove(item);
  void removeAtIndexFromMembrosPhotos(int index) =>
      membrosPhotos.removeAt(index);
  void insertAtIndexInMembrosPhotos(int index, String item) =>
      membrosPhotos.insert(index, item);
  void updateMembrosPhotosAtIndex(int index, Function(String) updateFn) =>
      membrosPhotos[index] = updateFn(membrosPhotos[index]);

  List<String> membrosAlcunhas = [];
  void addToMembrosAlcunhas(String item) => membrosAlcunhas.add(item);
  void removeFromMembrosAlcunhas(String item) => membrosAlcunhas.remove(item);
  void removeAtIndexFromMembrosAlcunhas(int index) =>
      membrosAlcunhas.removeAt(index);
  void insertAtIndexInMembrosAlcunhas(int index, String item) =>
      membrosAlcunhas.insert(index, item);
  void updateMembrosAlcunhasAtIndex(int index, Function(String) updateFn) =>
      membrosAlcunhas[index] = updateFn(membrosAlcunhas[index]);

  List<String> membrosEnderecos = [];
  void addToMembrosEnderecos(String item) => membrosEnderecos.add(item);
  void removeFromMembrosEnderecos(String item) => membrosEnderecos.remove(item);
  void removeAtIndexFromMembrosEnderecos(int index) =>
      membrosEnderecos.removeAt(index);
  void insertAtIndexInMembrosEnderecos(int index, String item) =>
      membrosEnderecos.insert(index, item);
  void updateMembrosEnderecosAtIndex(int index, Function(String) updateFn) =>
      membrosEnderecos[index] = updateFn(membrosEnderecos[index]);

  bool membroAlerta = false;

  String? membrosLimpar;

  List<String> membrosGrupos = [];
  void addToMembrosGrupos(String item) => membrosGrupos.add(item);
  void removeFromMembrosGrupos(String item) => membrosGrupos.remove(item);
  void removeAtIndexFromMembrosGrupos(int index) =>
      membrosGrupos.removeAt(index);
  void insertAtIndexInMembrosGrupos(int index, String item) =>
      membrosGrupos.insert(index, item);
  void updateMembrosGruposAtIndex(int index, Function(String) updateFn) =>
      membrosGrupos[index] = updateFn(membrosGrupos[index]);

  List<String> membrosRelacoes = [];
  void addToMembrosRelacoes(String item) => membrosRelacoes.add(item);
  void removeFromMembrosRelacoes(String item) => membrosRelacoes.remove(item);
  void removeAtIndexFromMembrosRelacoes(int index) =>
      membrosRelacoes.removeAt(index);
  void insertAtIndexInMembrosRelacoes(int index, String item) =>
      membrosRelacoes.insert(index, item);
  void updateMembrosRelacoesAtIndex(int index, Function(String) updateFn) =>
      membrosRelacoes[index] = updateFn(membrosRelacoes[index]);

  List<String> membrosFaccaoTresLocais = [];
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

  List<DataTypesProcedimentosStruct> membrosProcedimentos = [];
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

  List<DataTypesProcessosStruct> membrosProcessos = [];
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

  double membrosPercetualValidacao = 0.0;

  int? membrosProcedimentosCount = -1;

  int? membrosProcessosCount = -1;

  ///  State fields for stateful widgets in this component.

  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];

  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode;
  TextEditingController? txtNomeCompletoTextController;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextControllerValidator;
  // State field(s) for txt_alcunha_add widget.
  FocusNode? txtAlcunhaAddFocusNode;
  TextEditingController? txtAlcunhaAddTextController;
  String? Function(BuildContext, String?)? txtAlcunhaAddTextControllerValidator;
  // State field(s) for txt_membro_naturalidade widget.
  FocusNode? txtMembroNaturalidadeFocusNode;
  TextEditingController? txtMembroNaturalidadeTextController;
  String? Function(BuildContext, String?)?
      txtMembroNaturalidadeTextControllerValidator;
  // State field(s) for ddw_estado_civil widget.
  String? ddwEstadoCivilValue;
  FormFieldController<String>? ddwEstadoCivilValueController;
  // State field(s) for txt_no_identidade widget.
  FocusNode? txtNoIdentidadeFocusNode;
  TextEditingController? txtNoIdentidadeTextController;
  String? Function(BuildContext, String?)?
      txtNoIdentidadeTextControllerValidator;
  // State field(s) for ddw_orgao_expedidor widget.
  int? ddwOrgaoExpedidorValue;
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
  // State field(s) for txt_filiacao_mae widget.
  FocusNode? txtFiliacaoMaeFocusNode;
  TextEditingController? txtFiliacaoMaeTextController;
  String? Function(BuildContext, String?)?
      txtFiliacaoMaeTextControllerValidator;
  // State field(s) for ddw_situacao_mae widget.
  String? ddwSituacaoMaeValue;
  FormFieldController<String>? ddwSituacaoMaeValueController;
  // State field(s) for txt_filiacao_pai widget.
  FocusNode? txtFiliacaoPaiFocusNode;
  TextEditingController? txtFiliacaoPaiTextController;
  String? Function(BuildContext, String?)?
      txtFiliacaoPaiTextControllerValidator;
  // State field(s) for ddw_situacao_pai widget.
  String? ddwSituacaoPaiValue;
  FormFieldController<String>? ddwSituacaoPaiValueController;
  // State field(s) for ddw_nivel_instrucao widget.
  String? ddwNivelInstrucaoValue;
  FormFieldController<String>? ddwNivelInstrucaoValueController;
  // State field(s) for txt_membros_enderecos_add widget.
  final txtMembrosEnderecosAddKey = GlobalKey();
  FocusNode? txtMembrosEnderecosAddFocusNode;
  TextEditingController? txtMembrosEnderecosAddTextController;
  String? txtMembrosEnderecosAddSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembrosEnderecosAddTextControllerValidator;
  // State field(s) for rbNacionalidade widget.
  FormFieldController<String>? rbNacionalidadeValueController;
  // State field(s) for ddw_estado widget.
  int? ddwEstadoValue;
  FormFieldController<int>? ddwEstadoValueController;
  // State field(s) for ddw_municipio widget.
  int? ddwMunicipioValue;
  FormFieldController<int>? ddwMunicipioValueController;
  // State field(s) for txt_membro_historico widget.
  final txtMembroHistoricoKey = GlobalKey();
  FocusNode? txtMembroHistoricoFocusNode;
  TextEditingController? txtMembroHistoricoTextController;
  String? txtMembroHistoricoSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembroHistoricoTextControllerValidator;
  // State field(s) for ddw_membro_faccao widget.
  int? ddwMembroFaccaoValue;
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
  int? ddwMembroFaccaoCargoAtualValue;
  FormFieldController<int>? ddwMembroFaccaoCargoAtualValueController;
  // State field(s) for ddw_membro_faccao_cargo_anterior widget.
  int? ddwMembroFaccaoCargoAnteriorValue;
  FormFieldController<int>? ddwMembroFaccaoCargoAnteriorValueController;
  // State field(s) for ddw_faccao_funcao_atual widget.
  int? ddwFaccaoFuncaoAtualValue;
  FormFieldController<int>? ddwFaccaoFuncaoAtualValueController;
  // State field(s) for ddw_faccao_funcao_anterior widget.
  int? ddwFaccaoFuncaoAnteriorValue;
  FormFieldController<int>? ddwFaccaoFuncaoAnteriorValueController;
  // State field(s) for txt_faccao_tres_locais_add widget.
  FocusNode? txtFaccaoTresLocaisAddFocusNode;
  TextEditingController? txtFaccaoTresLocaisAddTextController;
  String? Function(BuildContext, String?)?
      txtFaccaoTresLocaisAddTextControllerValidator;
  // State field(s) for ddw_faccao_integrou widget.
  int? ddwFaccaoIntegrouValue;
  FormFieldController<int>? ddwFaccaoIntegrouValueController;
  // State field(s) for ddw_faccao_aliada widget.
  int? ddwFaccaoAliadaValue;
  FormFieldController<int>? ddwFaccaoAliadaValueController;
  // State field(s) for ddw_faccao_inimiga widget.
  int? ddwFaccaoInimigaValue;
  FormFieldController<int>? ddwFaccaoInimigaValueController;
  // State field(s) for txt_procedimento_no widget.
  FocusNode? txtProcedimentoNoFocusNode;
  TextEditingController? txtProcedimentoNoTextController;
  String? Function(BuildContext, String?)?
      txtProcedimentoNoTextControllerValidator;
  // State field(s) for ddw_procedimento_unidade widget.
  String? ddwProcedimentoUnidadeValue;
  FormFieldController<String>? ddwProcedimentoUnidadeValueController;
  // State field(s) for ddw_procedimento_tipo widget.
  String? ddwProcedimentoTipoValue;
  FormFieldController<String>? ddwProcedimentoTipoValueController;
  // State field(s) for ddw_procedimento_crime widget.
  String? ddwProcedimentoCrimeValue;
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
  String? ddwProcessoVaraValue;
  FormFieldController<String>? ddwProcessoVaraValueController;
  // State field(s) for ddw_processo_situacao_juridica widget.
  String? ddwProcessoSituacaoJuridicaValue;
  FormFieldController<String>? ddwProcessoSituacaoJuridicaValueController;
  // State field(s) for ddw_processo_regime widget.
  String? ddwProcessoRegimeValue;
  FormFieldController<String>? ddwProcessoRegimeValueController;
  // State field(s) for ddw_processo_situacao_reu widget.
  String? ddwProcessoSituacaoReuValue;
  FormFieldController<String>? ddwProcessoSituacaoReuValueController;
  // State field(s) for txt_membro_atuacao widget.
  final txtMembroAtuacaoKey = GlobalKey();
  FocusNode? txtMembroAtuacaoFocusNode;
  TextEditingController? txtMembroAtuacaoTextController;
  String? txtMembroAtuacaoSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembroAtuacaoTextControllerValidator;
  // State field(s) for SwitchAlerta widget.
  bool? switchAlertaValue;
  // State field(s) for txt_membro_alerta widget.
  final txtMembroAlertaKey = GlobalKey();
  FocusNode? txtMembroAlertaFocusNode;
  TextEditingController? txtMembroAlertaTextController;
  String? txtMembroAlertaSelectedOption;
  String? Function(BuildContext, String?)?
      txtMembroAlertaTextControllerValidator;
  // State field(s) for ChoiceChipsValidacoes widget.
  FormFieldController<List<String>>? choiceChipsValidacoesValueController;
  List<String>? get choiceChipsValidacoesValues =>
      choiceChipsValidacoesValueController?.value;
  set choiceChipsValidacoesValues(List<String>? val) =>
      choiceChipsValidacoesValueController?.value = val;
  // State field(s) for txt_validacoes_observacoes widget.
  final txtValidacoesObservacoesKey = GlobalKey();
  FocusNode? txtValidacoesObservacoesFocusNode;
  TextEditingController? txtValidacoesObservacoesTextController;
  String? txtValidacoesObservacoesSelectedOption;
  String? Function(BuildContext, String?)?
      txtValidacoesObservacoesTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  MembrosRow? retMembrosAdd;
  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

  // Stores action output result for [Backend Call - API (ProcedimentosADD)] action in Button widget.
  ApiCallResponse? apiResultProcedimentos;
  // Stores action output result for [Backend Call - API (ProcessosADD)] action in Button widget.
  ApiCallResponse? apiResultProcessos;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNomeCompletoFocusNode?.dispose();
    txtNomeCompletoTextController?.dispose();

    txtAlcunhaAddFocusNode?.dispose();
    txtAlcunhaAddTextController?.dispose();

    txtMembroNaturalidadeFocusNode?.dispose();
    txtMembroNaturalidadeTextController?.dispose();

    txtNoIdentidadeFocusNode?.dispose();
    txtNoIdentidadeTextController?.dispose();

    txtNoCpfFocusNode?.dispose();
    txtNoCpfTextController?.dispose();

    txtNoInfopenFocusNode?.dispose();
    txtNoInfopenTextController?.dispose();

    txtFiliacaoMaeFocusNode?.dispose();
    txtFiliacaoMaeTextController?.dispose();

    txtFiliacaoPaiFocusNode?.dispose();
    txtFiliacaoPaiTextController?.dispose();

    txtMembrosEnderecosAddFocusNode?.dispose();

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

    txtValidacoesObservacoesFocusNode?.dispose();
  }

  /// Additional helper methods.
  String? get rbNacionalidadeValue => rbNacionalidadeValueController?.value;
}
