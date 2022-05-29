// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'performers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Performer _$PerformerFromJson(Map<String, dynamic> json) {
  return _Performer.fromJson(json);
}

/// @nodoc
mixin _$Performer {
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformerCopyWith<Performer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformerCopyWith<$Res> {
  factory $PerformerCopyWith(Performer value, $Res Function(Performer) then) =
      _$PerformerCopyWithImpl<$Res>;
  $Res call({String? type, String? name, String? image});
}

/// @nodoc
class _$PerformerCopyWithImpl<$Res> implements $PerformerCopyWith<$Res> {
  _$PerformerCopyWithImpl(this._value, this._then);

  final Performer _value;
  // ignore: unused_field
  final $Res Function(Performer) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PerformerCopyWith<$Res> implements $PerformerCopyWith<$Res> {
  factory _$$_PerformerCopyWith(
          _$_Performer value, $Res Function(_$_Performer) then) =
      __$$_PerformerCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? name, String? image});
}

/// @nodoc
class __$$_PerformerCopyWithImpl<$Res> extends _$PerformerCopyWithImpl<$Res>
    implements _$$_PerformerCopyWith<$Res> {
  __$$_PerformerCopyWithImpl(
      _$_Performer _value, $Res Function(_$_Performer) _then)
      : super(_value, (v) => _then(v as _$_Performer));

  @override
  _$_Performer get _value => super._value as _$_Performer;

  @override
  $Res call({
    Object? type = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Performer(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Performer implements _Performer {
  _$_Performer({this.type, this.name, this.image});

  factory _$_Performer.fromJson(Map<String, dynamic> json) =>
      _$$_PerformerFromJson(json);

  @override
  final String? type;
  @override
  final String? name;
  @override
  final String? image;

  @override
  String toString() {
    return 'Performer(type: $type, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Performer &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_PerformerCopyWith<_$_Performer> get copyWith =>
      __$$_PerformerCopyWithImpl<_$_Performer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformerToJson(this);
  }
}

abstract class _Performer implements Performer {
  factory _Performer(
      {final String? type,
      final String? name,
      final String? image}) = _$_Performer;

  factory _Performer.fromJson(Map<String, dynamic> json) =
      _$_Performer.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PerformerCopyWith<_$_Performer> get copyWith =>
      throw _privateConstructorUsedError;
}
