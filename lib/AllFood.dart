import 'package:flutter/material.dart';

class AllFood extends StatelessWidget {
  final List<Map<String, String>> food;

  const AllFood({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Food Length: ${food.length}');
    print('Food Data: $food');

    return Scaffold(
      appBar: AppBar(
        title: Text('All Food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            print('Building item for index $index');
            return _buildFoodItem(food[index]['img']!, food[index]['name']!);
          },
        ),
      ),
    );
  }

  Widget _buildFoodItem(String imageUrl, String foodName) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: $foodName',
              style: TextStyle(
                color: Colors.white, // Set text color to red
                fontWeight: FontWeight.bold, // Set text to bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
