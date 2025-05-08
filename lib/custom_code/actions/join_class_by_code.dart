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

Future<bool> joinClassByCode(
  String code,
  DocumentReference userRef,
  DocumentReference schoolRef,
) async {
  try {
    // 1. Query the "Classes" collection where the class_code matches and school_ref matches
    final querySnapshot = await FirebaseFirestore.instance
        .collection('Classes')
        .where('class_code', isEqualTo: code)
        .where('school_ref', isEqualTo: schoolRef)
        .limit(1)
        .get();

    // 2. If no matching class is found, return false
    if (querySnapshot.docs.isEmpty) {
      return false;
    }

    // 3. Get the class document reference
    final classDoc = querySnapshot.docs.first.reference;

    // 4. Add the userRef to the student_ref list field in the class document using arrayUnion
    await classDoc.update({
      'student_ref': FieldValue.arrayUnion([userRef])
    });

    // 5. Return true to indicate success
    return true;
  } catch (e) {
    print('Error joining class by code: $e');
    return false;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
