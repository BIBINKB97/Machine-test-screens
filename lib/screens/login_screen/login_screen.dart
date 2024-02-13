import 'package:flutter/material.dart';
import 'package:machine_test/screens/login_screen/widgets/custom_text_form_field.dart';
import 'package:machine_test/screens/login_screen/widgets/text_style.dart';
import 'package:machine_test/screens/meetup/meetup_screen/meetup_page.dart';
import 'package:machine_test/utils.dart';

class LoginPage
    extends StatelessWidget {
  const LoginPage(
      {super.key});

  @override
  Widget build(
      BuildContext
          context) {
  

    return Scaffold(
      appBar:
          AppBar(
        title: CustomText(
          text: "promilo",
          fw: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body:
          Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomText(
              text: "Hi, Welcome Back!",
              clr: kdarkblue,
              fs: 24,
              fw: FontWeight.w600,
            ),
            Container(
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomText(
                      text: "Please Sign in to continue",
                      clr: kdarkblue,
                      fs: 20,
                      fw: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormField(
                    hintTxt: "Enter Email or Mob No.",
                  ),
                  Align(
                    alignment: Alignment(1, 0),
                    child: TextButton(
                        onPressed: () {},
                        child: CustomText(
                          text: "Sign In With OTP",
                          fs: 19,
                          fw: FontWeight.w600,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomText(
                      text: "Password",
                      clr: kdarkblue,
                      fs: 20,
                      fw: FontWeight.w500,
                    ),
                  ),
                  CustomTextFormField(
                    hintTxt: "Enter Password",
                    obscureText: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          CustomText(
                            text: "Remember Me",
                            clr: kgrey,
                            fs: 18,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: CustomText(
                          text: "Forget Password",
                          fs: 19,
                          fw: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MeetUpPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        color: kLightGrey,
                        border: Border.all(color: kblue, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: CustomText(
                        text: "Submit",
                        clr: kwhite,
                        fs: 20,
                        fw: FontWeight.bold,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomText(
                    text: "or",
                    fs: 18,
                    fw: FontWeight.w400,
                  ),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            SizedBox(
              height: 55,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Image(image: AssetImage("assets/images/google.png")),
                  Image(image: AssetImage("assets/images/LinkedIn.png")),
                  Image(image: AssetImage("assets/images/FB.png")),
                  Image(image: AssetImage("assets/images/Instagram.png")),
                  Image(image: AssetImage("assets/images/Whatsapp.png")),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Business User?",
                      fs: 18,
                      fw: FontWeight.w500,
                      clr: kgrey,
                    ),
                    CustomText(
                      text: "Login Here",
                      fs: 18,
                      fw: FontWeight.w600,
                      clr: kdeepblue,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomText(
                      text: "Don't have an account",
                      fs: 18,
                      fw: FontWeight.w500,
                      clr: kgrey,
                    ),
                    CustomText(
                      text: "Sign Up",
                      fs: 18,
                      fw: FontWeight.w600,
                      clr: kdeepblue,
                    ),
                  ],
                ),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(fontSize: 14, color: Colors.black),
                children: const [
                  TextSpan(
                    text: "By continuing, you agree to\nPromilo's ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextSpan(
                    text: "Terms of Use & Privacy Policy.",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
