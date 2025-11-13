import 'package:flutter/material.dart';
import 'package:t3_2/widgets/experiencia_item.dart';
import 'package:t3_2/widgets/habilidad_item.dart';
import 'package:t3_2/widgets/headersection.dart';
import 'package:t3_2/widgets/seccion_cv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
           padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          children: [
            const HeaderSection(),
            const SizedBox(height: 24),

            // EXPERIENCIA LABORAL
            SeccionCV(
              titulo: 'Experiencia Laboral',
              children: [
                ExperienciaItem(
                  puesto: 'Full Stack Developer',
                  empresa: 'Empresa ABC',
                  anos: '2020–2023',
                  tareas: [
                    'Desarrollo de aplicaciones móviles con Flutter',
                    'Implementación de API REST en Node.js',
                    'Mantenimiento de bases de datos SQL',
                  ],
                ),
                ExperienciaItem(
                  puesto: 'Frontend Developer',
                  empresa: 'Empresa XYZ',
                  anos: '2018–2020',
                  tareas: [
                    'Diseño de interfaces con React',
                    'Consumo de APIs REST',
                  ],
                ),
              ],
            ),

            // EDUCACIÓN
            SeccionCV(
              titulo: 'Educación',
              children: [
                Text(
                  '• Desarrollo de Aplicaciones Web - IES Muralla Romana',
                  //style: const TextStyle(fontSize: 12),
                ),
              ],
            ),

            // HABILIDADES
            SeccionCV(
              titulo: 'Habilidades',
              children: [
                HabilidadItem(habilidad: 'Flutter / Dart'),
                HabilidadItem(habilidad: 'JavaScript'),
                HabilidadItem(habilidad: 'SQL / Bases de datos'),
                HabilidadItem(habilidad: 'Git / Control de versiones'),
              ],              
            ),
            SeccionCV(
              titulo: 'Idiomas',
              children: [
                HabilidadItem(habilidad: 'Chino'),
                HabilidadItem(habilidad: 'Español'),
                HabilidadItem(habilidad: 'Gallego'),
                HabilidadItem(habilidad: 'Ingles'),
              ],              
            ),
          ],
        ),
      ),
    );
  }
}