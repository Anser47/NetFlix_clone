import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'upcommming.g.dart';

@JsonSerializable()
class Upcommming {
  int? page;
  List<Result>? results;

  Upcommming({this.page, this.results});

  factory Upcommming.fromJson(Map<String, dynamic> json) {
    return _$UpcommmingFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcommmingToJson(this);
}
