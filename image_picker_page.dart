import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  File? image;
  final ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    final XFile? picked =
    await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      setState(() {
        image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('pick_image'.tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image != null
                ? Image.file(image!, height: 200)
                : Text('no_image'.tr),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: pickImage,
              child: Text('pick_image'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
