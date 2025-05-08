import '/backend/backend.dart';
import '/components/calendar_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  Local state fields for this page.

  UsersRecord? currentUser;

  UsersRecord? selectedUser;

  DocumentReference? sentMessage;

  DateTime? selectedDate;

  String eventsPage = 'selectedDate';

  DateTime? selectedDateStart;

  DateTime? selectedDateEnd;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Pages widget.
  PageController? pagesController;

  int get pagesCurrentIndex => pagesController != null &&
          pagesController!.hasClients &&
          pagesController!.page != null
      ? pagesController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Calendar_Component component.
  late CalendarComponentModel calendarComponentModel;

  @override
  void initState(BuildContext context) {
    calendarComponentModel =
        createModel(context, () => CalendarComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    calendarComponentModel.dispose();
  }
}
