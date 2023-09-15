import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer.freezed.dart';
part 'beer.g.dart';

@freezed
class Beer with _$Beer {
  factory Beer({
    int? id,
    String? uid,
    String? brand,
    String? name,
    String? style,
    String? hop,
    String? yeast,
    String? malts,
    String? ibu,
    String? alcohol,
    String? blg,
  }) = _Beer;

  factory Beer.fromJson(Map<String, dynamic> json) => _$BeerFromJson(json);
}
