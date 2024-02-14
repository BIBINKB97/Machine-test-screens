import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';
import 'package:machine_test/screens/meetup/meetup_screen/widgets/carousel_slider.dart';
import 'package:machine_test/screens/meetup/meetup_screen/widgets/custom_card.dart';
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
            height: 290,
            // decoration: BoxDecoration(color: kLightGrey),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomSearchBar(),
                CustomCarousel(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomText(
              text: "Trending Popular People",
              fs: 18,
              fw: FontWeight.w500,
            ),
          ),
        
          CustomCard()
             
         
          
        
        ])

     
    );
  }
}
