// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titulo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Titulo _$TituloFromJson(Map<String, dynamic> json) => Titulo()
  ..id = json['id'] as String?
  ..descricao = json['descricao'] as String?
  ..valor = (json['valor'] as num?)?.toDouble()
  ..vencimento = json['vencimento'] == null
      ? null
      : DateTime.parse(json['vencimento'] as String);

Map<String, dynamic> _$TituloToJson(Titulo instance) => <String, dynamic>{
      'id': instance.id,
      'descricao': instance.descricao,
      'valor': instance.valor,
      'vencimento': instance.vencimento?.toIso8601String(),
    };
