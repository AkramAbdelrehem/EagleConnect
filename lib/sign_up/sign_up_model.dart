import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  Local state fields for this page.

  DocumentReference? selectedSchool;

  String? schoolName;

  DateTime? birthday;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for nameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  // State field(s) for lastNameField widget.
  FocusNode? lastNameFieldFocusNode;
  TextEditingController? lastNameFieldTextController;
  String? Function(BuildContext, String?)? lastNameFieldTextControllerValidator;
  // State field(s) for genderDropdown widget.
  String? genderDropdownValue;
  FormFieldController<String>? genderDropdownValueController;
  // State field(s) for positionDropdown widget.
  String? positionDropdownValue;
  FormFieldController<String>? positionDropdownValueController;
  // State field(s) for phoneNumberField widget.
  FocusNode? phoneNumberFieldFocusNode;
  TextEditingController? phoneNumberFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumberFieldTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for passwordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // State field(s) for confirmPasswordField widget.
  FocusNode? confirmPasswordFieldFocusNode;
  TextEditingController? confirmPasswordFieldTextController;
  late bool confirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordFieldTextControllerValidator;
  // State field(s) for SchoolSearch widget.
  FocusNode? schoolSearchFocusNode;
  TextEditingController? schoolSearchTextController;
  String? Function(BuildContext, String?)? schoolSearchTextControllerValidator;
  // State field(s) for schoolNameField widget.
  FocusNode? schoolNameFieldFocusNode;
  TextEditingController? schoolNameFieldTextController;
  String? Function(BuildContext, String?)?
      schoolNameFieldTextControllerValidator;
  // State field(s) for schoolLocationField widget.
  FocusNode? schoolLocationFieldFocusNode;
  TextEditingController? schoolLocationFieldTextController;
  String? Function(BuildContext, String?)?
      schoolLocationFieldTextControllerValidator;
  // State field(s) for schoolTypeDropdown widget.
  String? schoolTypeDropdownValue;
  FormFieldController<String>? schoolTypeDropdownValueController;
  // State field(s) for schoolWebsiteField widget.
  FocusNode? schoolWebsiteFieldFocusNode;
  TextEditingController? schoolWebsiteFieldTextController;
  String? Function(BuildContext, String?)?
      schoolWebsiteFieldTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Grade widget.
  String? gradeValue;
  FormFieldController<String>? gradeValueController;
  // State field(s) for SchoolCode widget.
  FocusNode? schoolCodeFocusNode;
  TextEditingController? schoolCodeTextController;
  String? Function(BuildContext, String?)? schoolCodeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    confirmPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    lastNameFieldFocusNode?.dispose();
    lastNameFieldTextController?.dispose();

    phoneNumberFieldFocusNode?.dispose();
    phoneNumberFieldTextController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();

    confirmPasswordFieldFocusNode?.dispose();
    confirmPasswordFieldTextController?.dispose();

    schoolSearchFocusNode?.dispose();
    schoolSearchTextController?.dispose();

    schoolNameFieldFocusNode?.dispose();
    schoolNameFieldTextController?.dispose();

    schoolLocationFieldFocusNode?.dispose();
    schoolLocationFieldTextController?.dispose();

    schoolWebsiteFieldFocusNode?.dispose();
    schoolWebsiteFieldTextController?.dispose();

    schoolCodeFocusNode?.dispose();
    schoolCodeTextController?.dispose();
  }
}
