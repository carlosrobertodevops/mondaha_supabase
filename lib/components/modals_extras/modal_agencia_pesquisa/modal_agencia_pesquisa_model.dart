import '/flutter_flow/flutter_flow_util.dart';
import 'modal_agencia_pesquisa_widget.dart' show ModalAgenciaPesquisaWidget;
import 'package:flutter/material.dart';

class ModalAgenciaPesquisaModel
    extends FlutterFlowModel<ModalAgenciaPesquisaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txt_pesquisa widget.
  final txtPesquisaKey = GlobalKey();
  FocusNode? txtPesquisaFocusNode;
  TextEditingController? txtPesquisaTextController;
  String? txtPesquisaSelectedOption;
  String? Function(BuildContext, String?)? txtPesquisaTextControllerValidator;
  List<String> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtPesquisaFocusNode?.dispose();
  }
}
