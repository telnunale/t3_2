import 'package:flutter/material.dart';

class ExperienciaItem extends StatelessWidget {
  final String puesto;
  final String empresa;
  final String anos;
  final List<String> tareas;

  const ExperienciaItem({
    super.key,
    required this.puesto,
    required this.empresa,
    required this.anos,
    required this.tareas,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Puesto + Empresa + Años
          Text(
            "$puesto — $empresa  $anos",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          // Lista de tareas
          ...tareas.map(
            (t) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("• "),
                Expanded(child: Text(t)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
