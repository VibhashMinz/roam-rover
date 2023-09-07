import 'package:uuid/uuid.dart';

//since we need unique id and that will be auto generated we use Uuid
const uuid = Uuid();

class Place {
  Place({required this.title}) : id = uuid.v4();

  final String id;
  final String title;
}
