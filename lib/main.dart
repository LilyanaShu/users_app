import 'package:flutter/material.dart';
import 'package:users_app/users/welcome.dart';
import 'package:users_app/users/signin.dart';
import 'package:users_app/users/signup_page.dart';
import 'package:users_app/utils/get_color.dart';

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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: GetColor.primarySeedColor,
            onPrimary: GetColor.primarySeedColor,
            surfaceTint: GetColor.secondarySeedColor,
        ),
        iconTheme: IconThemeData(
          color: GetColor.primarySeedColor
        ),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: GetColor.primarySeedColor,

          labelStyle: TextStyle(
            //backgroundColor: Colors.purple,
            color: GetColor.secondarySeedColor,
            fontSize: 16
          )
        ),

        textTheme: TextTheme(
          bodyMedium: TextStyle( //Welcome
            color: GetColor.primarySeedColor //Male/Female
          ),
          bodyLarge: TextStyle(
            color: GetColor.primarySeedColor //signin textfield entry
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: GetColor.primarySeedColor,
            foregroundColor: GetColor.whiteTextColor
          ),
        )
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/signin': (context) => const SignInPage(),
        '/signup' : (context) => const SignUpPage(),
      },

      /*
      home: Scaffold(
        //appBar: PreferredSize(),
        body: const WelcomePage() //WelcomePage(),
      )*/
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}



