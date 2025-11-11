import 'package:flutter/material.dart';
import 'contact_item.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;
    double titleSize = isMobile ? 24 : 32;
    double subtitleSize = isMobile ? 14 : 16;

    return Column(
      crossAxisAlignment: isMobile
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Alex Telmo Núñez',
            textAlign: isMobile ? TextAlign.center : TextAlign.start,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.w900,
              color: Colors.indigo,
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Desarrollador Full Stack',
            textAlign: isMobile ? TextAlign.center : TextAlign.start,
            style: TextStyle(
              fontSize: subtitleSize,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 16,
          runSpacing: 4,
          alignment: isMobile ? WrapAlignment.center : WrapAlignment.start,
          children: const [
            ContactItem(icon: Icons.email, text: 'alex.telmo@gmail.com'),
            ContactItem(icon: Icons.phone, text: '+34 555 123 456'),
            ContactItem(icon: Icons.info, text: 'url linkedin'),
          ],
        ),
      ],
    );
  }
}
