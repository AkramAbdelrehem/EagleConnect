import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_post_widget.dart' show AddPostWidget;
import 'package:flutter/material.dart';

class AddPostModel extends FlutterFlowModel<AddPostWidget> {
  ///  Local state fields for this component.

  bool img = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PostInfo widget.
  FocusNode? postInfoFocusNode;
  TextEditingController? postInfoTextController;
  String? Function(BuildContext, String?)? postInfoTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for post_to widget.
  String? postToValue;
  FormFieldController<String>? postToValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postInfoFocusNode?.dispose();
    postInfoTextController?.dispose();
  }
}
