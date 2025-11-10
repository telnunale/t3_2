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
    return MaterialApp(
      title: 'Curriculum Vitae Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 156, 167, 224),
            letterSpacing: 1.2,
          ),
          titleLarge: TextStyle(
            fontSize: 0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            height: 1.5,
            color: Colors.black87,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            // Padding inferior original
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Column(
              children: [
                // 1. Sección del encabezado
                const Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: HeaderSection(),
                ),
                // 2. Sección del texto inferior
                SizedBox(
                  //width: 600, // ancho controlado para centrar mejor
                  child: Text(
                    'Desarrollador Full Stack experimentado con 8 años en el ciclo de vida completo del desarrollo de software. ' +
                    'Busco aplicar mi experiencia para crear soluciones escalables y centradas en el usuario.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Itemcv(titulo: "Habilidades", descripcion: "texto")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
