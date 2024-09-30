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
import 'create_membros_widget.dart' show CreateMembrosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreateMembrosModel extends FlutterFlowModel<CreateMembrosWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown-faccao widget.
  int? dropDownFaccaoValue;
  FormFieldController<int>? dropDownFaccaoValueController;
  // State field(s) for DropDown-funcao widget.
  int? dropDownFuncaoValue;
  FormFieldController<int>? dropDownFuncaoValueController;
  // State field(s) for DropDown-sexo widget.
  String? dropDownSexoValue;
  FormFieldController<String>? dropDownSexoValueController;
  // State field(s) for DropDown-tipo-sanguineo widget.
  String? dropDownTipoSanguineoValue;
  FormFieldController<String>? dropDownTipoSanguineoValueController;
  // State field(s) for nome-completo widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  // State field(s) for data-nascimento widget.
  FocusNode? dataNascimentoFocusNode;
  TextEditingController? dataNascimentoTextController;
  final dataNascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataNascimentoTextControllerValidator;
  // State field(s) for data-ultima-prissao widget.
  FocusNode? dataUltimaPrissaoFocusNode;
  TextEditingController? dataUltimaPrissaoTextController;
  final dataUltimaPrissaoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataUltimaPrissaoTextControllerValidator;
  // State field(s) for no-infopen-nacional widget.
  FocusNode? noInfopenNacionalFocusNode;
  TextEditingController? noInfopenNacionalTextController;
  String? Function(BuildContext, String?)?
      noInfopenNacionalTextControllerValidator;
  // State field(s) for DropDown-situacao-processual widget.
  String? dropDownSituacaoProcessualValue;
  FormFieldController<String>? dropDownSituacaoProcessualValueController;
  // State field(s) for DropDown-cor-pele-etnia widget.
  String? dropDownCorPeleEtniaValue;
  FormFieldController<String>? dropDownCorPeleEtniaValueController;
  // State field(s) for mae widget.
  FocusNode? maeFocusNode;
  TextEditingController? maeTextController;
  String? Function(BuildContext, String?)? maeTextControllerValidator;
  // State field(s) for DropDown-situacao-mae widget.
  String? dropDownSituacaoMaeValue;
  FormFieldController<String>? dropDownSituacaoMaeValueController;
  // State field(s) for pai widget.
  FocusNode? paiFocusNode;
  TextEditingController? paiTextController;
  String? Function(BuildContext, String?)? paiTextControllerValidator;
  // State field(s) for DropDown-situacao-pai widget.
  String? dropDownSituacaoPaiValue;
  FormFieldController<String>? dropDownSituacaoPaiValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for DropDown-estado widget.
  int? dropDownEstadoValue;
  FormFieldController<int>? dropDownEstadoValueController;
  // State field(s) for DropDown-municipio widget.
  int? dropDownMunicipioValue;
  FormFieldController<int>? dropDownMunicipioValueController;
  // State field(s) for distrito widget.
  FocusNode? distritoFocusNode;
  TextEditingController? distritoTextController;
  String? Function(BuildContext, String?)? distritoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    dataNascimentoFocusNode?.dispose();
    dataNascimentoTextController?.dispose();

    dataUltimaPrissaoFocusNode?.dispose();
    dataUltimaPrissaoTextController?.dispose();

    noInfopenNacionalFocusNode?.dispose();
    noInfopenNacionalTextController?.dispose();

    maeFocusNode?.dispose();
    maeTextController?.dispose();

    paiFocusNode?.dispose();
    paiTextController?.dispose();

    distritoFocusNode?.dispose();
    distritoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
