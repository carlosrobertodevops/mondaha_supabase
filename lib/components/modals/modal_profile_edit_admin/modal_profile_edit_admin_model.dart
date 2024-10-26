import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_profile_edit_admin_widget.dart' show ModalProfileEditAdminWidget;
import 'package:flutter/material.dart';

class ModalProfileEditAdminModel
    extends FlutterFlowModel<ModalProfileEditAdminWidget> {
  ///  Local state fields for this component.

  bool uploadimagemTemp = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
  List<UsuariosRow>? outputUsuarioUpdate;

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
