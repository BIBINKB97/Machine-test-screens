import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/utils.dart';

class CustomCarousel
    extends StatefulWidget {
  const CustomCarousel(
      {super.key});

  @override
  State<CustomCarousel>
      createState() =>
          _CustomCarouselState();
}

class _CustomCarouselState
    extends State<
        CustomCarousel> {
  @override
  Widget build(
      BuildContext
          context) {
    return Center(
      child:
          Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(color: kgrey, borderRadius: BorderRadius.circular(15)),
                child: Center(child: Text('Slide 1')),
              ),
              Container(
                decoration: BoxDecoration(color: kLightGrey, borderRadius: BorderRadius.circular(15)),
                child: Center(child: Text('Slide 2')),
              ),
              Container(
                decoration: BoxDecoration(color: kblue, borderRadius: BorderRadius.circular(15)),
                child: Center(child: Text('Slide 3')),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1.0,
            ),
          ),
          SizedBox(height: 5),
          DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(
              color: kgrey,
              activeColor: kblack,
              size: Size.square(8.0),
              activeSize: Size.square(8.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}