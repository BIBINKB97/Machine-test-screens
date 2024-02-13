import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';
import 'package:machine_test/screens/meetup/meetup_screen/widgets/carousel_slider.dart';
import 'package:machine_test/screens/meetup/meetup_screen/widgets/search_bar.dart';
import 'package:machine_test/utils.dart';

class MeetUpPage
    extends StatelessWidget {
  const MeetUpPage(
      {super.key});

  @override
  Widget build(
      BuildContext
          context) {
    return Scaffold(
      appBar:
          AppBar(
        title: CustomText(
          text: "Individual Meetup",
          fs: 24,
          fw: FontWeight.w500,

        ),
      ),
      body:
          ListView(
        children: [
          Container(
            height: 300,
            // decoration: BoxDecoration(color: kLightGrey),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSearchBar(),
                CustomCarousel(),
                
              ],
            ),
          )

        ],
      ),

     
    );
  }
}
