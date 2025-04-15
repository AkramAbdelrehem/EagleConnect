import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'feed_tab_bar_model.dart';
export 'feed_tab_bar_model.dart';

class FeedTabBarWidget extends StatefulWidget {
  const FeedTabBarWidget({super.key});

  @override
  State<FeedTabBarWidget> createState() => _FeedTabBarWidgetState();
}

class _FeedTabBarWidgetState extends State<FeedTabBarWidget> {
  late FeedTabBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedTabBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        width: double.infinity,
        height: 80.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                -2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 22.0,
                    borderWidth: 1.0,
                    buttonSize: 44.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.public_rounded,
                      color: FFAppState().currentFeed == 'Global'
                          ? FlutterFlowTheme.of(context).primaryText
                          : Color(0xA657636C),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      FFAppState().currentFeed = 'Global';
                      safeSetState(() {});
                    },
                  ),
                  Text(
                    'Global Feed',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Inter',
                          color: FFAppState().currentFeed == 'Global'
                              ? FlutterFlowTheme.of(context).primaryText
                              : Color(0xA657636C),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 22.0,
                      borderWidth: 1.0,
                      buttonSize: 44.0,
                      fillColor: Color(0x00FFFFFF),
                      icon: Icon(
                        Icons.menu_book_rounded,
                        color: FFAppState().currentFeed == 'Classes'
                            ? FlutterFlowTheme.of(context).primaryText
                            : Color(0xA657636C),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        FFAppState().currentFeed = 'Classes';
                        safeSetState(() {});
                      },
                    ),
                    Text(
                      'Classes',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Inter',
                            color: FFAppState().currentFeed == 'Classes'
                                ? FlutterFlowTheme.of(context).primaryText
                                : Color(0xA657636C),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 22.0,
                    borderWidth: 1.0,
                    buttonSize: 44.0,
                    fillColor: Color(0x00FFFFFF),
                    icon: Icon(
                      Icons.groups_rounded,
                      color: FFAppState().currentFeed == 'Clubs'
                          ? FlutterFlowTheme.of(context).primaryText
                          : Color(0xA657636C),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      FFAppState().currentFeed = 'Clubs';
                      safeSetState(() {});
                    },
                  ),
                  Text(
                    'Clubs',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ].divide(SizedBox(width: 45.0)),
          ),
        ),
      ),
    );
  }
}
