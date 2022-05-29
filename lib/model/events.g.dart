// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Events _$$_EventsFromJson(Map<String, dynamic> json) => _$_Events(
      type: json['type'] as String?,
      id: json['id'] as int?,
      datetime_utc: json['datetime_utc'] as String?,
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      datetime_tbd: json['datetime_tbd'] as bool?,
      performers: (json['performers'] as List<dynamic>?)
          ?.map((e) => Performer.fromJson(e as Map<String, dynamic>))
          .toList(),
      datetime_local: json['datetime_local'] as String?,
      title: json['title'] as String?,
      short_title: json['short_title'] as String?,
      isFavourite: json['isFavourite'] as bool?,
    );

Map<String, dynamic> _$$_EventsToJson(_$_Events instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'datetime_utc': instance.datetime_utc,
      'venue': instance.venue,
      'datetime_tbd': instance.datetime_tbd,
      'performers': instance.performers,
      'datetime_local': instance.datetime_local,
      'title': instance.title,
      'short_title': instance.short_title,
      'isFavourite': instance.isFavourite,
    };
