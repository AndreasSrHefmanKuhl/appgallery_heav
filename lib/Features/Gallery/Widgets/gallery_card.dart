import 'package:app/features/gallery/models/gallery_item.dart';
import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
    super.key,
    required this.item,
  });

  final GalleryItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                )),
          ),
          Text(item.imageTitle)
        ],
      ),
    );
  }
}
