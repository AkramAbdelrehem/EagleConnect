import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'welcome_page_pop_up_new_user_model.dart';
export 'welcome_page_pop_up_new_user_model.dart';

class WelcomePagePopUpNewUserWidget extends StatefulWidget {
  const WelcomePagePopUpNewUserWidget({super.key});

  static String routeName = 'WelcomePagePopUpNewUser';
  static String routePath = '/welcomePagePopUpNewUser';

  @override
  State<WelcomePagePopUpNewUserWidget> createState() =>
      _WelcomePagePopUpNewUserWidgetState();
}

class _WelcomePagePopUpNewUserWidgetState
    extends State<WelcomePagePopUpNewUserWidget> {
  late WelcomePagePopUpNewUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomePagePopUpNewUserModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'WelcomePagePopUpNewUser'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 400.0,
            ),
            decoration: BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Welcome to EagleConnect!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 40.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(55.0),
                      child: Image.asset(
                        'assets/images/EagleConnect_Logo_4_Enhanced.png',
                        width: 188.8,
                        height: 216.8,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Ready to get started? Click the next button for a quick tutorial',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
