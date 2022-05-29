// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Events _$EventsFromJson(Map<String, dynamic> json) {
  return _Events.fromJson(json);
}

/// @nodoc
mixin _$Events {
  String? get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get datetime_utc => throw _privateConstructorUsedError;
  Venue? get venue => throw _privateConstructorUsedError;
  bool? get datetime_tbd => throw _privateConstructorUsedError;
  List<Performer>? get performers => throw _privateConstructorUsedError;
  String? get datetime_local => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get short_title => throw _privateConstructorUsedError;
  bool? get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventsCopyWith<Events> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsCopyWith<$Res> {
  factory $EventsCopyWith(Events value, $Res Function(Events) then) =
      _$EventsCopyWithImpl<$Res>;
  $Res call(
      {String? type,
      int? id,
      String? datetime_utc,
      Venue? venue,
      bool? datetime_tbd,
      List<Performer>? performers,
      String? datetime_local,
      String? title,
      String? short_title,
      bool? isFavourite});

  $VenueCopyWith<$Res>? get venue;
}

/// @nodoc
class _$EventsCopyWithImpl<$Res> implements $EventsCopyWith<$Res> {
  _$EventsCopyWithImpl(this._value, this._then);

  final Events _value;
  // ignore: unused_field
  final $Res Function(Events) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? datetime_utc = freezed,
    Object? venue = freezed,
    Object? datetime_tbd = freezed,
    Object? performers = freezed,
    Object? datetime_local = freezed,
    Object? title = freezed,
    Object? short_title = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      datetime_utc: datetime_utc == freezed
          ? _value.datetime_utc
          : datetime_utc // ignore: cast_nullable_to_non_nullable
              as String?,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      datetime_tbd: datetime_tbd == freezed
          ? _value.datetime_tbd
          : datetime_tbd // ignore: cast_nullable_to_non_nullable
              as bool?,
      performers: performers == freezed
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
      datetime_local: datetime_local == freezed
          ? _value.datetime_local
          : datetime_local // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      short_title: short_title == freezed
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $VenueCopyWith<$Res>? get venue {
    if (_value.venue == null) {
      return null;
    }

    return $VenueCopyWith<$Res>(_value.venue!, (value) {
      return _then(_value.copyWith(venue: value));
    });
  }
}

/// @nodoc
abstract class _$$_EventsCopyWith<$Res> implements $EventsCopyWith<$Res> {
  factory _$$_EventsCopyWith(_$_Events value, $Res Function(_$_Events) then) =
      __$$_EventsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? type,
      int? id,
      String? datetime_utc,
      Venue? venue,
      bool? datetime_tbd,
      List<Performer>? performers,
      String? datetime_local,
      String? title,
      String? short_title,
      bool? isFavourite});

  @override
  $VenueCopyWith<$Res>? get venue;
}

/// @nodoc
class __$$_EventsCopyWithImpl<$Res> extends _$EventsCopyWithImpl<$Res>
    implements _$$_EventsCopyWith<$Res> {
  __$$_EventsCopyWithImpl(_$_Events _value, $Res Function(_$_Events) _then)
      : super(_value, (v) => _then(v as _$_Events));

  @override
  _$_Events get _value => super._value as _$_Events;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? datetime_utc = freezed,
    Object? venue = freezed,
    Object? datetime_tbd = freezed,
    Object? performers = freezed,
    Object? datetime_local = freezed,
    Object? title = freezed,
    Object? short_title = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_$_Events(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      datetime_utc: datetime_utc == freezed
          ? _value.datetime_utc
          : datetime_utc // ignore: cast_nullable_to_non_nullable
              as String?,
      venue: venue == freezed
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue?,
      datetime_tbd: datetime_tbd == freezed
          ? _value.datetime_tbd
          : datetime_tbd // ignore: cast_nullable_to_non_nullable
              as bool?,
      performers: performers == freezed
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<Performer>?,
      datetime_local: datetime_local == freezed
          ? _value.datetime_local
          : datetime_local // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      short_title: short_title == freezed
          ? _value.short_title
          : short_title // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Events implements _Events {
  _$_Events(
      {this.type,
      this.id,
      this.datetime_utc,
      this.venue,
      this.datetime_tbd,
      final List<Performer>? performers,
      this.datetime_local,
      this.title,
      this.short_title,
      this.isFavourite})
      : _performers = performers;

  factory _$_Events.fromJson(Map<String, dynamic> json) =>
      _$$_EventsFromJson(json);

  @override
  final String? type;
  @override
  final int? id;
  @override
  final String? datetime_utc;
  @override
  final Venue? venue;
  @override
  final bool? datetime_tbd;
  final List<Performer>? _performers;
  @override
  List<Performer>? get performers {
    final value = _performers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? datetime_local;
  @override
  final String? title;
  @override
  final String? short_title;
  @override
  final bool? isFavourite;

  @override
  String toString() {
    return 'Events(type: $type, id: $id, datetime_utc: $datetime_utc, venue: $venue, datetime_tbd: $datetime_tbd, performers: $performers, datetime_local: $datetime_local, title: $title, short_title: $short_title, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Events &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.datetime_utc, datetime_utc) &&
            const DeepCollectionEquality().equals(other.venue, venue) &&
            const DeepCollectionEquality()
                .equals(other.datetime_tbd, datetime_tbd) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers) &&
            const DeepCollectionEquality()
                .equals(other.datetime_local, datetime_local) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.short_title, short_title) &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(datetime_utc),
      const DeepCollectionEquality().hash(venue),
      const DeepCollectionEquality().hash(datetime_tbd),
      const DeepCollectionEquality().hash(_performers),
      const DeepCollectionEquality().hash(datetime_local),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(short_title),
      const DeepCollectionEquality().hash(isFavourite));

  @JsonKey(ignore: true)
  @override
  _$$_EventsCopyWith<_$_Events> get copyWith =>
      __$$_EventsCopyWithImpl<_$_Events>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventsToJson(this);
  }
}

abstract class _Events implements Events {
  factory _Events(
      {final String? type,
      final int? id,
      final String? datetime_utc,
      final Venue? venue,
      final bool? datetime_tbd,
      final List<Performer>? performers,
      final String? datetime_local,
      final String? title,
      final String? short_title,
      final bool? isFavourite}) = _$_Events;

  factory _Events.fromJson(Map<String, dynamic> json) = _$_Events.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get datetime_utc => throw _privateConstructorUsedError;
  @override
  Venue? get venue => throw _privateConstructorUsedError;
  @override
  bool? get datetime_tbd => throw _privateConstructorUsedError;
  @override
  List<Performer>? get performers => throw _privateConstructorUsedError;
  @override
  String? get datetime_local => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get short_title => throw _privateConstructorUsedError;
  @override
  bool? get isFavourite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventsCopyWith<_$_Events> get copyWith =>
      throw _privateConstructorUsedError;
}
