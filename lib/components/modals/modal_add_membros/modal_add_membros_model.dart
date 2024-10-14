import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_add_membros_widget.dart' show ModalAddMembrosWidget;
import 'package:flutter/material.dart';

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

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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
  int? ddwEstadoCivilValue1;
  FormFieldController<int>? ddwEstadoCivilValueController1;
  // State field(s) for txt_no_identidade widget.
  FocusNode? txtNoIdentidadeFocusNode;
  TextEditingController? txtNoIdentidadeTextController;
  String? Function(BuildContext, String?)?
      txtNoIdentidadeTextControllerValidator;
  // State field(s) for txt_no_cpf widget.
  FocusNode? txtNoCpfFocusNode;
  TextEditingController? txtNoCpfTextController;
  String? Function(BuildContext, String?)? txtNoCpfTextControllerValidator;
  // State field(s) for txt_no_infopen widget.
  FocusNode? txtNoInfopenFocusNode1;
  TextEditingController? txtNoInfopenTextController1;
  String? Function(BuildContext, String?)? txtNoInfopenTextController1Validator;
  // State field(s) for txt_mae_nome widget.
  FocusNode? txtMaeNomeFocusNode1;
  TextEditingController? txtMaeNomeTextController1;
  String? Function(BuildContext, String?)? txtMaeNomeTextController1Validator;
  // State field(s) for ddw_situacao_mae widget.
  int? ddwSituacaoMaeValue1;
  FormFieldController<int>? ddwSituacaoMaeValueController1;
  // State field(s) for txt_nome_pai widget.
  FocusNode? txtNomePaiFocusNode1;
  TextEditingController? txtNomePaiTextController1;
  String? Function(BuildContext, String?)? txtNomePaiTextController1Validator;
  // State field(s) for ddw_situacao_pai widget.
  int? ddwSituacaoPaiValue1;
  FormFieldController<int>? ddwSituacaoPaiValueController1;
  // State field(s) for ddw_intrucao widget.
  int? ddwIntrucaoValue;
  FormFieldController<int>? ddwIntrucaoValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for ddw_estado widget.
  int? ddwEstadoValue;
  FormFieldController<int>? ddwEstadoValueController;
  // State field(s) for ddw_municipio widget.
  int? ddwMunicipioValue;
  FormFieldController<int>? ddwMunicipioValueController;
  // State field(s) for ddw_distrito widget.
  String? ddwDistritoValue;
  FormFieldController<String>? ddwDistritoValueController;
  // State field(s) for txt_membro_historico widget.
  FocusNode? txtMembroHistoricoFocusNode;
  TextEditingController? txtMembroHistoricoTextController;
  String? Function(BuildContext, String?)?
      txtMembroHistoricoTextControllerValidator;
  // State field(s) for ddw_faccao widget.
  int? ddwFaccaoValue;
  FormFieldController<int>? ddwFaccaoValueController;
  // State field(s) for ddw_funcao widget.
  int? ddwFuncaoValue;
  FormFieldController<int>? ddwFuncaoValueController;
  // State field(s) for ddw_cargo widget.
  int? ddwCargoValue;
  FormFieldController<int>? ddwCargoValueController;
  // State field(s) for txt_bastismo widget.
  FocusNode? txtBastismoFocusNode;
  TextEditingController? txtBastismoTextController;
  String? Function(BuildContext, String?)? txtBastismoTextControllerValidator;
  // State field(s) for ddw_estado_civil widget.
  int? ddwEstadoCivilValue2;
  FormFieldController<int>? ddwEstadoCivilValueController2;
  // State field(s) for txt_local_batismo widget.
  FocusNode? txtLocalBatismoFocusNode;
  TextEditingController? txtLocalBatismoTextController;
  String? Function(BuildContext, String?)?
      txtLocalBatismoTextControllerValidator;
  // State field(s) for ddw_estado_civil widget.
  int? ddwEstadoCivilValue3;
  FormFieldController<int>? ddwEstadoCivilValueController3;
  // State field(s) for txt_no_infopen widget.
  FocusNode? txtNoInfopenFocusNode2;
  TextEditingController? txtNoInfopenTextController2;
  String? Function(BuildContext, String?)? txtNoInfopenTextController2Validator;
  // State field(s) for ddw_situacao_processual widget.
  String? ddwSituacaoProcessualValue;
  FormFieldController<String>? ddwSituacaoProcessualValueController;
  // State field(s) for ddw_cor_pele widget.
  String? ddwCorPeleValue;
  FormFieldController<String>? ddwCorPeleValueController;
  // State field(s) for ddw_tipo_sanguineo widget.
  String? ddwTipoSanguineoValue;
  FormFieldController<String>? ddwTipoSanguineoValueController;
  // State field(s) for txt_mae_nome widget.
  FocusNode? txtMaeNomeFocusNode2;
  TextEditingController? txtMaeNomeTextController2;
  String? Function(BuildContext, String?)? txtMaeNomeTextController2Validator;
  // State field(s) for ddw_situacao_mae widget.
  String? ddwSituacaoMaeValue2;
  FormFieldController<String>? ddwSituacaoMaeValueController2;
  // State field(s) for txt_nome_pai widget.
  FocusNode? txtNomePaiFocusNode2;
  TextEditingController? txtNomePaiTextController2;
  String? Function(BuildContext, String?)? txtNomePaiTextController2Validator;
  // State field(s) for ddw_situacao_pai widget.
  String? ddwSituacaoPaiValue2;
  FormFieldController<String>? ddwSituacaoPaiValueController2;

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

    txtNoInfopenFocusNode1?.dispose();
    txtNoInfopenTextController1?.dispose();

    txtMaeNomeFocusNode1?.dispose();
    txtMaeNomeTextController1?.dispose();

    txtNomePaiFocusNode1?.dispose();
    txtNomePaiTextController1?.dispose();

    txtMembroHistoricoFocusNode?.dispose();
    txtMembroHistoricoTextController?.dispose();

    txtBastismoFocusNode?.dispose();
    txtBastismoTextController?.dispose();

    txtLocalBatismoFocusNode?.dispose();
    txtLocalBatismoTextController?.dispose();

    txtNoInfopenFocusNode2?.dispose();
    txtNoInfopenTextController2?.dispose();

    txtMaeNomeFocusNode2?.dispose();
    txtMaeNomeTextController2?.dispose();

    txtNomePaiFocusNode2?.dispose();
    txtNomePaiTextController2?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
