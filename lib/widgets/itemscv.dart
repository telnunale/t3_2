import 'package:flutter/material.dart';

class Itemcv extends StatelessWidget {
  final String titulo;
  final String descripcion;

  const Itemcv({required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Título de ejemplo",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider(thickness: 1),
      ],
    );
  }
}
