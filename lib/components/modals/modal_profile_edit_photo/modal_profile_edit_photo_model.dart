import '/flutter_flow/flutter_flow_util.dart';
import 'modal_profile_edit_photo_widget.dart' show ModalProfileEditPhotoWidget;
import 'package:flutter/material.dart';

class ModalProfileEditPhotoModel
    extends FlutterFlowModel<ModalProfileEditPhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
