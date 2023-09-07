import 'package:flutter/material.dart';

import 'package:roam_rover/utils/themes.dart';
import 'package:roam_rover/views/places_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roam Rover',
      theme: theme,
      home: const PlacesScreen(),
    );
  }
}
