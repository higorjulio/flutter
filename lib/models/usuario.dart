class Usuario {
  final String nome;
  final int idade;
  final String cidade;
  final String estado;
  final String descricao;
  final List<String> interesses;

  const Usuario({
    required this.nome,
    required this.idade,
    required this.cidade,
    required this.estado,
    required this.descricao,
    required this.interesses,
  });
}
