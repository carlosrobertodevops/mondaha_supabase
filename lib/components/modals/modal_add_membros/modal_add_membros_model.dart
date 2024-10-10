import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modal_add_membros_widget.dart' show ModalAddMembrosWidget;
import 'package:flutter/material.dart';

class ModalAddMembrosModel extends FlutterFlowModel<ModalAddMembrosWidget> {
  ///  Local state fields for this component.

  int? photoNumber;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for ddw_faccao widget.
  int? ddwFaccaoValue;
  FormFieldController<int>? ddwFaccaoValueController;
  // State field(s) for ddw_funcaio widget.
  int? ddwFuncaioValue1;
  FormFieldController<int>? ddwFuncaioValueController1;
  // State field(s) for ddw_cargo widget.
  int? ddwCargoValue;
  FormFieldController<int>? ddwCargoValueController;
  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode;
  TextEditingController? txtNomeCompletoTextController;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextControllerValidator;
  // State field(s) for txt_alcunha_add widget.
  FocusNode? txtAlcunhaAddFocusNode;
  TextEditingController? txtAlcunhaAddTextController;
  String? Function(BuildContext, String?)? txtAlcunhaAddTextControllerValidator;
  // State field(s) for ddw_localizacoes widget.
  int? ddwLocalizacoesValue;
  FormFieldController<int>? ddwLocalizacoesValueController;
  // State field(s) for txt_data_ultima_prisao widget.
  FocusNode? txtDataUltimaPrisaoFocusNode;
  TextEditingController? txtDataUltimaPrisaoTextController;
  String? Function(BuildContext, String?)?
      txtDataUltimaPrisaoTextControllerValidator;
  // State field(s) for txt_localizacao widget.
  FocusNode? txtLocalizacaoFocusNode;
  TextEditingController? txtLocalizacaoTextController;
  String? Function(BuildContext, String?)?
      txtLocalizacaoTextControllerValidator;
  // State field(s) for txt_no_infopen widget.
  FocusNode? txtNoInfopenFocusNode;
  TextEditingController? txtNoInfopenTextController;
  String? Function(BuildContext, String?)? txtNoInfopenTextControllerValidator;
  // State field(s) for ddw_funcaio widget.
  int? ddwFuncaioValue2;
  FormFieldController<int>? ddwFuncaioValueController2;
  // State field(s) for ddw_funcaio widget.
  int? ddwFuncaioValue3;
  FormFieldController<int>? ddwFuncaioValueController3;
  // State field(s) for ddw_funcaio widget.
  int? ddwFuncaioValue4;
  FormFieldController<int>? ddwFuncaioValueController4;
  // State field(s) for city widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  // State field(s) for ddw_funcaio widget.
  int? ddwFuncaioValue5;
  FormFieldController<int>? ddwFuncaioValueController5;
  // State field(s) for city widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for ddw_funcaio widget.
  int? ddwFuncaioValue6;
  FormFieldController<int>? ddwFuncaioValueController6;

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

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();
  }
}
