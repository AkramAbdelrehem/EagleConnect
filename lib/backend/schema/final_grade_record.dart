import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinalGradeRecord extends FirestoreRecord {
  FinalGradeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "grade" field.
  double? _grade;
  double get grade => _grade ?? 0.0;
  bool hasGrade() => _grade != null;

  // "student_ref" field.
  DocumentReference? _studentRef;
  DocumentReference? get studentRef => _studentRef;
  bool hasStudentRef() => _studentRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _grade = castToType<double>(snapshotData['grade']);
    _studentRef = snapshotData['student_ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('final_grade')
          : FirebaseFirestore.instance.collectionGroup('final_grade');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('final_grade').doc(id);

  static Stream<FinalGradeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinalGradeRecord.fromSnapshot(s));

  static Future<FinalGradeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinalGradeRecord.fromSnapshot(s));

  static FinalGradeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinalGradeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinalGradeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinalGradeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinalGradeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinalGradeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinalGradeRecordData({
  double? grade,
  DocumentReference? studentRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'grade': grade,
      'student_ref': studentRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinalGradeRecordDocumentEquality implements Equality<FinalGradeRecord> {
  const FinalGradeRecordDocumentEquality();

  @override
  bool equals(FinalGradeRecord? e1, FinalGradeRecord? e2) {
    return e1?.grade == e2?.grade && e1?.studentRef == e2?.studentRef;
  }

  @override
  int hash(FinalGradeRecord? e) =>
      const ListEquality().hash([e?.grade, e?.studentRef]);

  @override
  bool isValidKey(Object? o) => o is FinalGradeRecord;
}
