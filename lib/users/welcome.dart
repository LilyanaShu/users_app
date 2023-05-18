import 'package:flutter/material.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            Image.asset("assets/images/hello.jpeg"),
            const SizedBox(height: 20,),

            const Center(
              child: Text("Welcome!", style: TextStyle(fontSize: 30,
                  fontFamily: 'CormorantGaramond-Bold'),),
            ),
            const SizedBox(height: 20,),
            const Center(
              child: Text("This is an application for language exchange. You can find people who speak different language and learn together"
                , style: TextStyle(fontSize: 20,
                  fontFamily: 'CormorantGaramond-Medium'),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/signin");
                },
                child: const Text("Click to Sign In"))
          ],
        ),
      ),
    );
  }
}
