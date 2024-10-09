import 'package:app/Features/Gallery/screens/grid_screen.dart';
import 'package:app/Features/Profil/screens/profil_screen.dart';
import 'package:flutter/material.dart';

class GalleryHome extends StatefulWidget {
  const GalleryHome({super.key});

  @override
  State<GalleryHome> createState() => _GalleryHomeState();
}

class _GalleryHomeState extends State<GalleryHome> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    GridScreen(),
    ProfilScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyGallery'),
        actions: const [],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            _onItemTapped(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'Bilder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Über mich',
            ),
          ]),
    );
  }
}
