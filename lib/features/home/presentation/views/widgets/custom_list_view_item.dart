import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      width: 150,
      child: AspectRatio(
        aspectRatio: 2.8/4,
        child: Container(
          width: 150,
          height: MediaQuery.of(context).size.height*0.25,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:const DecorationImage(
              fit: BoxFit.fill,
            image:AssetImage("assets/images/Poster.png"))),
        ),
      ),
    );
  }
}