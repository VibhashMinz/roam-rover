import 'package:flutter/material.dart';

class AddPlacesScreen extends StatefulWidget {
  const AddPlacesScreen({super.key});

  @override
  State<AddPlacesScreen> createState() {
    return _AddPlacesScreen();
  }
}

class _AddPlacesScreen extends State<AddPlacesScreen> {
  final TextEditingController _titleController = TextEditingController();
  final FocusNode _titleFocusNode = FocusNode();

  @override
  void dispose() {
    _titleController.dispose();
    _titleFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
              controller: _titleController,
              focusNode: _titleFocusNode,
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
