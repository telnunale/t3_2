import 'package:flutter/material.dart';

class Itemcv extends StatelessWidget {
  final String titulo;
  final String descripcion; // Debe coincidir con el parámetro del constructor

  const Itemcv({
    super.key,
    required this.titulo,
    required this.descripcion, // Corregido
  });

  @override
  Widget build(BuildContext context) {
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 4),
        Text(descripcion),
        const Divider(),
        const SizedBox(height: 8),
      ],
    );
  }
}