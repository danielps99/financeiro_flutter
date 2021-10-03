import 'package:financeiro_flutter/enumerated/operacao_titulo.dart';
import 'package:json_annotation/json_annotation.dart';  
part 'titulo.g.dart';
@JsonSerializable()
class Titulo {
  String? id;
  String? descricao;
  double? valor;
  DateTime? vencimento;
  OperacaoTitulo? operacao;

  Titulo();

  String get operacaoString{
    switch (operacao) {
      case OperacaoTitulo.PAGAR: return "Pagar";
      case OperacaoTitulo.RECEBER: return "Receber";
      case OperacaoTitulo.TRANSFERENCIA: return "Transferência";
      default: return "";
    }
  }

  factory Titulo.fromJson(Map<String, dynamic> json) => _$TituloFromJson(json);
}