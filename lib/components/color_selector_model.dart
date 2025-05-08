import '/flutter_flow/flutter_flow_util.dart';
import 'color_selector_widget.dart' show ColorSelectorWidget;
import 'package:flutter/material.dart';

class ColorSelectorModel extends FlutterFlowModel<ColorSelectorWidget> {
  ///  Local state fields for this component.

  Color classColor = Color(4294901760);

  int selectedColoe = 1;

  Color customColor = Color(4294901760);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
