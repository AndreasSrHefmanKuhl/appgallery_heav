import 'package:app/features/gallery/models/gallery_item.dart';
import 'package:app/features/gallery/screens/detail_screen.dart';
import 'package:app/features/gallery/widgets/shared/Widget/neumorphic_button.dart';
import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    super.key,
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: NeumorphicButton(
        bottomRightShadowSpreadRadius: 2,
        bottomRightShadowBlurRadius: 2,
        borderWidth: 5,
        width: 120,
        height: 120,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        bottomRightShadowColor: const Color.fromARGB(236, 247, 24, 24),
        topLeftShadowColor: const Color.fromARGB(255, 74, 240, 19),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(item: item),
            ),
          );
        },
        child: Column(
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(item.imagePath,
                    fit: BoxFit.cover, filterQuality: FilterQuality.high)),
            Text(item.imageTitle),
          ],
        ),
      ),
    );
  }
}
