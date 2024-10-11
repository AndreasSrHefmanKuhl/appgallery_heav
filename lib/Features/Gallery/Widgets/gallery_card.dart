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
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(item.imagePath, fit: BoxFit.cover)),
          Text(item.imageTitle),
        ]),
      ),
    );
  }
}
