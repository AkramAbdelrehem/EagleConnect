import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Production';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _currentEventCollection = data['currentEventCollection'];
      _gradeCollect = data['gradeCollect'];
      _showGrades = data['showGrades'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _currentEventCollection = '';
  String get currentEventCollection => _currentEventCollection;

  int _gradeCollect = 0;
  int get gradeCollect => _gradeCollect;

  bool _showGrades = false;
  bool get showGrades => _showGrades;
}
