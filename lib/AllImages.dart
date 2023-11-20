import 'package:flutter/material.dart';

class AllImages extends StatelessWidget {
  final List<Map<String, String>> images;

  // Constructor to receive the images array
  const AllImages({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return _buildImage(images[index]['url']!, images[index]['size']!,
                images[index]['author']!);
          },
        ),
      ),
    );
  }

  Widget _buildImage(String imageUrl, String imageSize, String author) {
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
