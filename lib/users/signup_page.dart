import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var gender = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          Stack(
            children: [
              Image.asset("assets/images/hello.jpeg",),

              //Icon(Icons.person_rounded, size: 100, color: Colors.blueAccent,),
            ],
          ),

          SizedBox(height: 20,),
          Form(
              child: Column(
                children: [
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please entry your email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.blueAccent,),
                      label: Text("Your Name"),
                      labelStyle: TextStyle(fontSize: 16, color: Colors.blueAccent),

                    ),
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please entry your email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.email, color: Colors.blueAccent,),
                      label: Text("Email address"),
                      labelStyle: TextStyle(fontSize: 16, color: Colors.blueAccent),

                    ),
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    obscureText: true,
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please entry your email address';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.blueAccent,),
                      label: Text("Password"),
                      labelStyle: TextStyle(fontSize: 16, color: Colors.blueAccent),

                    ),
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Icon(Icons.person_pin_sharp, color: Colors.blueAccent,),
                      Radio(value: 'male', groupValue: gender,
                          onChanged: (String? val){
                            setState(() {
                              if (val != null) {
                                gender = val;
                              }
                            });
                          }),
                      Text("Male"),
                      SizedBox(width: 30,),
                      Radio(value: 'female', groupValue: gender,
                          onChanged: (String? val){
                            setState(() {
                              if (val != null) {
                                gender = val;
                              }
                            });
                          }),
                      Text("Female"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.calendar_month_rounded, color: Colors.blueAccent,),
                      SizedBox(width: 15,),
                      ElevatedButton(onPressed: (){}, child:
                      Text("Select your  birth date"),
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent)),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),

                ],
              )
          ),
          ElevatedButton(onPressed: (){}, child:
          Text("Sign Up"),

          )
        ],
      ),
    );
  }
}
