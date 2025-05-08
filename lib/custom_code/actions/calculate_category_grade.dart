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

Future<double> calculateCategoryGrade(
  DocumentReference classRef,
  DocumentReference studentRef,
  DocumentReference categoryRef,
) async {
  // Fetch assignments that belong to the specified category

  return 100;
  // final assignmentsSnapshot = classRef
  //     .collection('assignment')
  //     .where('category_ref', isEqualTo: categoryRef)
  //     .get();

  // if (assignmentsSnapshot.docs.isEmpty) return 2;
  // return 100;
//   double totalScore = 0.0;
//   double totalMax = 0.0;

//   // Retrieve all grades in one query to avoid multiple async operations inside the loop
//   final gradesSnapshot = await classRef.collection('grades')
//       .where('student_ref', isEqualTo: studentRef)
//       .get();

//   // Map assignment ID -> score
//   final gradeMap = {
//     for (var doc in gradesSnapshot.docs)
//       (doc.data()['assignment_ref'] as DocumentReference).id: doc.data()['score'] ?? 0
//   };

//   for (final assignmentDoc in assignmentsSnapshot.docs) {
//     final data = assignmentDoc.data();
//     final maxPoints = (data['max_score'] ?? 0) as num;

//     if (maxPoints > 0) {
//       totalMax += maxPoints;
//       totalScore += gradeMap[assignmentDoc.reference.id] ?? 0;
//     }
//   }

//   return (totalMax == 0) ? 0.0 : (totalScore / totalMax) * 100;
//
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
