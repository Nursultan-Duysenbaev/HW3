import 'package:flutter/material.dart';

class Recipes extends StatelessWidget {
  final List<Map<String, String>> food;

  // Constructor to receive the food array
  const Recipes({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Recipes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            return _buildRecipeLink(food[index]['name']!);
          },
        ),
      ),
    );
  }

  Widget _buildRecipeLink(String foodName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          // Add navigation logic or any other action you want to perform
        },
        child: Text(
          foodName,
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
