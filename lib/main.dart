import 'package:flutter/material.dart';
import 'package:users_app/users/welcome.dart';
import 'package:users_app/users/signin.dart';
import 'package:users_app/users/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Users',
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/signin': (context) => const SignInPage(),
        '/signup' : (context) => const SignUpPage(),
      },

//     home: const PageOne(),
      /*
      
      home: Scaffold(
        //appBar: PreferredSize(),
        body: const WelcomePage() //WelcomePage(),
      )*/
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



