import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_profile_edit_widget.dart' show ModalProfileEditWidget;
import 'package:flutter/material.dart';

class ModalProfileEditModel extends FlutterFlowModel<ModalProfileEditWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txt_nome_completo widget.
  FocusNode? txtNomeCompletoFocusNode;
  TextEditingController? txtNomeCompletoTextController;
  String? Function(BuildContext, String?)?
      txtNomeCompletoTextControllerValidator;
  // State field(s) for txt_descricap widget.
  FocusNode? txtDescricapFocusNode;
  TextEditingController? txtDescricapTextController;
  String? Function(BuildContext, String?)? txtDescricapTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? outputUpdateUsuario;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeCompletoFocusNode?.dispose();
    txtNomeCompletoTextController?.dispose();

    txtDescricapFocusNode?.dispose();
    txtDescricapTextController?.dispose();
  }
}
