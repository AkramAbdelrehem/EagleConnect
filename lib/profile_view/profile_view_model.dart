import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_view_widget.dart' show ProfileViewWidget;
import 'package:flutter/material.dart';

class ProfileViewModel extends FlutterFlowModel<ProfileViewWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
