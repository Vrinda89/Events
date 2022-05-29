import 'package:freezed_annotation/freezed_annotation.dart';

import 'events.dart';
import 'meta.dart';

part 'response.g.dart';

part 'response.freezed.dart';

@freezed
class Response with _$Response {
  factory Response({List<Events>? events, Meta? meta}) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
