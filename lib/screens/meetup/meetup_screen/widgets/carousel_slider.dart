import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';
import 'package:machine_test/screens/meetup/meetup_screen/widgets/carousel_image_container.dart';
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
  int _currentIndex =
      0;
  @override
  Widget build(
      BuildContext
          context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: const [
                CarouselImgContainer(image: "assets/images/meet1.jpg"),
                CarouselImgContainer(image: "assets/images/meet2.jpg"),
                CarouselImgContainer(image: "assets/images/meet3.jpg"),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Positioned(
                bottom: 20,
                left: 30,
                child: CustomText(
                  text: "Popular Meetups\nin India",
                  clr: kwhite,
                  fs: 20,
                  fw: FontWeight.w600,
                )),
          ],
        ),
    
        SizedBox(height: 5),
        DotsIndicator(
          position: _currentIndex,
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
    );
  }
}
