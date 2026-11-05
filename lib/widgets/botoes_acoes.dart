import 'package:flutter/material.dart';

class BotoesAcoes extends StatelessWidget {
  const BotoesAcoes({super.key});

  static const azul = Color(0xFF2196F3);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _BotaoAcao(
            icon: Icons.search,
            texto: 'Quero Ir',
          ),
          _BotaoAcao(
            icon: Icons.verified_outlined,
            texto: 'Já Fui',
          ),
          _BotaoAcao(
            icon: Icons.share,
            texto: 'Compartilhar',
          ),
          _BotaoAcao(
            icon: Icons.star_border,
            texto: 'Avaliações',
          ),
        ],
      ),
    );
  }
}

class _BotaoAcao extends StatelessWidget {
  final IconData icon;
  final String texto;

  const _BotaoAcao({
    required this.icon,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: BotoesAcoes.azul,
          size: 21,
        ),
        const SizedBox(height: 3),
        Text(
          texto,
          style: const TextStyle(
            fontSize: 10,
            color: BotoesAcoes.azul,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
