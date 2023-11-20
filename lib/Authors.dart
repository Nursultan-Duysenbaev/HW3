import 'package:flutter/material.dart';

class Authors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> authors =
        ModalRoute.of(context)!.settings.arguments as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Authors'),
      ),
      body: ListView.builder(
        itemCount: authors.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(authors[index]),
          );
        },
      ),
    );
  }
}
