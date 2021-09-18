import 'package:json_annotation/json_annotation.dart';  
part 'titulo.g.dart';
@JsonSerializable()
class Titulo {
  String? id;
  String? descricao;
  double? valor;
  DateTime? vencimento;

  Titulo();

  factory Titulo.fromJson(Map<String, dynamic> json) => _$TituloFromJson(json);
}