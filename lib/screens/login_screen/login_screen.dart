import 'package:flutter/material.dart';

class LoginPage
    extends StatefulWidget {
  const LoginPage(
      {super.key});

  @override
  State<LoginPage>
      createState() =>
          _LoginPageState();
}

class _LoginPageState
    extends State<
        LoginPage> {
  bool
      rememberMe =
      false;

  @override
  Widget build(
      BuildContext
          context) {
    return Scaffold(
      appBar:
          AppBar(
        title: Text("promilo"),
        centerTitle: true,
      ),
      body:
          Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Text("Hi, Welcome Back!"),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("please Sign in to continue"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Email or Mob No.",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("Sign In With OTP")),
                  Text("Password"),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (newValue) {
                          setState(() {
                            rememberMe = newValue!;
                          });
                        },
                      ),
                      Text("Remember Me"),
                      TextButton(onPressed: () {}, child: Text("Forget Password")),
                    ],
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 207, 207, 207),
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    )),
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
                  child: Text("or"),
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
                    Text("Business User?"),
                    Text("Login Here")
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Don't have an account"),
                    Text("Sign Up")
                  ],
                ),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: Colors.black),
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
