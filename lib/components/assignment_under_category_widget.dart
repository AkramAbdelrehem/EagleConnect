import '/backend/backend.dart';
import '/components/edit_grade_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'assignment_under_category_model.dart';
export 'assignment_under_category_model.dart';

class AssignmentUnderCategoryWidget extends StatefulWidget {
  const AssignmentUnderCategoryWidget({
    super.key,
    this.parameter1,
    required this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
  });

  final Color? parameter1;
  final DocumentReference? parameter2;
  final DocumentReference? parameter3;
  final DocumentReference? parameter4;
  final double? parameter5;

  @override
  State<AssignmentUnderCategoryWidget> createState() =>
      _AssignmentUnderCategoryWidgetState();
}

class _AssignmentUnderCategoryWidgetState
    extends State<AssignmentUnderCategoryWidget> {
  late AssignmentUnderCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignmentUnderCategoryModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.catGrade = await actions.calculateCategoryGrade(
        widget.parameter2!,
        widget.parameter3!,
        widget.parameter4!,
      );
      _model.categoryGrade = _model.catGrade;
      safeSetState(() {});
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Assignments',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: functions
                            .getTheTextForBackground(widget.parameter1!),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                child: Text(
                  'Grades',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: functions
                            .getTheTextForBackground(widget.parameter1!),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 3.0,
          indent: 10.0,
          endIndent: 10.0,
          color: functions.getTheTextForBackground(widget.parameter1!),
        ),
        StreamBuilder<List<AssignmentRecord>>(
          stream: queryAssignmentRecord(
            parent: widget.parameter2,
            queryBuilder: (assignmentRecord) => assignmentRecord
                .where(
                  'category_ref',
                  isEqualTo: widget.parameter4,
                )
                .orderBy('due_date'),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<AssignmentRecord> listViewAssignmentRecordList =
                snapshot.data!;

            return ListView.builder(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listViewAssignmentRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewAssignmentRecord =
                    listViewAssignmentRecordList[listViewIndex];
                return EditGradeWidget(
                  key: Key(
                      'Key9sl_${listViewIndex}_of_${listViewAssignmentRecordList.length}'),
                  parameter1: listViewAssignmentRecord.assignmentName,
                  parameter2: widget.parameter1,
                  parameter3: dateTimeFormat(
                      "M/d h:mm a", listViewAssignmentRecord.dueDate!),
                  parameter4: widget.parameter2!,
                  parameter5: widget.parameter3,
                  parameter6: listViewAssignmentRecord.reference,
                  parameter7: listViewAssignmentRecord.maxScore,
                );
              },
            );
          },
        ),
        Divider(
          thickness: 3.0,
          indent: 10.0,
          endIndent: 10.0,
          color: functions.getTheTextForBackground(widget.parameter1!),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional(1.0, -1.0),
                child: Text(
                  'Category Grade:',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: functions
                            .getTheTextForBackground(widget.parameter1!),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Text(
                '${_model.categoryGrade?.toString()}%',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
