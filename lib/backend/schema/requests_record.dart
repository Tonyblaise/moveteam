import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "company_email" field.
  String? _companyEmail;
  String get companyEmail => _companyEmail ?? '';
  bool hasCompanyEmail() => _companyEmail != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "drop_off_location_geopoint" field.
  LatLng? _dropOffLocationGeopoint;
  LatLng? get dropOffLocationGeopoint => _dropOffLocationGeopoint;
  bool hasDropOffLocationGeopoint() => _dropOffLocationGeopoint != null;

  // "drop_off_location_address" field.
  String? _dropOffLocationAddress;
  String get dropOffLocationAddress => _dropOffLocationAddress ?? '';
  bool hasDropOffLocationAddress() => _dropOffLocationAddress != null;

  // "number_of_vehicles" field.
  int? _numberOfVehicles;
  int get numberOfVehicles => _numberOfVehicles ?? 0;
  bool hasNumberOfVehicles() => _numberOfVehicles != null;

  // "pick_off_location_geopoint" field.
  LatLng? _pickOffLocationGeopoint;
  LatLng? get pickOffLocationGeopoint => _pickOffLocationGeopoint;
  bool hasPickOffLocationGeopoint() => _pickOffLocationGeopoint != null;

  // "pick_off_location_address" field.
  String? _pickOffLocationAddress;
  String get pickOffLocationAddress => _pickOffLocationAddress ?? '';
  bool hasPickOffLocationAddress() => _pickOffLocationAddress != null;

  // "drop_off_time" field.
  DateTime? _dropOffTime;
  DateTime? get dropOffTime => _dropOffTime;
  bool hasDropOffTime() => _dropOffTime != null;

  // "pick_up_time" field.
  DateTime? _pickUpTime;
  DateTime? get pickUpTime => _pickUpTime;
  bool hasPickUpTime() => _pickUpTime != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "successful_service_provider" field.
  DocumentReference? _successfulServiceProvider;
  DocumentReference? get successfulServiceProvider =>
      _successfulServiceProvider;
  bool hasSuccessfulServiceProvider() => _successfulServiceProvider != null;

  // "invited_service_providers" field.
  List<DocumentReference>? _invitedServiceProviders;
  List<DocumentReference> get invitedServiceProviders =>
      _invitedServiceProviders ?? const [];
  bool hasInvitedServiceProviders() => _invitedServiceProviders != null;

  void _initializeFields() {
    _companyName = snapshotData['company_name'] as String?;
    _companyEmail = snapshotData['company_email'] as String?;
    _details = snapshotData['details'] as String?;
    _dropOffLocationGeopoint =
        snapshotData['drop_off_location_geopoint'] as LatLng?;
    _dropOffLocationAddress =
        snapshotData['drop_off_location_address'] as String?;
    _numberOfVehicles = castToType<int>(snapshotData['number_of_vehicles']);
    _pickOffLocationGeopoint =
        snapshotData['pick_off_location_geopoint'] as LatLng?;
    _pickOffLocationAddress =
        snapshotData['pick_off_location_address'] as String?;
    _dropOffTime = snapshotData['drop_off_time'] as DateTime?;
    _pickUpTime = snapshotData['pick_up_time'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _chat = snapshotData['chat'] as DocumentReference?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _successfulServiceProvider =
        snapshotData['successful_service_provider'] as DocumentReference?;
    _invitedServiceProviders =
        getDataList(snapshotData['invited_service_providers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  String? companyName,
  String? companyEmail,
  String? details,
  LatLng? dropOffLocationGeopoint,
  String? dropOffLocationAddress,
  int? numberOfVehicles,
  LatLng? pickOffLocationGeopoint,
  String? pickOffLocationAddress,
  DateTime? dropOffTime,
  DateTime? pickUpTime,
  DocumentReference? user,
  DocumentReference? chat,
  DateTime? timestamp,
  String? status,
  String? userName,
  String? vehicleType,
  DocumentReference? successfulServiceProvider,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'company_name': companyName,
      'company_email': companyEmail,
      'details': details,
      'drop_off_location_geopoint': dropOffLocationGeopoint,
      'drop_off_location_address': dropOffLocationAddress,
      'number_of_vehicles': numberOfVehicles,
      'pick_off_location_geopoint': pickOffLocationGeopoint,
      'pick_off_location_address': pickOffLocationAddress,
      'drop_off_time': dropOffTime,
      'pick_up_time': pickUpTime,
      'user': user,
      'chat': chat,
      'timestamp': timestamp,
      'status': status,
      'user_name': userName,
      'vehicle_type': vehicleType,
      'successful_service_provider': successfulServiceProvider,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.companyName == e2?.companyName &&
        e1?.companyEmail == e2?.companyEmail &&
        e1?.details == e2?.details &&
        e1?.dropOffLocationGeopoint == e2?.dropOffLocationGeopoint &&
        e1?.dropOffLocationAddress == e2?.dropOffLocationAddress &&
        e1?.numberOfVehicles == e2?.numberOfVehicles &&
        e1?.pickOffLocationGeopoint == e2?.pickOffLocationGeopoint &&
        e1?.pickOffLocationAddress == e2?.pickOffLocationAddress &&
        e1?.dropOffTime == e2?.dropOffTime &&
        e1?.pickUpTime == e2?.pickUpTime &&
        e1?.user == e2?.user &&
        e1?.chat == e2?.chat &&
        e1?.timestamp == e2?.timestamp &&
        e1?.status == e2?.status &&
        e1?.userName == e2?.userName &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.successfulServiceProvider == e2?.successfulServiceProvider &&
        listEquality.equals(
            e1?.invitedServiceProviders, e2?.invitedServiceProviders);
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash([
        e?.companyName,
        e?.companyEmail,
        e?.details,
        e?.dropOffLocationGeopoint,
        e?.dropOffLocationAddress,
        e?.numberOfVehicles,
        e?.pickOffLocationGeopoint,
        e?.pickOffLocationAddress,
        e?.dropOffTime,
        e?.pickUpTime,
        e?.user,
        e?.chat,
        e?.timestamp,
        e?.status,
        e?.userName,
        e?.vehicleType,
        e?.successfulServiceProvider,
        e?.invitedServiceProviders
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
