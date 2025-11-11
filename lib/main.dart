import 'package:flutter/material.dart';
import 'package:t3_2/widgets/headersection.dart';
import 'package:t3_2/widgets/itemscv.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de secciones del CV (experiencia, educación, etc.)
    final List<Map<String, String>> cvItems = [
      {
        'titulo': 'Experiencia',
        'descripcion': 'Desarrollador Full Stack en varias empresas.',
      },
      {
        'titulo': 'Educación',
        'descripcion': 'Ingeniería en Sistemas, Universidad XYZ.',
      },
      {
        'titulo': 'Habilidades',
        'descripcion': 'Flutter, Dart, JavaScript, SQL.',
      },
      // Agrega más elementos aquí según sea necesario
    ];

    return MaterialApp(
      title: 'Curriculum Vitae Demo',
      theme: ThemeData(primarySwatch: Colors.indigo, fontFamily: 'Roboto'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: const EdgeInsets.all(24.0),
          children: [
            const HeaderSection(),
            const SizedBox(height: 24),
            ...cvItems.map(
              (item) => Itemcv(
                titulo: item['titulo']!,
                descripcion: item['descripcion']!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
