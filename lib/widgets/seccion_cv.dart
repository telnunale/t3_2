import 'package:flutter/material.dart';

class SeccionCV extends StatelessWidget {
  final String titulo;
  final List<Widget> children;

  const SeccionCV({
    super.key,
    required this.titulo,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),
        ...children,        
        const SizedBox(height: 20),
        const Divider(),
      ],
    );
  }
}
