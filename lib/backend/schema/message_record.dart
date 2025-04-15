import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageRecord extends FirestoreRecord {
  MessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message_sent" field.
  String? _messageSent;
  String get messageSent => _messageSent ?? '';
  bool hasMessageSent() => _messageSent != null;

  // "message_sender" field.
  String? _messageSender;
  String get messageSender => _messageSender ?? '';
  bool hasMessageSender() => _messageSender != null;

  // "message_recipient" field.
  String? _messageRecipient;
  String get messageRecipient => _messageRecipient ?? '';
  bool hasMessageRecipient() => _messageRecipient != null;

  // "time_sent" field.
  DateTime? _timeSent;
  DateTime? get timeSent => _timeSent;
  bool hasTimeSent() => _timeSent != null;

  void _initializeFields() {
    _messageSent = snapshotData['message_sent'] as String?;
    _messageSender = snapshotData['message_sender'] as String?;
    _messageRecipient = snapshotData['message_recipient'] as String?;
    _timeSent = snapshotData['time_sent'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('message');

  static Stream<MessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessageRecord.fromSnapshot(s));

  static Future<MessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessageRecord.fromSnapshot(s));

  static MessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessageRecordData({
  String? messageSent,
  String? messageSender,
  String? messageRecipient,
  DateTime? timeSent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message_sent': messageSent,
      'message_sender': messageSender,
      'message_recipient': messageRecipient,
      'time_sent': timeSent,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessageRecordDocumentEquality implements Equality<MessageRecord> {
  const MessageRecordDocumentEquality();

  @override
  bool equals(MessageRecord? e1, MessageRecord? e2) {
    return e1?.messageSent == e2?.messageSent &&
        e1?.messageSender == e2?.messageSender &&
        e1?.messageRecipient == e2?.messageRecipient &&
        e1?.timeSent == e2?.timeSent;
  }

  @override
  int hash(MessageRecord? e) => const ListEquality().hash(
      [e?.messageSent, e?.messageSender, e?.messageRecipient, e?.timeSent]);

  @override
  bool isValidKey(Object? o) => o is MessageRecord;
}
