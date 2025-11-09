import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp configura el tema y las rutas de la aplicación
    return MaterialApp(
      title: 'Curriculum Vitae Demo',
      // Definición del tema
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
        // Definición de estilos de texto globales
        textTheme: const TextTheme(
          // Estilo para títulos de sección
          headlineSmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 156, 167, 224),
            letterSpacing: 1.2,
          ),
          // Estilo para subtítulos y nombres
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          // Estilo base para el cuerpo del CV
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 1.5,
            color: Colors.black87,
          ),
        ),
      ),
      // La app usa un Scaffold con un Center para centrar el contenido.
      home: Scaffold(
        backgroundColor: Colors.white, // Fondo blanco para el CV
        // 1. Center: Centra el contenido principal (el Padding).
        body: Center(
          // 2. Padding: Aplicamos el padding inferior para "subir" el contenido
          // desde el centro de la pantalla.
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60.0), // Aumentado a 60.0
            child: Row(
              // **CLAVE DE CENTRADO:** Limita el Row a su tamaño mínimo para que el Center funcione.
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // --- 1. IMAGEN DE PERFIL ---
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://miro.medium.com/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg",
                  ),
                ),

                // Espacio de separación entre la imagen y el texto
                const SizedBox(width: 24),

                // --- 2. CONTENIDO DEL ENCABEZADO (COLUMNA) ---
                Column(
                  // Alinea el texto a la izquierda dentro de esta columna
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // También clave aquí
                  children: [
                    // a) Nombre (estilo más grande y prominente)
                    Text(
                      'Alex Telmo Núñez',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900, // Extra-bold
                        color: Theme.of(
                          context,
                        ).primaryColor, // Usa el color principal del tema (Índigo)
                      ),
                    ),

                    // b) Título/Rol Profesional (usa el estilo global titleLarge)
                    Text(
                      'Desarrollador Full Stack',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),

                    // c) Divisor visual (equivalente a <hr> en HTML)
                    SizedBox(
                      // Usamos un ancho fijo para el divisor dentro del Column
                      width: 320,
                      child: const Divider(height: 10, thickness: 1),
                    ),

                    // d) Datos de Contacto (Row para alineación horizontal)
                    Row(
                      // Alinea los elementos de contacto al inicio (izquierda)
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Correo Electrónico
                        const Icon(
                          Icons.email,
                          size: 16,
                          color: Colors.grey,
                        ), // Ícono
                        const SizedBox(
                          width: 5,
                        ), // Espaciado horizontal fijo de 5 píxeles
                        Text(
                          'alex.telmo@gmail.com',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ), // Texto

                        const SizedBox(
                          width: 20,
                        ), // Espacio más grande entre Correo y Teléfono
                        // Teléfono
                        const Icon(
                          Icons.phone,
                          size: 16,
                          color: Colors.grey,
                        ), // Ícono
                        const SizedBox(
                          width: 5,
                        ), // Espaciado horizontal fijo de 5 píxeles
                        Text(
                          '+34 555 123 456',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        // Texto
                        const SizedBox(width: 20),
                        const Icon(
                          Icons.info,
                          size: 16,
                          color: Colors.grey,
                        ), // Ícono

                        const SizedBox(
                          width: 5,
                        ), // Espaciado horizontal fijo de 5 píxeles
                        Text(
                          'url linkedin',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
