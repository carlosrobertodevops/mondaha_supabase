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

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
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
  int? ddwEstadoCivilValue;
  FormFieldController<int>? ddwEstadoCivilValueController;
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
  // State field(s) for txt_mae_nome widget.
  FocusNode? txtMaeNomeFocusNode;
  TextEditingController? txtMaeNomeTextController;
  String? Function(BuildContext, String?)? txtMaeNomeTextControllerValidator;
  // State field(s) for ddw_situacao_mae widget.
  int? ddwSituacaoMaeValue;
  FormFieldController<int>? ddwSituacaoMaeValueController;
  // State field(s) for txt_nome_pai widget.
  FocusNode? txtNomePaiFocusNode;
  TextEditingController? txtNomePaiTextController;
  String? Function(BuildContext, String?)? txtNomePaiTextControllerValidator;
  // State field(s) for ddw_situacao_pai widget.
  int? ddwSituacaoPaiValue;
  FormFieldController<int>? ddwSituacaoPaiValueController;
  // State field(s) for ddw_intrucao widget.
  int? ddwIntrucaoValue;
  FormFieldController<int>? ddwIntrucaoValueController;
  // State field(s) for txt_membros_enderecos_add widget.
  FocusNode? txtMembrosEnderecosAddFocusNode;
  TextEditingController? txtMembrosEnderecosAddTextController;
  String? Function(BuildContext, String?)?
      txtMembrosEnderecosAddTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for ddw_estado widget.
  int? ddwEstadoValue;
  FormFieldController<int>? ddwEstadoValueController;
  // State field(s) for ddw_municipio widget.
  int? ddwMunicipioValue;
  FormFieldController<int>? ddwMunicipioValueController;
  // State field(s) for txt_membro_historico widget.
  FocusNode? txtMembroHistoricoFocusNode;
  TextEditingController? txtMembroHistoricoTextController;
  String? Function(BuildContext, String?)?
      txtMembroHistoricoTextControllerValidator;
  // State field(s) for ddw_faccao widget.
  int? ddwFaccaoValue1;
  FormFieldController<int>? ddwFaccaoValueController1;
  // State field(s) for txt_bastismo widget.
  FocusNode? txtBastismoFocusNode;
  TextEditingController? txtBastismoTextController;
  String? Function(BuildContext, String?)? txtBastismoTextControllerValidator;
  // State field(s) for txt_local_bastismo widget.
  FocusNode? txtLocalBastismoFocusNode;
  TextEditingController? txtLocalBastismoTextController;
  String? Function(BuildContext, String?)?
      txtLocalBastismoTextControllerValidator;
  // State field(s) for txt_membros_padrinho widget.
  FocusNode? txtMembrosPadrinhoFocusNode;
  TextEditingController? txtMembrosPadrinhoTextController;
  String? Function(BuildContext, String?)?
      txtMembrosPadrinhoTextControllerValidator;
  // State field(s) for txt_membro_senha widget.
  FocusNode? txtMembroSenhaFocusNode;
  TextEditingController? txtMembroSenhaTextController;
  String? Function(BuildContext, String?)?
      txtMembroSenhaTextControllerValidator;
  // State field(s) for ddw_cargo_atual widget.
  int? ddwCargoAtualValue;
  FormFieldController<int>? ddwCargoAtualValueController;
  // State field(s) for ddw_cargo_anterior widget.
  int? ddwCargoAnteriorValue;
  FormFieldController<int>? ddwCargoAnteriorValueController;
  // State field(s) for ddw_funcao_atual widget.
  int? ddwFuncaoAtualValue;
  FormFieldController<int>? ddwFuncaoAtualValueController;
  // State field(s) for ddw_funcao_anterior widget.
  int? ddwFuncaoAnteriorValue;
  FormFieldController<int>? ddwFuncaoAnteriorValueController;
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
  // State field(s) for ddw_faccao widget.
  String? ddwFaccaoValue2;
  FormFieldController<String>? ddwFaccaoValueController2;
  // State field(s) for ddw_faccao widget.
  String? ddwFaccaoValue3;
  FormFieldController<String>? ddwFaccaoValueController3;
  // State field(s) for ddw_faccao widget.
  String? ddwFaccaoValue4;
  FormFieldController<String>? ddwFaccaoValueController4;
  // State field(s) for txt_procedimento_data widget.
  FocusNode? txtProcedimentoDataFocusNode;
  TextEditingController? txtProcedimentoDataTextController;
  final txtProcedimentoDataMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      txtProcedimentoDataTextControllerValidator;
  // State field(s) for txt_membro_atuacao widget.
  FocusNode? txtMembroAtuacaoFocusNode;
  TextEditingController? txtMembroAtuacaoTextController;
  String? Function(BuildContext, String?)?
      txtMembroAtuacaoTextControllerValidator;
  // State field(s) for SwitchAlerta widget.
  bool? switchAlertaValue;
  // State field(s) for txt_membro_alerta widget.
  FocusNode? txtMembroAlertaFocusNode;
  TextEditingController? txtMembroAlertaTextController;
  String? Function(BuildContext, String?)?
      txtMembroAlertaTextControllerValidator;

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
    txtMembroHistoricoTextController?.dispose();

    txtBastismoFocusNode?.dispose();
    txtBastismoTextController?.dispose();

    txtLocalBastismoFocusNode?.dispose();
    txtLocalBastismoTextController?.dispose();

    txtMembrosPadrinhoFocusNode?.dispose();
    txtMembrosPadrinhoTextController?.dispose();

    txtMembroSenhaFocusNode?.dispose();
    txtMembroSenhaTextController?.dispose();

    txtProcedimentoNoFocusNode?.dispose();
    txtProcedimentoNoTextController?.dispose();

    txtProcedimentoDataFocusNode?.dispose();
    txtProcedimentoDataTextController?.dispose();

    txtMembroAtuacaoFocusNode?.dispose();
    txtMembroAtuacaoTextController?.dispose();

    txtMembroAlertaFocusNode?.dispose();
    txtMembroAlertaTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
