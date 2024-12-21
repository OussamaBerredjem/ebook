import 'package:ebook/models/screen.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key});

  @override
  Widget build(BuildContext context) {
    Screen screen = Screen(context: context);
    return Container(
      height: screen.height(20),
      width: screen.width(35),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.purple.shade100,
      ),
    );
  }
}
