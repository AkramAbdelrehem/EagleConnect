// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<double> getTotalWeight(
    DocumentReference classRef, double? additionalWeight) async {
  final querySnapshot = await classRef.collection('grading_Categories').get();
  double total = 0.0;

  for (final doc in querySnapshot.docs) {
    final data = doc.data() as Map<String, dynamic>;
    final weight = data['weight_percentage'];
    if (weight is num) {
      total += weight.toDouble();
    }
  }

  if (additionalWeight != null) {
    total += additionalWeight;
  }

  return total;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
