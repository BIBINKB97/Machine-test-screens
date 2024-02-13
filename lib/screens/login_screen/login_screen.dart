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
                    decoration: InputDecoration(hintText: "Enter Email or Mob No.", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
                  ),
                  TextButton(onPressed: () {}, child: Text("Sign In With OTP")),
                  Text("Password"),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
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
                    decoration: BoxDecoration(color: const Color.fromARGB(255, 207, 207, 207), border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(15)),
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
              children: [
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
            )
          ],
        ),
      ),
    );
  }
}
