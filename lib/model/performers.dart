import 'package:freezed_annotation/freezed_annotation.dart';
import 'images.dart';
part 'performers.g.dart';
part 'performers.freezed.dart';

@freezed
class Performer with _$Performer{

  factory Performer({
    String? type,
    String? name,
    String? image,
  })=_Performer;


  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);



}
