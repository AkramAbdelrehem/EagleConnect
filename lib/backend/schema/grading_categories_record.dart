import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GradingCategoriesRecord extends FirestoreRecord {
  GradingCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "weight_percentage" field.
  double? _weightPercentage;
  double get weightPercentage => _weightPercentage ?? 0.0;
  bool hasWeightPercentage() => _weightPercentage != null;

  // "class_ref" field.
  DocumentReference? _classRef;
  DocumentReference? get classRef => _classRef;
  bool hasClassRef() => _classRef != null;

  // "assignments" field.
  List<DocumentReference>? _assignments;
  List<DocumentReference> get assignments => _assignments ?? const [];
  bool hasAssignments() => _assignments != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _categoryName = snapshotData['category_name'] as String?;
    _weightPercentage = castToType<double>(snapshotData['weight_percentage']);
    _classRef = snapshotData['class_ref'] as DocumentReference?;
    _assignments = getDataList(snapshotData['assignments']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('grading_Categories')
          : FirebaseFirestore.instance.collectionGroup('grading_Categories');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('grading_Categories').doc(id);

  static Stream<GradingCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GradingCategoriesRecord.fromSnapshot(s));

  static Future<GradingCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => GradingCategoriesRecord.fromSnapshot(s));

  static GradingCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GradingCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GradingCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GradingCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GradingCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GradingCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGradingCategoriesRecordData({
  String? categoryName,
  double? weightPercentage,
  DocumentReference? classRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'category_name': categoryName,
      'weight_percentage': weightPercentage,
      'class_ref': classRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class GradingCategoriesRecordDocumentEquality
    implements Equality<GradingCategoriesRecord> {
  const GradingCategoriesRecordDocumentEquality();

  @override
  bool equals(GradingCategoriesRecord? e1, GradingCategoriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.categoryName == e2?.categoryName &&
        e1?.weightPercentage == e2?.weightPercentage &&
        e1?.classRef == e2?.classRef &&
        listEquality.equals(e1?.assignments, e2?.assignments);
  }

  @override
  int hash(GradingCategoriesRecord? e) => const ListEquality().hash(
      [e?.categoryName, e?.weightPercentage, e?.classRef, e?.assignments]);

  @override
  bool isValidKey(Object? o) => o is GradingCategoriesRecord;
}
