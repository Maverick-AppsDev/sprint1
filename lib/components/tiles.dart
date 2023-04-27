import 'package:flutter/material.dart';

class MyTiles extends StatelessWidget {
  final String imagePath;
  final void Function()? onTap;
  const MyTiles({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Colors.white),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
