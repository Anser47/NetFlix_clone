// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcommming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Upcommming _$UpcommmingFromJson(Map<String, dynamic> json) => Upcommming(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcommmingToJson(Upcommming instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
