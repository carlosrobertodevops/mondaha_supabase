import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // State field(s) for txt_descricao widget.
  FocusNode? txtDescricaoFocusNode;
  TextEditingController? txtDescricaoTextController;
  String? Function(BuildContext, String?)? txtDescricaoTextControllerValidator;
  // State field(s) for ddw_agencia widget.
  int? ddwAgenciaValue;
  FormFieldController<int>? ddwAgenciaValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsuariosRow>? outputUpdateUsuarioAdmin;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeCompletoFocusNode?.dispose();
    txtNomeCompletoTextController?.dispose();

    txtDescricaoFocusNode?.dispose();
    txtDescricaoTextController?.dispose();
  }
}
