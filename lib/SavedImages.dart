import 'package:flutter/material.dart';

class SavedImages extends StatelessWidget {
  final List<Map<String, String>> savedImages;

  // Constructor to receive the saved_images array
  const SavedImages({Key? key, required this.savedImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Images'),
      ),
      body: ListView.builder(
        itemCount: savedImages.length,
        itemBuilder: (context, index) {
          return _buildSavedImage(savedImages[index]['url']!,
              savedImages[index]['size']!, savedImages[index]['author']!);
        },
      ),
    );
  }

  Widget _buildSavedImage(String imageUrl, String imageSize, String author) {
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
            Text('Size: $imageSize'),
            Text('Author: $author'),
          ],
        ),
      ),
    );
  }
}
