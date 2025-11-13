import 'package:flutter/material.dart';
import 'package:t3_2/widgets/header_icon_button.dart';
import 'header_image.dart';
import 'header_info.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        bool isMobile = screenWidth < 600;
        double padding = screenWidth * 0.04;

        return Stack(
          children: [
            // Fondo + contenido principal centrado
            Container(
              width: double.infinity,
              color: Colors.indigo.shade100,
              padding: EdgeInsets.all(padding),
              child: isMobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        HeaderImage(),
                        SizedBox(height: 14),
                        HeaderInfo(),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        HeaderImage(),
                        SizedBox(width: 24),
                        Expanded(child: HeaderInfo()),
                      ],
                    ),
            ),

            const Positioned(
              top: 12,
              right: 12,
              child: HeaderIconButton(
                icon: Icons.thumb_up,
                message: 'Has pulsado el botón del header',
              ),
            ),
          ],
        );
      },
    );
  }
}
