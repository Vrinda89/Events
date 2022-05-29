// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      total: json['total'] as int?,
      took: json['took'] as int?,
      page: json['page'] as int?,
      per_page: json['per_page'] as int?,
      geolocation: json['geolocation'],
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'total': instance.total,
      'took': instance.took,
      'page': instance.page,
      'per_page': instance.per_page,
      'geolocation': instance.geolocation,
    };
