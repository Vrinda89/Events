import 'package:freezed_annotation/freezed_annotation.dart';

part 'images.g.dart';
part 'images.freezed.dart';

@freezed
class Images with _$Images {

  factory Images({
    String? huge,
    })=_Images;


  factory Images.fromJson(Map<String, dynamic> json) =>
      _$ImagesFromJson(json);

}
