import 'package:flutter/material.dart';
import 'package:t3_2/widgets/contactinfo';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    // El widget Row original que contiene la imagen y la información
    return Container(   
      // color: Colors.blue,  
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img/image.png'),
                fit: BoxFit.cover,
              ),
            ),
          
          ),

          const SizedBox(width: 24),
          // Columna de información (nombre, título, contacto)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Alex Telmo Núñez',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                  // Usamos Theme.of(context) que está disponible aquí
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
              // Widget separado para la información de contacto
              const ContactInfo(),
            ],
          ),
        ],
      ),
    );
  }
}
