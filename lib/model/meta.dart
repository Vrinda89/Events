import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.g.dart';
part 'meta.freezed.dart';

@freezed
class Meta with _$Meta{
  factory Meta(
      {int? total,
        int? took,
        int? page,
        int? per_page,
        dynamic? geolocation
     }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}