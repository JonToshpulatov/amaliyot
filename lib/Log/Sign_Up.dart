import 'package:amaliyot/Home/HomePage.dart';
import 'package:amaliyot/Log/Sign_In.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);
  static final String id = "Sign_Up";

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Center(
            child: Text(
              "Real Homes",
              style: TextStyle(
                  fontSize: 25, color: Colors.purple, fontFamily: 'Billabong'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Unlock the full experience of rentals",
            style: TextStyle(color: Colors.purple, fontSize: 18),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            children: [
              inputText(const Icon(Icons.person_outline,color: Colors.purple), "Name"),
              SizedBox(height: 12,),
              inputText(const Icon(Icons.phone_android_outlined,color: Colors.purple), "Phone number"),
              SizedBox(height: 12,),
              inputText(const Icon(Icons.mail_outline,color: Colors.purple), "Email Address"),
              SizedBox(height: 12,),
              inputText(const Icon(Icons.lock_outlined,color: Colors.purple), "Create Password"),
              SizedBox(height: 12,),
              inputText(const Icon(Icons.lock_outline,color: Colors.purple), "Confirm Password"),
              SizedBox(height: 80,),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(left: 60,right: 60),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    color: Colors.purple,
                  ),
                  child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white,fontSize: 20),),)
                ),
                onTap: (){Navigator.pushNamed(context, HomePage.id);},
              ),
              SizedBox(height: 15,),
              GestureDetector(child: Text("LOG IN",style: TextStyle(color: Colors.purple),), onTap: (){Navigator.pushNamed(context, Sign_In.id);},),

            ],
          ),
        ],
      ),
    );
  }
}
Widget inputText(Icon a, String b) {
  return Container(
    margin: EdgeInsets.only(left: 50, right: 50),
    child: TextField(
        style: new TextStyle(color: Colors.purple[100], fontSize: 15),
        decoration: new InputDecoration(
            hintText: b,
            hintStyle: TextStyle(color: Colors.purple[100], fontSize: 15),
            prefixIcon: a)),
  );
}
