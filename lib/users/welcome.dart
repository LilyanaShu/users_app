import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            Image.asset("assets/images/hello.jpeg"),
            SizedBox(height: 20,),

            Center(
              child: Text("Welcome!", style: TextStyle(fontSize: 30,
                  fontFamily: 'CormorantGaramond-Bold'),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("This is an application for language exchange. You can find people who speak different language and learn together.\n\nHave Fun"
                , style: TextStyle(fontSize: 20,
                  fontFamily: 'CormorantGaramond-Medium'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/signin");
                },
                child: Text("Click to Sign In"))
          ],
        ),
      ),
    );
  }
}
