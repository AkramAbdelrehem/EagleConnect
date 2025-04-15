import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:eagle_connect/flutter_flow/flutter_flow_drop_down.dart';
import 'package:eagle_connect/flutter_flow/flutter_flow_icon_button.dart';
import 'package:eagle_connect/flutter_flow/flutter_flow_widgets.dart';
import 'package:eagle_connect/flutter_flow/flutter_flow_theme.dart';
import 'package:eagle_connect/index.dart';
import 'package:eagle_connect/main.dart';
import 'package:eagle_connect/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:eagle_connect/backend/firebase/firebase_config.dart';
import 'package:eagle_connect/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('Manage Feed Test-Hilson Jesus', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(const ValueKey('LoginEmail_emxy')), 'hilson_jesus@uri.edu');
    await tester.enterText(
        find.byKey(const ValueKey('LoginPassword_rrcy')), '123456');
    await tester.tap(find.byKey(const ValueKey('Button_753p')));
    await tester.pumpAndSettle();
    expect(find.text('EagleConnect'), findsWidgets);
    await tester.tap(find.byKey(const ValueKey('FloatingActionButton_6lwz')));
    await tester.pumpAndSettle();
    expect(find.text('Create Post'), findsWidgets);
    await tester.enterText(
        find.byKey(const ValueKey('PostInfo')), 'Hello World');
    await tester.tap(find.byKey(const ValueKey('post_to')));
    await tester.tap(find.text('Global'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('post_button')));
    await tester.pumpAndSettle();
    expect(find.text('Hello World'), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
