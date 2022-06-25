import 'package:flutter/material.dart';

import '../Home/HomePage.dart';
import 'Sign_Up.dart';
class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);
  static final String id="SignIn";

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1505404919723-002ecad81b92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cmFpbiUyMGhvdXNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            SizedBox(height: 190,),
            Text(
              "Real Homes",
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: 'Billabong'),
            ),
            SizedBox(height: 50,),
            InputText(const Icon(Icons.phone_android_outlined,color: Colors.white), "Phone number"),
            SizedBox(height: 15,),
            InputText(const Icon(Icons.lock_outlined,color: Colors.white), "Password"),
            SizedBox(height: 200,),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(left: 60,right: 60),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15),
                    color: Colors.purple,
                  ),
                  child: Center(child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 20),),)
              ),
              onTap: (){Navigator.pushNamed(context, HomePage.id);},
            ),
          ],
        ),
      ),
    );
  }
}
Widget InputText(Icon a, String b) {
  return Container(
    margin: EdgeInsets.only(left: 50, right: 50),
    child: TextField(
        style: new TextStyle(color: Colors.white, fontSize: 15),
        decoration: new InputDecoration(
            hintText: b,
            hintStyle: TextStyle(color: Colors.white, fontSize: 15),
            prefixIcon: a)),
  );
}
