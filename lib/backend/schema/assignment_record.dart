import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentRecord extends FirestoreRecord {
  AssignmentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assignment_name" field.
  String? _assignmentName;
  String get assignmentName => _assignmentName ?? '';
  bool hasAssignmentName() => _assignmentName != null;

  // "max_score" field.
  double? _maxScore;
  double get maxScore => _maxScore ?? 0.0;
  bool hasMaxScore() => _maxScore != null;

  // "due_date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "category_ref" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "class_ref" field.
  DocumentReference? _classRef;
  DocumentReference? get classRef => _classRef;
  bool hasClassRef() => _classRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _assignmentName = snapshotData['assignment_name'] as String?;
    _maxScore = castToType<double>(snapshotData['max_score']);
    _dueDate = snapshotData['due_date'] as DateTime?;
    _categoryRef = snapshotData['category_ref'] as DocumentReference?;
    _classRef = snapshotData['class_ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('assignment')
          : FirebaseFirestore.instance.collectionGroup('assignment');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('assignment').doc(id);

  static Stream<AssignmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssignmentRecord.fromSnapshot(s));

  static Future<AssignmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssignmentRecord.fromSnapshot(s));

  static AssignmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssignmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssignmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssignmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssignmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssignmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssignmentRecordData({
  String? assignmentName,
  double? maxScore,
  DateTime? dueDate,
  DocumentReference? categoryRef,
  DocumentReference? classRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignment_name': assignmentName,
      'max_score': maxScore,
      'due_date': dueDate,
      'category_ref': categoryRef,
      'class_ref': classRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssignmentRecordDocumentEquality implements Equality<AssignmentRecord> {
  const AssignmentRecordDocumentEquality();

  @override
  bool equals(AssignmentRecord? e1, AssignmentRecord? e2) {
    return e1?.assignmentName == e2?.assignmentName &&
        e1?.maxScore == e2?.maxScore &&
        e1?.dueDate == e2?.dueDate &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.classRef == e2?.classRef;
  }

  @override
  int hash(AssignmentRecord? e) => const ListEquality().hash([
        e?.assignmentName,
        e?.maxScore,
        e?.dueDate,
        e?.categoryRef,
        e?.classRef
      ]);

  @override
  bool isValidKey(Object? o) => o is AssignmentRecord;
}
