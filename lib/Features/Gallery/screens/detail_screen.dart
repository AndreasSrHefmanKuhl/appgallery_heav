import 'package:app/features/gallery/models/gallery_item.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final GalleryItem item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(item.imagePath),
            const SizedBox(height: 8),
            Text('geschossen am:${item.imageDate}'),
            const SizedBox(height: 8),
            Text(item.imageDescription),
          ],
        ),
      ),
    );
  }
}
