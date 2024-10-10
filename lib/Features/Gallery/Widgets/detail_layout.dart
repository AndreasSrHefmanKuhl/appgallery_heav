import 'package:app/features/gallery/models/gallery_item.dart';
import 'package:app/features/gallery/widgets/shared/Widget/neumorphic_button.dart';
import 'package:flutter/material.dart';

class DetailLayout extends StatelessWidget {
  const DetailLayout({
    super.key,
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 400,
                width: 500,
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 8),
            Text('geschossen am:${item.imageDate}',
                style: const TextStyle(
                  fontSize: 12,
                )),
            const SizedBox(height: 20),
            Text(
              item.imageDescription,
              style: const TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NeumorphicButton(
                  width: 20,
                  height: 25,
                  bottomRightShadowColor: Colors.greenAccent,
                  topLeftShadowColor: Colors.greenAccent,
                  backgroundColor: const Color.fromARGB(137, 154, 195, 155),
                  child: const Icon(Icons.arrow_back),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
