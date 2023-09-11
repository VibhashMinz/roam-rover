import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roam_rover/models/place_model.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);
}
