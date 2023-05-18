import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            Image.asset("assets/images/hello.jpeg"),
            SizedBox(height: 10,),
            //Icon(Icons.person, size: 80, color: Colors.blueAccent,),

            const SizedBox(
              width: 270,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: 'Username or Email',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.blueAccent),
                  icon: Icon(Icons.email, color: Colors.blueAccent,),
                ),
              ),
            ),
            SizedBox(height: 20,),
            const SizedBox(
              width: 270,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.blueAccent),
                  icon: Icon(Icons.lock, color: Colors.blueAccent),
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
                width: 270,
                child: ElevatedButton(
                  child: const Text("Login"),
                  onPressed: () {

                  },)
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Don't have account?", style: TextStyle(color: Colors.black54, fontSize: 16),),

                GestureDetector(
                  onTap: () { Navigator.of(context).pushNamed("/signup"); },
                  child: InkWell(
                    child: Text("| Sign Up", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold)),

                  ),
                ),

              ],
            )



          ],
        ),
      ),
    );
  }
}
