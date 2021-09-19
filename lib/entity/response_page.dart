import 'package:financeiro_flutter/entity/titulo.dart';
import 'package:json_annotation/json_annotation.dart';
part 'response_page.g.dart';

@JsonSerializable()
class ResponsePage<T> {
  @_Converter()
  List<T> data = [];
  int elapsedTime = 0;
  int page = 0;
  int pages = 0;
  int size = 0;
  int total = 0;
  
  ResponsePage();
  
  factory ResponsePage.fromJson(Map<String, dynamic> json) => _$ResponsePageFromJson<T>(json);

  Map<String, dynamic> toJson() => _$ResponsePageToJson(this);
}

class _Converter<T> implements JsonConverter<T, Object?> {
  const _Converter();

  @override
  T fromJson(Object? json) {

    if (json is Map<String, dynamic>) {
      return Titulo.fromJson(json) as T;
    }
    // This will only work if `json` is a native JSON type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`.
    return json as T;
  }

  // This will only work if `object` is a native JSON type:
  //   num, String, bool, null, etc
  // Or if it has a `toJson()` function`.
  @override
  Object? toJson(T object) => object;
}