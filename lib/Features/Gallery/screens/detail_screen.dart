import 'package:app/features/gallery/models/gallery_item.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final GalleryItem item;
  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            iconSize: 10,
            icon: const Icon(Icons.arrow_back, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('MyGallery'),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(item.imagePath, fit: BoxFit.cover)),
                const SizedBox(height: 8),
                Text('geschossen am:${item.imageDate}',
                    style: const TextStyle(
                      fontSize: 12,
                    )),
                const SizedBox(height: 20),
                Text(
                  item.imageDescription,
                  style: const TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(
                      mini: true,
                      child: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
