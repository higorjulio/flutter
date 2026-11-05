import 'package:flutter/material.dart';

import '../models/usuario.dart';
import '../screens/perfil_usuario.dart';

class PessoasEncontradas extends StatelessWidget {
  const PessoasEncontradas({super.key});

  static const azul = Color(0xFF2196F3);

  // Usuários fictícios para testar o aplicativo
  static const List<Usuario> usuarios = [
    Usuario(
      nome: 'Ana Silva',
      idade: 24,
      cidade: 'São Paulo',
      estado: 'SP',
      descricao: 'Adoro viajar, conhecer novas culturas e explorar '
          'lugares históricos. Roma está na minha lista de '
          'destinos favoritos!',
      interesses: [
        'Viagens',
        'Fotografia',
        'História',
        'Cultura',
      ],
    ),
    Usuario(
      nome: 'Pedro Santos',
      idade: 28,
      cidade: 'Rio de Janeiro',
      estado: 'RJ',
      descricao: 'Sou apaixonado por aventuras, gastronomia e '
          'conhecer pessoas novas pelo mundo.',
      interesses: [
        'Aventura',
        'Gastronomia',
        'Praias',
      ],
    ),
    Usuario(
      nome: 'Mariana Costa',
      idade: 22,
      cidade: 'Curitiba',
      estado: 'PR',
      descricao: 'Gosto de conhecer lugares diferentes, visitar '
          'museus e registrar minhas viagens.',
      interesses: [
        'Museus',
        'Fotografia',
        'Arte',
      ],
    ),
    Usuario(
      nome: 'Lucas Oliveira',
      idade: 26,
      cidade: 'Belo Horizonte',
      estado: 'MG',
      descricao: 'Viajante curioso que gosta de história, arquitetura '
          'e novas experiências.',
      interesses: [
        'Arquitetura',
        'História',
        'Viagens',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pessoas Encontradas',
                style: TextStyle(
                  color: azul,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_alt,
                  size: 18,
                  color: azul,
                ),
                label: const Text(
                  'Filtrar',
                  style: TextStyle(
                    color: azul,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 75,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: usuarios.length,
            itemBuilder: (context, index) {
              final usuario = usuarios[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PerfilUsuario(usuario: usuario),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
