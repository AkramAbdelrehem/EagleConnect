import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  /// Holds the current page that we are on to change the ui
  String _currentPage = 'Feed';
  String get currentPage => _currentPage;
  set currentPage(String value) {
    _currentPage = value;
  }

  String _currentFeed = 'Global';
  String get currentFeed => _currentFeed;
  set currentFeed(String value) {
    _currentFeed = value;
  }

  String _newCommentText = '';
  String get newCommentText => _newCommentText;
  set newCommentText(String value) {
    _newCommentText = value;
  }

  DocumentReference? _postReference;
  DocumentReference? get postReference => _postReference;
  set postReference(DocumentReference? value) {
    _postReference = value;
  }

  String _profilePhoto =
      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxwcm9maWxlfGVufDB8fHx8MTc0NDg5NTMwMnww&ixlib=rb-4.0.3&q=80&w=1080';
  String get profilePhoto => _profilePhoto;
  set profilePhoto(String value) {
    _profilePhoto = value;
  }
}
