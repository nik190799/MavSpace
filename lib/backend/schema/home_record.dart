import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'home_record.g.dart';

abstract class HomeRecord implements Built<HomeRecord, HomeRecordBuilder> {
  static Serializer<HomeRecord> get serializer => _$homeRecordSerializer;

  String? get housingName;

  String? get unitType;

  LatLng? get location;

  DocumentReference? get userRef;

  bool? get isAvailable;

  double? get rent;

  String? get image1;

  String? get image2;

  String? get image3;

  String? get image4;

  bool? get isEntireLeaseAvailable;

  bool? get isACAvailable;

  bool? get isPetFriendly;

  bool? get isDryerAvailable;

  int? get viewsCount;

  int? get peopleCount;

  String? get description;

  DateTime? get timestamp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HomeRecordBuilder builder) => builder
    ..housingName = ''
    ..unitType = ''
    ..isAvailable = false
    ..rent = 0.0
    ..image1 = ''
    ..image2 = ''
    ..image3 = ''
    ..image4 = ''
    ..isEntireLeaseAvailable = false
    ..isACAvailable = false
    ..isPetFriendly = false
    ..isDryerAvailable = false
    ..viewsCount = 0
    ..peopleCount = 0
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('home');

  static Stream<HomeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HomeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HomeRecord._();
  factory HomeRecord([void Function(HomeRecordBuilder) updates]) = _$HomeRecord;

  static HomeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHomeRecordData({
  String? housingName,
  String? unitType,
  LatLng? location,
  DocumentReference? userRef,
  bool? isAvailable,
  double? rent,
  String? image1,
  String? image2,
  String? image3,
  String? image4,
  bool? isEntireLeaseAvailable,
  bool? isACAvailable,
  bool? isPetFriendly,
  bool? isDryerAvailable,
  int? viewsCount,
  int? peopleCount,
  String? description,
  DateTime? timestamp,
}) {
  final firestoreData = serializers.toFirestore(
    HomeRecord.serializer,
    HomeRecord(
      (h) => h
        ..housingName = housingName
        ..unitType = unitType
        ..location = location
        ..userRef = userRef
        ..isAvailable = isAvailable
        ..rent = rent
        ..image1 = image1
        ..image2 = image2
        ..image3 = image3
        ..image4 = image4
        ..isEntireLeaseAvailable = isEntireLeaseAvailable
        ..isACAvailable = isACAvailable
        ..isPetFriendly = isPetFriendly
        ..isDryerAvailable = isDryerAvailable
        ..viewsCount = viewsCount
        ..peopleCount = peopleCount
        ..description = description
        ..timestamp = timestamp,
    ),
  );

  return firestoreData;
}
