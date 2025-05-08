import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassesRecord extends FirestoreRecord {
  ClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "class_name" field.
  String? _className;
  String get className => _className ?? '';
  bool hasClassName() => _className != null;

  // "teacher_ref" field.
  DocumentReference? _teacherRef;
  DocumentReference? get teacherRef => _teacherRef;
  bool hasTeacherRef() => _teacherRef != null;

  // "max_students" field.
  int? _maxStudents;
  int get maxStudents => _maxStudents ?? 0;
  bool hasMaxStudents() => _maxStudents != null;

  // "student_ref" field.
  List<DocumentReference>? _studentRef;
  List<DocumentReference> get studentRef => _studentRef ?? const [];
  bool hasStudentRef() => _studentRef != null;

  // "class_code" field.
  String? _classCode;
  String get classCode => _classCode ?? '';
  bool hasClassCode() => _classCode != null;

  // "class_description" field.
  String? _classDescription;
  String get classDescription => _classDescription ?? '';
  bool hasClassDescription() => _classDescription != null;

  // "room_number" field.
  String? _roomNumber;
  String get roomNumber => _roomNumber ?? '';
  bool hasRoomNumber() => _roomNumber != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "class_color" field.
  Color? _classColor;
  Color? get classColor => _classColor;
  bool hasClassColor() => _classColor != null;

  // "class_days" field.
  List<String>? _classDays;
  List<String> get classDays => _classDays ?? const [];
  bool hasClassDays() => _classDays != null;

  // "class_start_time" field.
  DateTime? _classStartTime;
  DateTime? get classStartTime => _classStartTime;
  bool hasClassStartTime() => _classStartTime != null;

  // "class_end_time" field.
  DateTime? _classEndTime;
  DateTime? get classEndTime => _classEndTime;
  bool hasClassEndTime() => _classEndTime != null;

  // "school_Ref" field.
  DocumentReference? _schoolRef;
  DocumentReference? get schoolRef => _schoolRef;
  bool hasSchoolRef() => _schoolRef != null;

  void _initializeFields() {
    _className = snapshotData['class_name'] as String?;
    _teacherRef = snapshotData['teacher_ref'] as DocumentReference?;
    _maxStudents = castToType<int>(snapshotData['max_students']);
    _studentRef = getDataList(snapshotData['student_ref']);
    _classCode = snapshotData['class_code'] as String?;
    _classDescription = snapshotData['class_description'] as String?;
    _roomNumber = snapshotData['room_number'] as String?;
    _subject = snapshotData['subject'] as String?;
    _classColor = getSchemaColor(snapshotData['class_color']);
    _classDays = getDataList(snapshotData['class_days']);
    _classStartTime = snapshotData['class_start_time'] as DateTime?;
    _classEndTime = snapshotData['class_end_time'] as DateTime?;
    _schoolRef = snapshotData['school_Ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassesRecord.fromSnapshot(s));

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassesRecord.fromSnapshot(s));

  static ClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassesRecordData({
  String? className,
  DocumentReference? teacherRef,
  int? maxStudents,
  String? classCode,
  String? classDescription,
  String? roomNumber,
  String? subject,
  Color? classColor,
  DateTime? classStartTime,
  DateTime? classEndTime,
  DocumentReference? schoolRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'class_name': className,
      'teacher_ref': teacherRef,
      'max_students': maxStudents,
      'class_code': classCode,
      'class_description': classDescription,
      'room_number': roomNumber,
      'subject': subject,
      'class_color': classColor,
      'class_start_time': classStartTime,
      'class_end_time': classEndTime,
      'school_Ref': schoolRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassesRecordDocumentEquality implements Equality<ClassesRecord> {
  const ClassesRecordDocumentEquality();

  @override
  bool equals(ClassesRecord? e1, ClassesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.className == e2?.className &&
        e1?.teacherRef == e2?.teacherRef &&
        e1?.maxStudents == e2?.maxStudents &&
        listEquality.equals(e1?.studentRef, e2?.studentRef) &&
        e1?.classCode == e2?.classCode &&
        e1?.classDescription == e2?.classDescription &&
        e1?.roomNumber == e2?.roomNumber &&
        e1?.subject == e2?.subject &&
        e1?.classColor == e2?.classColor &&
        listEquality.equals(e1?.classDays, e2?.classDays) &&
        e1?.classStartTime == e2?.classStartTime &&
        e1?.classEndTime == e2?.classEndTime &&
        e1?.schoolRef == e2?.schoolRef;
  }

  @override
  int hash(ClassesRecord? e) => const ListEquality().hash([
        e?.className,
        e?.teacherRef,
        e?.maxStudents,
        e?.studentRef,
        e?.classCode,
        e?.classDescription,
        e?.roomNumber,
        e?.subject,
        e?.classColor,
        e?.classDays,
        e?.classStartTime,
        e?.classEndTime,
        e?.schoolRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassesRecord;
}
