import 'package:flutter/material.dart';

class FavoriteFood extends StatelessWidget {
  final List<Map<String, String>>? food;

  // Make the food parameter required
  const FavoriteFood({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Filter the favorite foods based on the 'isSaved' property
    final favoriteFoods =
        food?.where((item) => item['isFavorite'] == 'true').toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Food'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: favoriteFoods?.length ?? 0,
          itemBuilder: (context, index) {
            return _buildFoodItem(
              favoriteFoods![index]['img']!,
              favoriteFoods[index]['name']!,
            );
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
