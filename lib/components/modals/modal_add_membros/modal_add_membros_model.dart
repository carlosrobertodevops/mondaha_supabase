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

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  // State field(s) for ddw_faccao widget.
  int? ddwFaccaoValue;
  FormFieldController<int>? ddwFaccaoValueController;
  // State field(s) for ddw_funcao widget.
  int? ddwFuncaoValue;
  FormFieldController<int>? ddwFuncaoValueController;
  // State field(s) for ddw_cargo widget.
  int? ddwCargoValue;
  FormFieldController<int>? ddwCargoValueController;
  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode;
  TextEditingController? txtNomeCompletoTextController;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextControllerValidator;
  // State field(s) for ddw_estado_civil widget.
  int? ddwEstadoCivilValue;
  FormFieldController<int>? ddwEstadoCivilValueController;
  // State field(s) for txt_alcunha_add widget.
  FocusNode? txtAlcunhaAddFocusNode;
  TextEditingController? txtAlcunhaAddTextController;
  String? Function(BuildContext, String?)? txtAlcunhaAddTextControllerValidator;
  // State field(s) for ddw_localizacoes widget.
  String? ddwLocalizacoesValue;
  FormFieldController<String>? ddwLocalizacoesValueController;
  // State field(s) for txt_data_ultima_prisao widget.
  FocusNode? txtDataUltimaPrisaoFocusNode;
  TextEditingController? txtDataUltimaPrisaoTextController;
  final txtDataUltimaPrisaoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      txtDataUltimaPrisaoTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for txt_localizacao widget.
  FocusNode? txtLocalizacaoFocusNode;
  TextEditingController? txtLocalizacaoTextController;
  final txtLocalizacaoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      txtLocalizacaoTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for txt_no_infopen widget.
  FocusNode? txtNoInfopenFocusNode;
  TextEditingController? txtNoInfopenTextController;
  String? Function(BuildContext, String?)? txtNoInfopenTextControllerValidator;
  // State field(s) for ddw_estado widget.
  String? ddwEstadoValue1;
  FormFieldController<String>? ddwEstadoValueController1;
  // State field(s) for ddw_municipio widget.
  String? ddwMunicipioValue1;
  FormFieldController<String>? ddwMunicipioValueController1;
  // State field(s) for ddw_distrito widget.
  String? ddwDistritoValue1;
  FormFieldController<String>? ddwDistritoValueController1;
  // State field(s) for txt_mae_nome widget.
  FocusNode? txtMaeNomeFocusNode;
  TextEditingController? txtMaeNomeTextController;
  String? Function(BuildContext, String?)? txtMaeNomeTextControllerValidator;
  // State field(s) for ddw_situacao_mae widget.
  String? ddwSituacaoMaeValue;
  FormFieldController<String>? ddwSituacaoMaeValueController;
  // State field(s) for txt_nome_pai widget.
  FocusNode? txtNomePaiFocusNode;
  TextEditingController? txtNomePaiTextController;
  String? Function(BuildContext, String?)? txtNomePaiTextControllerValidator;
  // State field(s) for ddw_situacao_pai widget.
  String? ddwSituacaoPaiValue;
  FormFieldController<String>? ddwSituacaoPaiValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for ddw_estado widget.
  String? ddwEstadoValue2;
  FormFieldController<String>? ddwEstadoValueController2;
  // State field(s) for ddw_municipio widget.
  String? ddwMunicipioValue2;
  FormFieldController<String>? ddwMunicipioValueController2;
  // State field(s) for ddw_distrito widget.
  String? ddwDistritoValue2;
  FormFieldController<String>? ddwDistritoValueController2;
  // State field(s) for txt_membro_historico widget.
  FocusNode? txtMembroHistoricoFocusNode;
  TextEditingController? txtMembroHistoricoTextController;
  String? Function(BuildContext, String?)?
      txtMembroHistoricoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    txtNomeCompletoFocusNode?.dispose();
    txtNomeCompletoTextController?.dispose();

    txtAlcunhaAddFocusNode?.dispose();
    txtAlcunhaAddTextController?.dispose();

    txtDataUltimaPrisaoFocusNode?.dispose();
    txtDataUltimaPrisaoTextController?.dispose();

    txtLocalizacaoFocusNode?.dispose();
    txtLocalizacaoTextController?.dispose();

    txtNoInfopenFocusNode?.dispose();
    txtNoInfopenTextController?.dispose();

    txtMaeNomeFocusNode?.dispose();
    txtMaeNomeTextController?.dispose();

    txtNomePaiFocusNode?.dispose();
    txtNomePaiTextController?.dispose();

    txtMembroHistoricoFocusNode?.dispose();
    txtMembroHistoricoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
