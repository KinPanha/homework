// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

XFile? images;

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
        actions: [
          IconButton(
              onPressed: () async {
                await getimags();
              },
              icon: const Icon(Icons.camera))
        ],
      ),
      body: Center(
        child: images == null
            ? Image.network(
                'https://media.wired.com/photos/5b64db3717c26f0496f4d62d/master/w_1920,c_limit/Canon-G7XII-SOURCE-Canon.jpg')
            : Image.file(File(images!.path)),
      ),
    );
  }

  Future<XFile?> getimags() async {
    XFile? camera = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      images = camera;
    });
    return camera;
  }
}
