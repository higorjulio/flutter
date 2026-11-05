import 'package:flutter/material.dart';
import '../models/usuario.dart';

class PerfilUsuario extends StatelessWidget {
  final Usuario usuario;

  const PerfilUsuario({
    super.key,
    required this.usuario,
  });

  static const azul = Color(0xFF2196F3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: azul,
        elevation: 2,
        title: const Text('Perfil do Usuário'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),

            // FOTO DO PERFIL
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            // NOME
            Text(
              usuario.nome,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            // IDADE
            Text(
              '${usuario.idade} anos',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),

            // LOCALIZAÇÃO
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: azul,
                  size: 19,
                ),
                Text(
                  '${usuario.cidade}, ${usuario.estado}',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // INFORMAÇÕES
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sobre mim',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: azul,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    usuario.descricao,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Interesses',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: azul,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: usuario.interesses.map((interesse) {
                      return Chip(
                        label: Text(interesse),
                        backgroundColor: const Color(0xFFE3F2FD),
                        labelStyle: const TextStyle(
                          color: azul,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
