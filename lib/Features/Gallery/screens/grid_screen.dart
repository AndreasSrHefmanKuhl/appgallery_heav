import 'package:app/features/gallery/repository/Widgets/gallery_card.dart';
import 'package:app/features/gallery/repository/gallery_data.dart';
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
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: galleryData.length,
          itemBuilder: (context, index) {
            final item = galleryData[index];
            return GalleryCard(item: item);
          }),
    );
  }
}
