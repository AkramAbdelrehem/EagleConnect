import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_event_popup_widget.dart' show AddEventPopupWidget;
import 'package:flutter/material.dart';

class AddEventPopupModel extends FlutterFlowModel<AddEventPopupWidget> {
  ///  Local state fields for this component.

  DateTime? eventDate;

  List<String> eventPositions = [];
  void addToEventPositions(String item) => eventPositions.add(item);
  void removeFromEventPositions(String item) => eventPositions.remove(item);
  void removeAtIndexFromEventPositions(int index) =>
      eventPositions.removeAt(index);
  void insertAtIndexInEventPositions(int index, String item) =>
      eventPositions.insert(index, item);
  void updateEventPositionsAtIndex(int index, Function(String) updateFn) =>
      eventPositions[index] = updateFn(eventPositions[index]);

  bool imgUploaded = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for eventLocation widget.
  FocusNode? eventLocationFocusNode;
  TextEditingController? eventLocationTextController;
  String? Function(BuildContext, String?)? eventLocationTextControllerValidator;
  // State field(s) for EventDescription widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionTextController;
  String? Function(BuildContext, String?)?
      eventDescriptionTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    eventLocationFocusNode?.dispose();
    eventLocationTextController?.dispose();

    eventDescriptionFocusNode?.dispose();
    eventDescriptionTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
