import 'package:flutter/material.dart';
import 'package:roam_rover/models/place_model.dart';

class PlacesWidget extends StatelessWidget {
  const PlacesWidget({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Text('No places has been added yet');
    }
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: (_, index) => ListTile(
              title: Text(
                places[index].title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            ));
  }
}
