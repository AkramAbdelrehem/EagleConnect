import '/components/add_event_popup_widget.dart';
import '/components/day_label_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calendar_component_model.dart';
export 'calendar_component_model.dart';

class CalendarComponentWidget extends StatefulWidget {
  const CalendarComponentWidget({
    super.key,
    required this.inputDate,
    this.initialRequiredDate,
    this.onSelectDateAction,
  });

  final DateTime? inputDate;
  final DateTime? initialRequiredDate;
  final Future Function(DateTime selectedDate)? onSelectDateAction;

  @override
  State<CalendarComponentWidget> createState() =>
      _CalendarComponentWidgetState();
}

class _CalendarComponentWidgetState extends State<CalendarComponentWidget> {
  late CalendarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.inputDate = widget.inputDate;
      _model.selectedDate = getCurrentTimestamp;
      safeSetState(() {});
      if (widget.initialRequiredDate != null) {
        _model.selectedDate = widget.initialRequiredDate;
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 340.0,
      decoration: BoxDecoration(
        color: Color(0xFFD7ECF9),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      dateTimeFormat("MMMM", _model.inputDate),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                    ),
                    Text(
                      dateTimeFormat("y", _model.inputDate),
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, -1.0),
                        child: Builder(
                          builder: (context) => FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, 0.0)
                                        .resolve(Directionality.of(context)),
                                    child: AddEventPopupWidget(
                                      selectedDate: _model.selectedDate!,
                                    ),
                                  );
                                },
                              );
                            },
                            text: 'Add Event',
                            icon: Icon(
                              Icons.add,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconAlignment: IconAlignment.start,
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF169BCF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 24.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.restart_alt,
                    color: Color(0xFF169BCF),
                    size: 26.0,
                  ),
                  onPressed: () async {
                    _model.selectedDate = getCurrentTimestamp;
                    _model.inputDate = getCurrentTimestamp;
                    safeSetState(() {});
                    await widget.onSelectDateAction?.call(
                      _model.selectedDate!,
                    );
                  },
                ),
              ),
            ].addToStart(SizedBox(width: 20.0)).addToEnd(SizedBox(width: 20.0)),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 10.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                wrapWithModel(
                  model: _model.dayLabelComponentModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Mon',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Tue',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Wed',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Thu',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Fri',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel6,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Sat',
                  ),
                ),
                wrapWithModel(
                  model: _model.dayLabelComponentModel7,
                  updateCallback: () => safeSetState(() {}),
                  child: DayLabelComponentWidget(
                    day: 'Sun',
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 320.0,
            height: 202.0,
            decoration: BoxDecoration(),
            child: Builder(
              builder: (context) {
                final calendar =
                    functions.getCalendarForMonth(_model.inputDate!).toList();

                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 18.0,
                    mainAxisSpacing: 12.0,
                    childAspectRatio: 1.0,
                  ),
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: calendar.length,
                  itemBuilder: (context, calendarIndex) {
                    final calendarItem = calendar[calendarIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.selectedDate = calendarItem.calendarDate;
                        safeSetState(() {});
                        await widget.onSelectDateAction?.call(
                          _model.selectedDate!,
                        );
                      },
                      child: Container(
                        width: 30.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          color: dateTimeFormat(
                                      "d/M/y", calendarItem.calendarDate) ==
                                  dateTimeFormat("d/M/y", _model.selectedDate)
                              ? Color(0xFF169BCF)
                              : Color(0x00000000),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: dateTimeFormat(
                                        "d/M/y", calendarItem.calendarDate) ==
                                    dateTimeFormat("d/M/y", getCurrentTimestamp)
                                ? FlutterFlowTheme.of(context).primaryText
                                : Color(0x00000000),
                            width: 0.8,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          dateTimeFormat(
                              "d",
                              dateTimeFromSecondsSinceEpoch(valueOrDefault<int>(
                                calendarItem.calendarDate?.secondsSinceEpoch,
                                0,
                              ))),
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: GoogleFonts.roboto(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color: calendarItem.isPreviousMonth ||
                                        calendarItem.isNextMonth
                                    ? (dateTimeFormat("d/M/y",
                                                calendarItem.calendarDate) ==
                                            dateTimeFormat(
                                                "d/M/y", _model.selectedDate)
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .secondaryText)
                                    : (dateTimeFormat("d/M/y",
                                                calendarItem.calendarDate) ==
                                            dateTimeFormat(
                                                "d/M/y", _model.selectedDate)
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            height: 40.0,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: 180.0 * (math.pi / 180),
                    child: FlutterFlowIconButton(
                      borderRadius: 26.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.play_arrow,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        _model.inputDate =
                            functions.getLastMonthDateTime(_model.inputDate!);
                        safeSetState(() {});
                      },
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 26.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.play_arrow,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      _model.inputDate =
                          functions.getNextMonthDateTime(_model.inputDate!);
                      safeSetState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
        ].addToStart(SizedBox(height: 16.0)),
      ),
    );
  }
}
