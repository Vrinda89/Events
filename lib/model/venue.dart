import 'package:freezed_annotation/freezed_annotation.dart';
part 'venue.g.dart';
part 'venue.freezed.dart';
@freezed
class Venue with _$Venue {

  factory Venue({
    String? state,
    String? name_V2,
    String? postal_code,
    String? name,
    List<dynamic>? links,
    String? timezone,
    String? url,
    double? score,
    String? address,
    String? city,
    int? id,
    String? display_location,
  })=_Venue;


  factory Venue.fromJson(Map<String, dynamic> json) =>
      _$VenueFromJson(json);
}
