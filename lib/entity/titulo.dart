class Titulo {
  final int id;
  final String descricao;
  final double valor;
  final DateTime vencimento;

  Titulo({
    required this.id,
    required this.descricao,
    required this.valor,
    required this.vencimento,
  });

  factory Titulo.fromJson(Map<String, dynamic> json) {
    return Titulo(
      id: json['id'],
      descricao: json['descricao'],
      valor: json['valor'],
      vencimento: json['vencimento'],
    );
  }
}