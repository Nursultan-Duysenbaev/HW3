import 'package:flutter/material.dart';

class AddNewImage extends StatefulWidget {
  const AddNewImage({Key? key}) : super(key: key);

  @override
  _AddNewImageState createState() => _AddNewImageState();
}

class _AddNewImageState extends State<AddNewImage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _urlController = TextEditingController();
  TextEditingController _sizeController = TextEditingController();
  TextEditingController _authorController = TextEditingController();
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _urlController,
                decoration: InputDecoration(labelText: 'Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the image URL';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _sizeController,
                decoration: InputDecoration(labelText: 'Image Size'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the image size';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _authorController,
                decoration: InputDecoration(labelText: 'Author'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the author';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isSaved,
                    onChanged: (value) {
                      setState(() {
                        _isSaved = value ?? false;
                      });
                    },
                  ),
                  Text('Save Image'),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Add new image to the home page's images array
                    Navigator.pop(context, {
                      'url': _urlController.text,
                      'size': _sizeController.text,
                      'author': _authorController.text,
                      'isSaved': _isSaved.toString(),
                    });
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _urlController.dispose();
    _sizeController.dispose();
    _authorController.dispose();
    super.dispose();
  }
}
