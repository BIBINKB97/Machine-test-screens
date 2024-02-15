import 'package:flutter/material.dart';
import 'package:machine_test/model/user_model.dart';
import 'package:machine_test/controller/provider/api_provider.dart';
import 'package:machine_test/controller/provider/login_provider.dart';
import 'package:machine_test/view/login_screen/widgets/custom_button.dart';
import 'package:machine_test/view/login_screen/widgets/custom_text_form_field.dart';
import 'package:machine_test/view/widgets/text_style.dart';
import 'package:machine_test/utils.dart';
import 'package:provider/provider.dart';


class LoginPage
    extends StatelessWidget {
  const LoginPage(
      {super.key});



  @override
  Widget build(
      BuildContext
          context) {
    final apiProvider =
        Provider.of<ApiProvider>(context);
    final loginProvider =
        Provider.of<LoginScreenProvider>(context);
    
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
          SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  CustomText(
                    text: "Hi, Welcome Back!",
                    clr: kdarkblue,
                    fs: 24,
                    fw: FontWeight.w600,
                  ),
                  kHeight40,
                  Column(
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
                        errortxt: "Invalid Mail ID",
                        controller: loginProvider.usernameController,
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
                        errortxt: "Incorrect Password",
                        controller: loginProvider.passwordController,
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
                      CustomButton(
                        onPressed: loginProvider.isButtonEnabled
                            ? () {
                                apiProvider.postData(
                                    UserModel(
                                      username: loginProvider.usernameController.text,
                                      password: loginProvider.passwordController.text,
                                    ),
                                    context);
                                loginProvider.usernameController.clear();
                                loginProvider.passwordController.clear();
                              }
                            : null,
                        borderClr: Provider.of<LoginScreenProvider>(context).isButtonEnabled ? kblue : kwhite,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
