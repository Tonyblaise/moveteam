import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BidsRecord extends FirestoreRecord {
  BidsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "request" field.
  DocumentReference? _request;
  DocumentReference? get request => _request;
  bool hasRequest() => _request != null;

  // "meetup_location_lat_lng" field.
  LatLng? _meetupLocationLatLng;
  LatLng? get meetupLocationLatLng => _meetupLocationLatLng;
  bool hasMeetupLocationLatLng() => _meetupLocationLatLng != null;

  // "meetup_location_address" field.
  String? _meetupLocationAddress;
  String get meetupLocationAddress => _meetupLocationAddress ?? '';
  bool hasMeetupLocationAddress() => _meetupLocationAddress != null;

  // "meetup_time" field.
  DateTime? _meetupTime;
  DateTime? get meetupTime => _meetupTime;
  bool hasMeetupTime() => _meetupTime != null;

  // "more_details" field.
  String? _moreDetails;
  String get moreDetails => _moreDetails ?? '';
  bool hasMoreDetails() => _moreDetails != null;

  // "service_provider_status" field.
  String? _serviceProviderStatus;
  String get serviceProviderStatus => _serviceProviderStatus ?? '';
  bool hasServiceProviderStatus() => _serviceProviderStatus != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "user_profile" field.
  String? _userProfile;
  String get userProfile => _userProfile ?? '';
  bool hasUserProfile() => _userProfile != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _request = snapshotData['request'] as DocumentReference?;
    _meetupLocationLatLng = snapshotData['meetup_location_lat_lng'] as LatLng?;
    _meetupLocationAddress = snapshotData['meetup_location_address'] as String?;
    _meetupTime = snapshotData['meetup_time'] as DateTime?;
    _moreDetails = snapshotData['more_details'] as String?;
    _serviceProviderStatus = snapshotData['service_provider_status'] as String?;
    _status = snapshotData['status'] as String?;
    _chat = snapshotData['chat'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _username = snapshotData['username'] as String?;
    _userProfile = snapshotData['user_profile'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bids');

  static Stream<BidsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BidsRecord.fromSnapshot(s));

  static Future<BidsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BidsRecord.fromSnapshot(s));

  static BidsRecord fromSnapshot(DocumentSnapshot snapshot) => BidsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BidsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BidsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BidsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BidsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBidsRecordData({
  DocumentReference? user,
  DocumentReference? request,
  LatLng? meetupLocationLatLng,
  String? meetupLocationAddress,
  DateTime? meetupTime,
  String? moreDetails,
  String? serviceProviderStatus,
  String? status,
  DocumentReference? chat,
  DateTime? timestamp,
  String? username,
  String? userProfile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'request': request,
      'meetup_location_lat_lng': meetupLocationLatLng,
      'meetup_location_address': meetupLocationAddress,
      'meetup_time': meetupTime,
      'more_details': moreDetails,
      'service_provider_status': serviceProviderStatus,
      'status': status,
      'chat': chat,
      'timestamp': timestamp,
      'username': username,
      'user_profile': userProfile,
    }.withoutNulls,
  );

  return firestoreData;
}

class BidsRecordDocumentEquality implements Equality<BidsRecord> {
  const BidsRecordDocumentEquality();

  @override
  bool equals(BidsRecord? e1, BidsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.request == e2?.request &&
        e1?.meetupLocationLatLng == e2?.meetupLocationLatLng &&
        e1?.meetupLocationAddress == e2?.meetupLocationAddress &&
        e1?.meetupTime == e2?.meetupTime &&
        e1?.moreDetails == e2?.moreDetails &&
        e1?.serviceProviderStatus == e2?.serviceProviderStatus &&
        e1?.status == e2?.status &&
        e1?.chat == e2?.chat &&
        e1?.timestamp == e2?.timestamp &&
        e1?.username == e2?.username &&
        e1?.userProfile == e2?.userProfile;
  }

  @override
  int hash(BidsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.request,
        e?.meetupLocationLatLng,
        e?.meetupLocationAddress,
        e?.meetupTime,
        e?.moreDetails,
        e?.serviceProviderStatus,
        e?.status,
        e?.chat,
        e?.timestamp,
        e?.username,
        e?.userProfile
      ]);

  @override
  bool isValidKey(Object? o) => o is BidsRecord;
}
