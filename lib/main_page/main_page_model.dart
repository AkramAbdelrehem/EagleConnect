import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  Local state fields for this page.

  UsersRecord? currentUser;

  UsersRecord? selectedUser;

  DocumentReference? sentMessage;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Pages widget.
  PageController? pagesController;

  int get pagesCurrentIndex => pagesController != null &&
          pagesController!.hasClients &&
          pagesController!.page != null
      ? pagesController!.page!.round()
      : 0;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
