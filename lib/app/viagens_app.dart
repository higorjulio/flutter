import 'package:flutter/material.dart';
import '../screens/viagens_page.dart';

class ViagensApp extends StatelessWidget {
  const ViagensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Viagens',
      theme: ThemeData(
        primaryColor: const Color(0xFF2196F3),
        useMaterial3: false,
      ),
      home: const ViagensPage(),
    );
  }
}
