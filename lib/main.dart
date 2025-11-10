import 'package:flutter/material.dart';

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
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 156, 167, 224),
            letterSpacing: 1.2,
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 1.5,
            color: Colors.black87,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Column(
              children: [
                // HEADER con padding inferior añadido
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          "https://miro.medium.com/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg",
                        ),
                      ),

                      const SizedBox(width: 24),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Alex Telmo Núñez',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'Desarrollador Full Stack',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 320,
                            child: const Divider(height: 10, thickness: 1),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.email, size: 16, color: Colors.grey),
                              const SizedBox(width: 5),
                              Text(
                                'alex.telmo@gmail.com',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(width: 20),
                              const Icon(Icons.phone, size: 16, color: Colors.grey),
                              const SizedBox(width: 5),
                              Text(
                                '+34 555 123 456',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(width: 20),
                              const Icon(Icons.info, size: 16, color: Colors.grey),
                              const SizedBox(width: 5),
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

                // TEXTO INFERIOR CENTRADO
                SizedBox(
                  width: 600, // ancho controlado para centrar mejor
                  child: Text(
                    'Desarrollador Full Stack experimentado con 8 años en el ciclo de vida completo del desarrollo de software.  Busco aplicar mi experiencia para crear soluciones escalables y centradas en el usuario.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}