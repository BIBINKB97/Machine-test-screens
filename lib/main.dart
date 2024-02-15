// import 'package:flutter/material.dart';
// import 'package:machine_test/screens/login_screen/login_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home:
//           LoginPage(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:machine_test/controller/provider/api_provider.dart';
import 'package:machine_test/controller/provider/login_provider.dart';
import 'package:machine_test/view/login_screen/login_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
///Uses the multiprovider to register all provider classes in the app
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LoginScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ApiProvider(),
        ),
      ],
      child:
          MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Promilo',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
        home: LoginPage(),
      ),
    );
  }
}
