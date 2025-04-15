import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "post_image" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "post_user" field.
  String? _postUser;
  String get postUser => _postUser ?? '';
  bool hasPostUser() => _postUser != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "user_profile" field.
  String? _userProfile;
  String get userProfile => _userProfile ?? '';
  bool hasUserProfile() => _userProfile != null;

  // "liked_by" field.
  List<String>? _likedBy;
  List<String> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "comments_count" field.
  int? _commentsCount;
  int get commentsCount => _commentsCount ?? 0;
  bool hasCommentsCount() => _commentsCount != null;

  // "school_ref" field.
  DocumentReference? _schoolRef;
  DocumentReference? get schoolRef => _schoolRef;
  bool hasSchoolRef() => _schoolRef != null;

  // "current_screen" field.
  String? _currentScreen;
  String get currentScreen => _currentScreen ?? '';
  bool hasCurrentScreen() => _currentScreen != null;

  void _initializeFields() {
    _postDescription = snapshotData['post_description'] as String?;
    _postImage = snapshotData['post_image'] as String?;
    _postUser = snapshotData['post_user'] as String?;
    _likes = castToType<int>(snapshotData['likes']);
    _userProfile = snapshotData['user_profile'] as String?;
    _likedBy = getDataList(snapshotData['liked_by']);
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _commentsCount = castToType<int>(snapshotData['comments_count']);
    _schoolRef = snapshotData['school_ref'] as DocumentReference?;
    _currentScreen = snapshotData['current_screen'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postDescription,
  String? postImage,
  String? postUser,
  int? likes,
  String? userProfile,
  DateTime? timePosted,
  DocumentReference? userRef,
  int? commentsCount,
  DocumentReference? schoolRef,
  String? currentScreen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_description': postDescription,
      'post_image': postImage,
      'post_user': postUser,
      'likes': likes,
      'user_profile': userProfile,
      'time_posted': timePosted,
      'user_ref': userRef,
      'comments_count': commentsCount,
      'school_ref': schoolRef,
      'current_screen': currentScreen,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postDescription == e2?.postDescription &&
        e1?.postImage == e2?.postImage &&
        e1?.postUser == e2?.postUser &&
        e1?.likes == e2?.likes &&
        e1?.userProfile == e2?.userProfile &&
        listEquality.equals(e1?.likedBy, e2?.likedBy) &&
        e1?.timePosted == e2?.timePosted &&
        e1?.userRef == e2?.userRef &&
        e1?.commentsCount == e2?.commentsCount &&
        e1?.schoolRef == e2?.schoolRef &&
        e1?.currentScreen == e2?.currentScreen;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.postDescription,
        e?.postImage,
        e?.postUser,
        e?.likes,
        e?.userProfile,
        e?.likedBy,
        e?.timePosted,
        e?.userRef,
        e?.commentsCount,
        e?.schoolRef,
        e?.currentScreen
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
