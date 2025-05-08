import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GradesRecord extends FirestoreRecord {
  GradesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "student_ref" field.
  DocumentReference? _studentRef;
  DocumentReference? get studentRef => _studentRef;
  bool hasStudentRef() => _studentRef != null;

  // "assignment_ref" field.
  DocumentReference? _assignmentRef;
  DocumentReference? get assignmentRef => _assignmentRef;
  bool hasAssignmentRef() => _assignmentRef != null;

  // "score" field.
  double? _score;
  double get score => _score ?? 0.0;
  bool hasScore() => _score != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _studentRef = snapshotData['student_ref'] as DocumentReference?;
    _assignmentRef = snapshotData['assignment_ref'] as DocumentReference?;
    _score = castToType<double>(snapshotData['score']);
    _feedback = snapshotData['feedback'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('grades')
          : FirebaseFirestore.instance.collectionGroup('grades');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('grades').doc(id);

  static Stream<GradesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GradesRecord.fromSnapshot(s));

  static Future<GradesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GradesRecord.fromSnapshot(s));

  static GradesRecord fromSnapshot(DocumentSnapshot snapshot) => GradesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GradesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GradesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GradesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GradesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGradesRecordData({
  DocumentReference? studentRef,
  DocumentReference? assignmentRef,
  double? score,
  String? feedback,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student_ref': studentRef,
      'assignment_ref': assignmentRef,
      'score': score,
      'feedback': feedback,
    }.withoutNulls,
  );

  return firestoreData;
}

class GradesRecordDocumentEquality implements Equality<GradesRecord> {
  const GradesRecordDocumentEquality();

  @override
  bool equals(GradesRecord? e1, GradesRecord? e2) {
    return e1?.studentRef == e2?.studentRef &&
        e1?.assignmentRef == e2?.assignmentRef &&
        e1?.score == e2?.score &&
        e1?.feedback == e2?.feedback;
  }

  @override
  int hash(GradesRecord? e) => const ListEquality()
      .hash([e?.studentRef, e?.assignmentRef, e?.score, e?.feedback]);

  @override
  bool isValidKey(Object? o) => o is GradesRecord;
}
