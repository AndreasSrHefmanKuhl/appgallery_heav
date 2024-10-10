import 'package:app/features/gallery/models/gallery_item.dart';
import 'package:app/features/gallery/widgets/detail_layout.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final GalleryItem item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.green,
          leading: IconButton(
            iconSize: 10,
            icon: const Icon(Icons.arrow_back, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('MyGallery'),
          actions: const [],
        ),
        body: DetailLayout(item: item),
      ),
    );
  }
}
