import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';

class ProfilePicWidget extends StatefulWidget {
  const ProfilePicWidget({Key? key}) : super(key: key);

  @override
  State<ProfilePicWidget> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePicWidget> {
  Uint8List? _image;

  void selectImage()async{
    Uint8List img= await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:70),
          child: Stack(
            children: [
              _image!=null?
              CircleAvatar(
                radius: 64,
                backgroundImage: MemoryImage(_image!),
              )
                  :
              CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.S171c9HYsokHyCPs9brbPwHaGP?rs=1&pid=ImgDetMain"),
              ),
              Positioned(child: IconButton(
                onPressed: selectImage,
                icon: Icon(Icons.add_a_photo),
              ),
                bottom: -10,
                left: 80,
              )
            ],
          ),
        ),
      ],
    );
  }
}
