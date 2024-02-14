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
              children: const [
                CustomSearchBar(),
                CustomCarousel(),
              ],
            ),
          ),
          Container(
            height: 250,
            margin: EdgeInsets.symmetric(horizontal: 20),
            // decoration: BoxDecoration(color: kLightGrey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Trending Popular People",
                  fs: 18,
                  fw: FontWeight.w500,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "Author"),
                            CustomText(text: "1028 Meetups")
                          ],
                        )
                      ],
                    ),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 30,
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 25,
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 20,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 20,
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 30,
                              child: CircleAvatar(
                                backgroundColor: Colors.yellow,
                                radius: 15,
                                child: Icon(Icons.person, color: Colors.black),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              left: 40,
                              child: CircleAvatar(
                                backgroundColor: Colors.purple,
                                radius: 10,
                                child: Icon(Icons.person, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  
                  ]),
                )
              ],
            ),
          )
        ],
      ),
        
        
      

     
    );
  }
}
