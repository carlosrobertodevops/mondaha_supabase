import '/flutter_flow/flutter_flow_util.dart';
import 'modal_faccao_edit_widget.dart' show ModalFaccaoEditWidget;
import 'package:flutter/material.dart';

class ModalFaccaoEditModel extends FlutterFlowModel<ModalFaccaoEditWidget> {
  ///  Local state fields for this component.

  bool? uploadImagemTemp = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txt_nome_faccao widget.
  FocusNode? txtNomeFaccaoFocusNode;
  TextEditingController? txtNomeFaccaoTextController;
  String? Function(BuildContext, String?)? txtNomeFaccaoTextControllerValidator;
  String? _txtNomeFaccaoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yg28k56i' /* Please enter a project name... */,
      );
    }

    return null;
  }

  // State field(s) for txt_description widget.
  FocusNode? txtDescriptionFocusNode;
  TextEditingController? txtDescriptionTextController;
  String? Function(BuildContext, String?)?
      txtDescriptionTextControllerValidator;
  String? _txtDescriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fwvtuuff' /* Please enter a short descripti... */,
      );
    }

    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    txtNomeFaccaoTextControllerValidator =
        _txtNomeFaccaoTextControllerValidator;
    txtDescriptionTextControllerValidator =
        _txtDescriptionTextControllerValidator;
  }

  @override
  void dispose() {
    txtNomeFaccaoFocusNode?.dispose();
    txtNomeFaccaoTextController?.dispose();

    txtDescriptionFocusNode?.dispose();
    txtDescriptionTextController?.dispose();
  }
}
