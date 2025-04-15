import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchasedSchoolsRecord extends FirestoreRecord {
  PurchasedSchoolsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "price_paid" field.
  double? _pricePaid;
  double get pricePaid => _pricePaid ?? 0.0;
  bool hasPricePaid() => _pricePaid != null;

  // "date_purchased" field.
  DateTime? _datePurchased;
  DateTime? get datePurchased => _datePurchased;
  bool hasDatePurchased() => _datePurchased != null;

  // "purchased_by" field.
  DocumentReference? _purchasedBy;
  DocumentReference? get purchasedBy => _purchasedBy;
  bool hasPurchasedBy() => _purchasedBy != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "school_description" field.
  String? _schoolDescription;
  String get schoolDescription => _schoolDescription ?? '';
  bool hasSchoolDescription() => _schoolDescription != null;

  // "school_type" field.
  String? _schoolType;
  String get schoolType => _schoolType ?? '';
  bool hasSchoolType() => _schoolType != null;

  // "school_grade_levels" field.
  List<String>? _schoolGradeLevels;
  List<String> get schoolGradeLevels => _schoolGradeLevels ?? const [];
  bool hasSchoolGradeLevels() => _schoolGradeLevels != null;

  // "school_website" field.
  String? _schoolWebsite;
  String get schoolWebsite => _schoolWebsite ?? '';
  bool hasSchoolWebsite() => _schoolWebsite != null;

  // "school_address" field.
  String? _schoolAddress;
  String get schoolAddress => _schoolAddress ?? '';
  bool hasSchoolAddress() => _schoolAddress != null;

  void _initializeFields() {
    _schoolName = snapshotData['school_name'] as String?;
    _pricePaid = castToType<double>(snapshotData['price_paid']);
    _datePurchased = snapshotData['date_purchased'] as DateTime?;
    _purchasedBy = snapshotData['purchased_by'] as DocumentReference?;
    _imageUrl = snapshotData['image_url'] as String?;
    _schoolDescription = snapshotData['school_description'] as String?;
    _schoolType = snapshotData['school_type'] as String?;
    _schoolGradeLevels = getDataList(snapshotData['school_grade_levels']);
    _schoolWebsite = snapshotData['school_website'] as String?;
    _schoolAddress = snapshotData['school_address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('purchased_schools');

  static Stream<PurchasedSchoolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PurchasedSchoolsRecord.fromSnapshot(s));

  static Future<PurchasedSchoolsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PurchasedSchoolsRecord.fromSnapshot(s));

  static PurchasedSchoolsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PurchasedSchoolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PurchasedSchoolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PurchasedSchoolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PurchasedSchoolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PurchasedSchoolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPurchasedSchoolsRecordData({
  String? schoolName,
  double? pricePaid,
  DateTime? datePurchased,
  DocumentReference? purchasedBy,
  String? imageUrl,
  String? schoolDescription,
  String? schoolType,
  String? schoolWebsite,
  String? schoolAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school_name': schoolName,
      'price_paid': pricePaid,
      'date_purchased': datePurchased,
      'purchased_by': purchasedBy,
      'image_url': imageUrl,
      'school_description': schoolDescription,
      'school_type': schoolType,
      'school_website': schoolWebsite,
      'school_address': schoolAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class PurchasedSchoolsRecordDocumentEquality
    implements Equality<PurchasedSchoolsRecord> {
  const PurchasedSchoolsRecordDocumentEquality();

  @override
  bool equals(PurchasedSchoolsRecord? e1, PurchasedSchoolsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.schoolName == e2?.schoolName &&
        e1?.pricePaid == e2?.pricePaid &&
        e1?.datePurchased == e2?.datePurchased &&
        e1?.purchasedBy == e2?.purchasedBy &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.schoolDescription == e2?.schoolDescription &&
        e1?.schoolType == e2?.schoolType &&
        listEquality.equals(e1?.schoolGradeLevels, e2?.schoolGradeLevels) &&
        e1?.schoolWebsite == e2?.schoolWebsite &&
        e1?.schoolAddress == e2?.schoolAddress;
  }

  @override
  int hash(PurchasedSchoolsRecord? e) => const ListEquality().hash([
        e?.schoolName,
        e?.pricePaid,
        e?.datePurchased,
        e?.purchasedBy,
        e?.imageUrl,
        e?.schoolDescription,
        e?.schoolType,
        e?.schoolGradeLevels,
        e?.schoolWebsite,
        e?.schoolAddress
      ]);

  @override
  bool isValidKey(Object? o) => o is PurchasedSchoolsRecord;
}
