// import 'dart:io';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final color = Theme.of(context).colorScheme.primary;
    return buildImage();
  }

  Widget buildImage() {
    final imaged = NetworkImage("https://i.ibb.co/sR127ZJ/16-2.png");
    return ClipOval(
        child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: imaged,
        fit: BoxFit.cover,
        width: 100,
        height: 100,
        child: InkWell(
          onTap: onClicked,
        ),
      ),
    ));
  }
}
