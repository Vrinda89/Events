import 'package:events_book/model/venue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'performers.dart';

part 'events.g.dart';

part 'events.freezed.dart';

@freezed
class Events with _$Events {
  factory Events(
      {String? type,
      int? id,
      String? datetime_utc,
      Venue? venue,
      bool? datetime_tbd,
      List<Performer>? performers,
      String? datetime_local,
      String? title,
      String? short_title,
      bool? isFavourite}) = _Events;

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);
}
