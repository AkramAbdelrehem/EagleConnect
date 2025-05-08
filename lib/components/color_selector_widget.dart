import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_selector_model.dart';
export 'color_selector_model.dart';

class ColorSelectorWidget extends StatefulWidget {
  const ColorSelectorWidget({
    super.key,
    required this.popUp,
    this.classColor,
    this.classRef,
  });

  final bool? popUp;
  final Color? classColor;
  final DocumentReference? classRef;

  @override
  State<ColorSelectorWidget> createState() => _ColorSelectorWidgetState();
}

class _ColorSelectorWidgetState extends State<ColorSelectorWidget> {
  late ColorSelectorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorSelectorModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
      decoration: BoxDecoration(
        color: widget.popUp!
            ? FlutterFlowTheme.of(context).niceBlue
            : Color(0x61169BCF),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Text(
                'Select Class Color',
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.selectedColoe = 1;
                      _model.classColor = _model.customColor;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: valueOrDefault<Color>(
                          widget.popUp!
                              ? widget.classColor
                              : _model.customColor,
                          Color(0xFFFF0000),
                        ),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 1 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Color(0xFF7C4DFF);
                      _model.selectedColoe = 2;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF7C4DFF),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 2 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Color(0xFF00BCD4);
                      _model.selectedColoe = 3;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF00BCD4),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 3 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Colors.green;
                      _model.selectedColoe = 4;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 4 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Color(0xFFFFC107);
                      _model.selectedColoe = 5;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFC107),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 5 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Colors.purple;
                      _model.selectedColoe = 6;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 6 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Color(0xFF3F51B5);
                      _model.selectedColoe = 7;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF3F51B5),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 7 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Color(0xFF009688);
                      _model.selectedColoe = 8;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF009688),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 8 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Colors.orange;
                      _model.selectedColoe = 9;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 9 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.classColor = Color(0xFF607D8B);
                      _model.selectedColoe = 10;
                      safeSetState(() {});
                      if (widget.popUp!) {
                        await widget.classRef!.update(createClassesRecordData(
                          classColor: _model.classColor,
                        ));
                        Navigator.pop(context);
                      } else {
                        return;
                      }
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF607D8B),
                        borderRadius:
                            BorderRadius.circular(valueOrDefault<double>(
                          _model.selectedColoe == 10 ? 6.0 : 32.0,
                          0.0,
                        )),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE0E3E7),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Custom Color',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.65,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.done,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Hex Code',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            minLines: 1,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 32.0,
                        buttonSize: 50.0,
                        fillColor: FlutterFlowTheme.of(context).niceBlue,
                        icon: Icon(
                          Icons.check,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          _model.customColor = valueOrDefault<Color>(
                            functions.stringToColor(_model.textController.text),
                            FlutterFlowTheme.of(context).primaryText,
                          );
                          _model.selectedColoe = 1;
                          safeSetState(() {});
                          if (widget.popUp!) {
                            await widget.classRef!
                                .update(createClassesRecordData(
                              classColor: _model.customColor,
                            ));
                            Navigator.pop(context);
                          } else {
                            return;
                          }
                        },
                      ),
                    ],
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
