// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeRecord> _$homeRecordSerializer = new _$HomeRecordSerializer();

class _$HomeRecordSerializer implements StructuredSerializer<HomeRecord> {
  @override
  final Iterable<Type> types = const [HomeRecord, _$HomeRecord];
  @override
  final String wireName = 'HomeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HomeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.housingName;
    if (value != null) {
      result
        ..add('housingName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unitType;
    if (value != null) {
      result
        ..add('unitType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.isAvailable;
    if (value != null) {
      result
        ..add('isAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rent;
    if (value != null) {
      result
        ..add('rent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image1;
    if (value != null) {
      result
        ..add('image1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image2;
    if (value != null) {
      result
        ..add('image2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image3;
    if (value != null) {
      result
        ..add('image3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image4;
    if (value != null) {
      result
        ..add('image4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isEntireLeaseAvailable;
    if (value != null) {
      result
        ..add('isEntireLeaseAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isACAvailable;
    if (value != null) {
      result
        ..add('isACAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPetFriendly;
    if (value != null) {
      result
        ..add('isPetFriendly')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDryerAvailable;
    if (value != null) {
      result
        ..add('isDryerAvailable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.viewsCount;
    if (value != null) {
      result
        ..add('viewsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.peopleCount;
    if (value != null) {
      result
        ..add('peopleCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.housingRequests;
    if (value != null) {
      result
        ..add('housingRequests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HomeRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'housingName':
          result.housingName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'unitType':
          result.unitType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'isAvailable':
          result.isAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'rent':
          result.rent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image1':
          result.image1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image2':
          result.image2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image3':
          result.image3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image4':
          result.image4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isEntireLeaseAvailable':
          result.isEntireLeaseAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isACAvailable':
          result.isACAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPetFriendly':
          result.isPetFriendly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isDryerAvailable':
          result.isDryerAvailable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'viewsCount':
          result.viewsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'peopleCount':
          result.peopleCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'housingRequests':
          result.housingRequests.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$HomeRecord extends HomeRecord {
  @override
  final String? housingName;
  @override
  final String? unitType;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final bool? isAvailable;
  @override
  final double? rent;
  @override
  final String? image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final String? image4;
  @override
  final bool? isEntireLeaseAvailable;
  @override
  final bool? isACAvailable;
  @override
  final bool? isPetFriendly;
  @override
  final bool? isDryerAvailable;
  @override
  final int? viewsCount;
  @override
  final int? peopleCount;
  @override
  final String? description;
  @override
  final DateTime? timestamp;
  @override
  final BuiltList<DocumentReference<Object?>>? housingRequests;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HomeRecord([void Function(HomeRecordBuilder)? updates]) =>
      (new HomeRecordBuilder()..update(updates))._build();

  _$HomeRecord._(
      {this.housingName,
      this.unitType,
      this.location,
      this.userRef,
      this.isAvailable,
      this.rent,
      this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.isEntireLeaseAvailable,
      this.isACAvailable,
      this.isPetFriendly,
      this.isDryerAvailable,
      this.viewsCount,
      this.peopleCount,
      this.description,
      this.timestamp,
      this.housingRequests,
      this.ffRef})
      : super._();

  @override
  HomeRecord rebuild(void Function(HomeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeRecordBuilder toBuilder() => new HomeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeRecord &&
        housingName == other.housingName &&
        unitType == other.unitType &&
        location == other.location &&
        userRef == other.userRef &&
        isAvailable == other.isAvailable &&
        rent == other.rent &&
        image1 == other.image1 &&
        image2 == other.image2 &&
        image3 == other.image3 &&
        image4 == other.image4 &&
        isEntireLeaseAvailable == other.isEntireLeaseAvailable &&
        isACAvailable == other.isACAvailable &&
        isPetFriendly == other.isPetFriendly &&
        isDryerAvailable == other.isDryerAvailable &&
        viewsCount == other.viewsCount &&
        peopleCount == other.peopleCount &&
        description == other.description &&
        timestamp == other.timestamp &&
        housingRequests == other.housingRequests &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, housingName.hashCode),
                                                                                unitType.hashCode),
                                                                            location.hashCode),
                                                                        userRef.hashCode),
                                                                    isAvailable.hashCode),
                                                                rent.hashCode),
                                                            image1.hashCode),
                                                        image2.hashCode),
                                                    image3.hashCode),
                                                image4.hashCode),
                                            isEntireLeaseAvailable.hashCode),
                                        isACAvailable.hashCode),
                                    isPetFriendly.hashCode),
                                isDryerAvailable.hashCode),
                            viewsCount.hashCode),
                        peopleCount.hashCode),
                    description.hashCode),
                timestamp.hashCode),
            housingRequests.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeRecord')
          ..add('housingName', housingName)
          ..add('unitType', unitType)
          ..add('location', location)
          ..add('userRef', userRef)
          ..add('isAvailable', isAvailable)
          ..add('rent', rent)
          ..add('image1', image1)
          ..add('image2', image2)
          ..add('image3', image3)
          ..add('image4', image4)
          ..add('isEntireLeaseAvailable', isEntireLeaseAvailable)
          ..add('isACAvailable', isACAvailable)
          ..add('isPetFriendly', isPetFriendly)
          ..add('isDryerAvailable', isDryerAvailable)
          ..add('viewsCount', viewsCount)
          ..add('peopleCount', peopleCount)
          ..add('description', description)
          ..add('timestamp', timestamp)
          ..add('housingRequests', housingRequests)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HomeRecordBuilder implements Builder<HomeRecord, HomeRecordBuilder> {
  _$HomeRecord? _$v;

  String? _housingName;
  String? get housingName => _$this._housingName;
  set housingName(String? housingName) => _$this._housingName = housingName;

  String? _unitType;
  String? get unitType => _$this._unitType;
  set unitType(String? unitType) => _$this._unitType = unitType;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  double? _rent;
  double? get rent => _$this._rent;
  set rent(double? rent) => _$this._rent = rent;

  String? _image1;
  String? get image1 => _$this._image1;
  set image1(String? image1) => _$this._image1 = image1;

  String? _image2;
  String? get image2 => _$this._image2;
  set image2(String? image2) => _$this._image2 = image2;

  String? _image3;
  String? get image3 => _$this._image3;
  set image3(String? image3) => _$this._image3 = image3;

  String? _image4;
  String? get image4 => _$this._image4;
  set image4(String? image4) => _$this._image4 = image4;

  bool? _isEntireLeaseAvailable;
  bool? get isEntireLeaseAvailable => _$this._isEntireLeaseAvailable;
  set isEntireLeaseAvailable(bool? isEntireLeaseAvailable) =>
      _$this._isEntireLeaseAvailable = isEntireLeaseAvailable;

  bool? _isACAvailable;
  bool? get isACAvailable => _$this._isACAvailable;
  set isACAvailable(bool? isACAvailable) =>
      _$this._isACAvailable = isACAvailable;

  bool? _isPetFriendly;
  bool? get isPetFriendly => _$this._isPetFriendly;
  set isPetFriendly(bool? isPetFriendly) =>
      _$this._isPetFriendly = isPetFriendly;

  bool? _isDryerAvailable;
  bool? get isDryerAvailable => _$this._isDryerAvailable;
  set isDryerAvailable(bool? isDryerAvailable) =>
      _$this._isDryerAvailable = isDryerAvailable;

  int? _viewsCount;
  int? get viewsCount => _$this._viewsCount;
  set viewsCount(int? viewsCount) => _$this._viewsCount = viewsCount;

  int? _peopleCount;
  int? get peopleCount => _$this._peopleCount;
  set peopleCount(int? peopleCount) => _$this._peopleCount = peopleCount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  ListBuilder<DocumentReference<Object?>>? _housingRequests;
  ListBuilder<DocumentReference<Object?>> get housingRequests =>
      _$this._housingRequests ??= new ListBuilder<DocumentReference<Object?>>();
  set housingRequests(
          ListBuilder<DocumentReference<Object?>>? housingRequests) =>
      _$this._housingRequests = housingRequests;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HomeRecordBuilder() {
    HomeRecord._initializeBuilder(this);
  }

  HomeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _housingName = $v.housingName;
      _unitType = $v.unitType;
      _location = $v.location;
      _userRef = $v.userRef;
      _isAvailable = $v.isAvailable;
      _rent = $v.rent;
      _image1 = $v.image1;
      _image2 = $v.image2;
      _image3 = $v.image3;
      _image4 = $v.image4;
      _isEntireLeaseAvailable = $v.isEntireLeaseAvailable;
      _isACAvailable = $v.isACAvailable;
      _isPetFriendly = $v.isPetFriendly;
      _isDryerAvailable = $v.isDryerAvailable;
      _viewsCount = $v.viewsCount;
      _peopleCount = $v.peopleCount;
      _description = $v.description;
      _timestamp = $v.timestamp;
      _housingRequests = $v.housingRequests?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeRecord;
  }

  @override
  void update(void Function(HomeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeRecord build() => _build();

  _$HomeRecord _build() {
    _$HomeRecord _$result;
    try {
      _$result = _$v ??
          new _$HomeRecord._(
              housingName: housingName,
              unitType: unitType,
              location: location,
              userRef: userRef,
              isAvailable: isAvailable,
              rent: rent,
              image1: image1,
              image2: image2,
              image3: image3,
              image4: image4,
              isEntireLeaseAvailable: isEntireLeaseAvailable,
              isACAvailable: isACAvailable,
              isPetFriendly: isPetFriendly,
              isDryerAvailable: isDryerAvailable,
              viewsCount: viewsCount,
              peopleCount: peopleCount,
              description: description,
              timestamp: timestamp,
              housingRequests: _housingRequests?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'housingRequests';
        _housingRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
