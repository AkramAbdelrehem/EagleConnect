import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  bool hasBirthday() => _birthday != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "sent_messages_count" field.
  int? _sentMessagesCount;
  int get sentMessagesCount => _sentMessagesCount ?? 0;
  bool hasSentMessagesCount() => _sentMessagesCount != null;

  // "recieve_messages_count" field.
  int? _recieveMessagesCount;
  int get recieveMessagesCount => _recieveMessagesCount ?? 0;
  bool hasRecieveMessagesCount() => _recieveMessagesCount != null;

  // "grade" field.
  int? _grade;
  int get grade => _grade ?? 0;
  bool hasGrade() => _grade != null;

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "user_rating" field.
  int? _userRating;
  int get userRating => _userRating ?? 0;
  bool hasUserRating() => _userRating != null;

  // "school_ref" field.
  DocumentReference? _schoolRef;
  DocumentReference? get schoolRef => _schoolRef;
  bool hasSchoolRef() => _schoolRef != null;

  // "feed_views" field.
  int? _feedViews;
  int get feedViews => _feedViews ?? 0;
  bool hasFeedViews() => _feedViews != null;

  // "profile_picture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  bool hasProfilePicture() => _profilePicture != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _password = snapshotData['password'] as String?;
    _name = snapshotData['name'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _birthday = snapshotData['birthday'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _position = snapshotData['position'] as String?;
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _sentMessagesCount = castToType<int>(snapshotData['sent_messages_count']);
    _recieveMessagesCount =
        castToType<int>(snapshotData['recieve_messages_count']);
    _grade = castToType<int>(snapshotData['grade']);
    _schoolName = snapshotData['school_name'] as String?;
    _userRating = castToType<int>(snapshotData['user_rating']);
    _schoolRef = snapshotData['school_ref'] as DocumentReference?;
    _feedViews = castToType<int>(snapshotData['feed_views']);
    _profilePicture = snapshotData['profile_picture'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  DateTime? createdTime,
  String? password,
  String? name,
  String? lastName,
  DateTime? birthday,
  String? gender,
  String? position,
  String? uid,
  String? displayName,
  String? phoneNumber,
  int? sentMessagesCount,
  int? recieveMessagesCount,
  int? grade,
  String? schoolName,
  int? userRating,
  DocumentReference? schoolRef,
  int? feedViews,
  String? profilePicture,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'password': password,
      'name': name,
      'lastName': lastName,
      'birthday': birthday,
      'gender': gender,
      'position': position,
      'uid': uid,
      'display_name': displayName,
      'phone_number': phoneNumber,
      'sent_messages_count': sentMessagesCount,
      'recieve_messages_count': recieveMessagesCount,
      'grade': grade,
      'school_name': schoolName,
      'user_rating': userRating,
      'school_ref': schoolRef,
      'feed_views': feedViews,
      'profile_picture': profilePicture,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.password == e2?.password &&
        e1?.name == e2?.name &&
        e1?.lastName == e2?.lastName &&
        e1?.birthday == e2?.birthday &&
        e1?.gender == e2?.gender &&
        e1?.position == e2?.position &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.sentMessagesCount == e2?.sentMessagesCount &&
        e1?.recieveMessagesCount == e2?.recieveMessagesCount &&
        e1?.grade == e2?.grade &&
        e1?.schoolName == e2?.schoolName &&
        e1?.userRating == e2?.userRating &&
        e1?.schoolRef == e2?.schoolRef &&
        e1?.feedViews == e2?.feedViews &&
        e1?.profilePicture == e2?.profilePicture &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.password,
        e?.name,
        e?.lastName,
        e?.birthday,
        e?.gender,
        e?.position,
        e?.uid,
        e?.displayName,
        e?.phoneNumber,
        e?.sentMessagesCount,
        e?.recieveMessagesCount,
        e?.grade,
        e?.schoolName,
        e?.userRating,
        e?.schoolRef,
        e?.feedViews,
        e?.profilePicture,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
