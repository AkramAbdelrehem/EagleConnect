import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_date" field.
  DateTime? _eventDate;
  DateTime? get eventDate => _eventDate;
  bool hasEventDate() => _eventDate != null;

  // "event_location" field.
  String? _eventLocation;
  String get eventLocation => _eventLocation ?? '';
  bool hasEventLocation() => _eventLocation != null;

  // "event_description" field.
  String? _eventDescription;
  String get eventDescription => _eventDescription ?? '';
  bool hasEventDescription() => _eventDescription != null;

  // "event_attendees" field.
  List<DocumentReference>? _eventAttendees;
  List<DocumentReference> get eventAttendees => _eventAttendees ?? const [];
  bool hasEventAttendees() => _eventAttendees != null;

  // "event_price" field.
  double? _eventPrice;
  double get eventPrice => _eventPrice ?? 0.0;
  bool hasEventPrice() => _eventPrice != null;

  // "event_image" field.
  String? _eventImage;
  String get eventImage => _eventImage ?? '';
  bool hasEventImage() => _eventImage != null;

  // "event_type" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  // "even_visibility" field.
  List<String>? _evenVisibility;
  List<String> get evenVisibility => _evenVisibility ?? const [];
  bool hasEvenVisibility() => _evenVisibility != null;

  // "event_host" field.
  DocumentReference? _eventHost;
  DocumentReference? get eventHost => _eventHost;
  bool hasEventHost() => _eventHost != null;

  // "shcool_ref" field.
  DocumentReference? _shcoolRef;
  DocumentReference? get shcoolRef => _shcoolRef;
  bool hasShcoolRef() => _shcoolRef != null;

  void _initializeFields() {
    _eventName = snapshotData['event_name'] as String?;
    _eventDate = snapshotData['event_date'] as DateTime?;
    _eventLocation = snapshotData['event_location'] as String?;
    _eventDescription = snapshotData['event_description'] as String?;
    _eventAttendees = getDataList(snapshotData['event_attendees']);
    _eventPrice = castToType<double>(snapshotData['event_price']);
    _eventImage = snapshotData['event_image'] as String?;
    _eventType = snapshotData['event_type'] as String?;
    _evenVisibility = getDataList(snapshotData['even_visibility']);
    _eventHost = snapshotData['event_host'] as DocumentReference?;
    _shcoolRef = snapshotData['shcool_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  DateTime? eventDate,
  String? eventLocation,
  String? eventDescription,
  double? eventPrice,
  String? eventImage,
  String? eventType,
  DocumentReference? eventHost,
  DocumentReference? shcoolRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_name': eventName,
      'event_date': eventDate,
      'event_location': eventLocation,
      'event_description': eventDescription,
      'event_price': eventPrice,
      'event_image': eventImage,
      'event_type': eventType,
      'event_host': eventHost,
      'shcool_ref': shcoolRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventName == e2?.eventName &&
        e1?.eventDate == e2?.eventDate &&
        e1?.eventLocation == e2?.eventLocation &&
        e1?.eventDescription == e2?.eventDescription &&
        listEquality.equals(e1?.eventAttendees, e2?.eventAttendees) &&
        e1?.eventPrice == e2?.eventPrice &&
        e1?.eventImage == e2?.eventImage &&
        e1?.eventType == e2?.eventType &&
        listEquality.equals(e1?.evenVisibility, e2?.evenVisibility) &&
        e1?.eventHost == e2?.eventHost &&
        e1?.shcoolRef == e2?.shcoolRef;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.eventName,
        e?.eventDate,
        e?.eventLocation,
        e?.eventDescription,
        e?.eventAttendees,
        e?.eventPrice,
        e?.eventImage,
        e?.eventType,
        e?.evenVisibility,
        e?.eventHost,
        e?.shcoolRef
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
