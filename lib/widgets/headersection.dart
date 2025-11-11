import 'package:flutter/material.dart';
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
            Container(
              height: isMobile ? 220 : 200,
              color: Colors.indigo.shade100,
            ),
            Padding(
              padding: EdgeInsets.all(padding),
              child: isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        HeaderImage(),
                        SizedBox(height: 14),
                        HeaderInfo(),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        HeaderImage(),
                        SizedBox(width: 24),
                        Expanded(child: HeaderInfo()),
                      ],
                    ),
            ),
          ],
        );
      },
    );
  }
}
