// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Venue _$$_VenueFromJson(Map<String, dynamic> json) => _$_Venue(
      state: json['state'] as String?,
      name_V2: json['name_V2'] as String?,
      postal_code: json['postal_code'] as String?,
      name: json['name'] as String?,
      links: json['links'] as List<dynamic>?,
      timezone: json['timezone'] as String?,
      url: json['url'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      address: json['address'] as String?,
      city: json['city'] as String?,
      id: json['id'] as int?,
      display_location: json['display_location'] as String?,
    );

Map<String, dynamic> _$$_VenueToJson(_$_Venue instance) => <String, dynamic>{
      'state': instance.state,
      'name_V2': instance.name_V2,
      'postal_code': instance.postal_code,
      'name': instance.name,
      'links': instance.links,
      'timezone': instance.timezone,
      'url': instance.url,
      'score': instance.score,
      'address': instance.address,
      'city': instance.city,
      'id': instance.id,
      'display_location': instance.display_location,
    };
