import 'package:app/features/gallery/screens/detail_screen.dart';
import 'package:app/features/gallery/widgets/gallery_card.dart';
import 'package:app/features/gallery/models/gallery_item.dart';

import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: galleryData.length,
          itemBuilder: (context, int index) {
            final item = galleryData[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(item: item),
                  ),
                );
              },
              child: GalleryCard(
                item: item,
              ),
            );
          }),
    );
  }
}
