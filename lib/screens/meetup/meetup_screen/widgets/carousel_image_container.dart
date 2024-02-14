import 'package:flutter/material.dart';

class CarouselImgContainer
    extends StatelessWidget {
  final String
      image;
  const CarouselImgContainer(
      {super.key,
      required this.image});

  @override
  Widget build(
      BuildContext
          context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}
