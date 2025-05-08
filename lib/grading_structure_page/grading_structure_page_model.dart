import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'grading_structure_page_widget.dart' show GradingStructurePageWidget;
import 'package:flutter/material.dart';

class GradingStructurePageModel
    extends FlutterFlowModel<GradingStructurePageWidget> {
  ///  Local state fields for this page.

  int? page = 0;

  double totalPercent = 0.0;

  bool hasCategory = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getTotalWeight] action in gradingStructurePage widget.
  double? totalPercentage;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Custom Action - getTotalWeight] action in IconButton widget.
  double? deletePercentage;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Custom Action - getTotalWeight] action in Button widget.
  double? tempPercentage;
  // Stores action output result for [Custom Action - getTotalWeight] action in Button widget.
  double? newPercentage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
