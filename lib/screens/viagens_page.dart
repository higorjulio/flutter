import 'package:flutter/material.dart';

import '../widgets/imagem_destino.dart';
import '../widgets/botoes_acoes.dart';
import '../widgets/descricao_destino.dart';
import '../widgets/pessoas_encontradas.dart';

class ViagensPage extends StatelessWidget {
  const ViagensPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2196F3),
        elevation: 2,
        title: const Text(
          'Viagens',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ImagemDestino(),
            BotoesAcoes(),
            DescricaoDestino(),
            PessoasEncontradas(),
          ],
        ),
      ),
    );
  }
}
