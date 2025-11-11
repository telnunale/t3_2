import 'package:flutter/material.dart';

class HabilidadItem extends StatelessWidget {
  final String habilidad;

  const HabilidadItem({super.key, required this.habilidad});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        children: [
          const Text("• "),
          Text(habilidad),
        ],
      ),
    );
  }
}