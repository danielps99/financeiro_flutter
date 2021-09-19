// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponsePage<T> _$ResponsePageFromJson<T>(Map<String, dynamic> json) =>
    ResponsePage<T>()
      ..data =
          (json['data'] as List<dynamic>).map(_Converter<T>().fromJson).toList()
      ..elapsedTime = json['elapsedTime'] as int
      ..page = json['page'] as int
      ..pages = json['pages'] as int
      ..size = json['size'] as int
      ..total = json['total'] as int;

Map<String, dynamic> _$ResponsePageToJson<T>(ResponsePage<T> instance) =>
    <String, dynamic>{
      'data': instance.data.map(_Converter<T>().toJson).toList(),
      'elapsedTime': instance.elapsedTime,
      'page': instance.page,
      'pages': instance.pages,
      'size': instance.size,
      'total': instance.total,
    };
