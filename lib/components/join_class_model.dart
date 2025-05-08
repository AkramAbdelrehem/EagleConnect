import '/flutter_flow/flutter_flow_util.dart';
import 'join_class_widget.dart' show JoinClassWidget;
import 'package:flutter/material.dart';

class JoinClassModel extends FlutterFlowModel<JoinClassWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - joinClassByCode] action in Button widget.
  bool? joinedClass;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
