import 'package:flutter/material.dart';
import 'package:roam_rover/views/add_new_place_screen.dart';

import '../widgets/places_widget.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Places"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const AddPlacesScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: const PlacesWidget(
        places: [],
      ),
    );
  }
}
