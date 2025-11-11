import 'package:flutter/material.dart';
import 'package:t3_2/widgets/contactinfo';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    // El widget Row original que contiene la imagen y la información
    return Stack(
      children: [
        // Fondo decorativo
        Container(
          height: 200,
          color: Colors.indigo.shade100,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/img/image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Alex Telmo Núñez',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: Colors.indigo,
                      ),
                    ),
                    Text(
                      'Desarrollador Full Stack',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    ContactInfo(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
