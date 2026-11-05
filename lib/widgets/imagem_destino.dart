import 'package:flutter/material.dart';

class ImagemDestino extends StatelessWidget {
  const ImagemDestino({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'android/images/coliseu.jpg',
          width: double.infinity,
          height: 205,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 8,
          bottom: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Roma',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Text(
                'Coliseu',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
