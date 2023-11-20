import 'package:flutter/material.dart';
import 'AllFood.dart';

class Home extends StatelessWidget {
  Home({Key? key});

  final List<Map<String, String>> food = [
    {
      'img':
          'https://hips.hearstapps.com/hmg-prod/images/taco-spaghetti2-1671200124.jpg?crop=0.9997727789138833xw:1xh;center,top&resize=980:*',
      'name': 'Taco Spaghetti',
      'recipe':
          "https://www.delish.com/cooking/recipe-ideas/a41788253/taco-spaghetti-recipe/",
      'isFavorite': 'true'
    },
    {
      'img':
          'https://hips.hearstapps.com/hmg-prod/images/white-chicken-chili-lead-64d3abcd56369.jpg?crop=0.669xw:1.00xh;0.195xw,0&resize=980:*',
      'name': 'White Chicken Chili',
      'recipe':
          "https://www.delish.com/cooking/recipe-ideas/a57946/easy-white-chicken-chili-recipe/",
      'isFavorite': 'false'
    },
    {
      'img':
          'https://hips.hearstapps.com/hmg-prod/images/chicken-tamale-pie-secondary-64da954b55019.jpg?crop=0.669xw:1.00xh;0.331xw,0&resize=980:*',
      'name': 'Chicken Tamale Pie',
      'recipe':
          "https://www.delish.com/cooking/recipe-ideas/recipes/a50031/chicken-tamale-pie-recipe/",
      'isFavorite': 'true'
    },
    {
      'img':
          'https://hips.hearstapps.com/hmg-prod/images/stuffed-peppers-lead-649c91e2c4e39.jpg?crop=0.6666666666666667xw:1xh;center,top&resize=980:*',
      'name': 'Classic Stuffed Peppers',
      'recipe':
          "https://www.delish.com/cooking/recipe-ideas/a23014857/classic-stuffed-peppers-recipe/",
      'isFavorite': 'false'
    },
  ];

  final List<Map<String, String>> buttons = [
    {
      'title': 'All Food',
      'routeTo': '/AllFood',
    },
    {
      'title': 'Recipes',
      'routeTo': '/Recipes',
    },
    {
      'title': 'Favorite Food',
      'routeTo': '/FavoriteFood',
    },
    {
      'title': 'Add New Food',
      'routeTo': '/AddNewFood',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beverages'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Screen'),
            const SizedBox(height: 30),
            ListView.builder(
              shrinkWrap: true,
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        buttons[index]['routeTo']!,
                        arguments: food, // Pass food as an argument
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Set button color to green
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(16.0), // Set border radius
                      ),
                      minimumSize: Size(150, 60), // Set button size
                    ),
                    child: Text(
                      buttons[index]['title']!,
                      style: TextStyle(fontSize: 18), // Set button text size
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
