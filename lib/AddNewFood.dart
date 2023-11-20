import 'package:flutter/material.dart';

class AddNewFood extends StatefulWidget {
  final List<Map<String, String>> food;

  const AddNewFood({Key? key, required this.food}) : super(key: key);

  @override
  _AddNewFoodState createState() => _AddNewFoodState();
}

class _AddNewFoodState extends State<AddNewFood> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController imgController = TextEditingController();
  final TextEditingController recipeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Form for adding new food data
            Text(
              'Add New Food',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Food Name'),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: imgController,
              decoration: InputDecoration(labelText: 'Image URL'),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: recipeController,
              decoration: InputDecoration(labelText: 'Recipe URL'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add the new food data to the list
                setState(() {
                  widget.food.add({
                    'img': imgController.text,
                    'name': nameController.text,
                    'recipe': recipeController.text,
                    'isSaved': 'false', // Set isSaved to false for the new item
                  });

                  // Clear the text controllers
                  nameController.clear();
                  imgController.clear();
                  recipeController.clear();
                });
              },
              child: Text('Add Food'),
            ),
          ],
        ),
      ),
    );
  }
}
