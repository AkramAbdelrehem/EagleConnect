import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'day_label_component_model.dart';
export 'day_label_component_model.dart';

class DayLabelComponentWidget extends StatefulWidget {
  const DayLabelComponentWidget({
    super.key,
    required this.day,
  });

  final String? day;

  @override
  State<DayLabelComponentWidget> createState() =>
      _DayLabelComponentWidgetState();
}

class _DayLabelComponentWidgetState extends State<DayLabelComponentWidget> {
  late DayLabelComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayLabelComponentModel());

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
      width: 30.0,
      height: 24.0,
      decoration: BoxDecoration(),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        widget.day!,
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).secondaryText,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
      ),
    );
  }
}
