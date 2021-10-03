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
      : DateTime.parse(json['vencimento'] as String)
  ..operacao = _$enumDecodeNullable(_$OperacaoTituloEnumMap, json['operacao']);

Map<String, dynamic> _$TituloToJson(Titulo instance) => <String, dynamic>{
      'id': instance.id,
      'descricao': instance.descricao,
      'valor': instance.valor,
      'vencimento': instance.vencimento?.toIso8601String(),
      'operacao': _$OperacaoTituloEnumMap[instance.operacao],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$OperacaoTituloEnumMap = {
  OperacaoTitulo.PAGAR: 'PAGAR',
  OperacaoTitulo.RECEBER: 'RECEBER',
  OperacaoTitulo.TRANSFERENCIA: 'TRANSFERENCIA',
};
