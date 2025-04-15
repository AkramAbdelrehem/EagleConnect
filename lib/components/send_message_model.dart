import '/flutter_flow/flutter_flow_util.dart';
import 'send_message_widget.dart' show SendMessageWidget;
import 'package:flutter/material.dart';

class SendMessageModel extends FlutterFlowModel<SendMessageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Message widget.
  FocusNode? messageFocusNode;
  TextEditingController? messageTextController;
  String? Function(BuildContext, String?)? messageTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    messageFocusNode?.dispose();
    messageTextController?.dispose();
  }
}
