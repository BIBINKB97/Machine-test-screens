import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';

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
      body: Container(
        
      )


     
    );
  }
}
