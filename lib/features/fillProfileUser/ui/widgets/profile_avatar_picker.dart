import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ProfileAvatar extends StatefulWidget {
  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  File? _imageFile;
  late Box box;

  @override
  void initState() {
    super.initState();
    box = Hive.box('profileBox');
    loadImage();
  }

  void loadImage() {
    final path = box.get('profile_image');
    if (path != null) {
      setState(() {
        _imageFile = File(path);
      });
    }
  }

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);

    if (picked != null) {
      final appDir = await getApplicationDocumentsDirectory();
      final fileName = picked.name;
      final savedImage = await File(
        picked.path,
      ).copy('${appDir.path}/$fileName');

      await box.put('profile_image', savedImage.path);

      setState(() {
        _imageFile = savedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: _imageFile != null ? FileImage(_imageFile!) : null,
            child: _imageFile == null ? Icon(Icons.person, size: 60) : null,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: pickImage,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(Icons.edit, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
