
import 'package:amaliyot/Log/Sign_Up.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Log/Sign_In.dart';

class Intro_Page extends StatefulWidget {
  const Intro_Page({Key? key}) : super(key: key);
  static final String id = "Intro_Page";

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {
  @override
  final PageController controller = PageController();

  Widget build(BuildContext context) {
    Widget Pages3() {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
            ),
            Center(
              child: Icon(
                Icons.home,
                size: 200,
                color: Colors.purple,
              ),
            ),
            Center(
              child: Text(
                "View desired homes",
                style: TextStyle(color: Colors.purple, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 80,
            ),

            SizedBox(height: 60,),
            GestureDetector(
                child: Container(
                    margin: EdgeInsets.only(left:15,right: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 5,
                        )
                    ),
                    child: Center(child:Text("GET STARTED",style: TextStyle(color:Colors.purple,fontSize: 15)))
                ),
                onTap: (){Navigator.pushNamed(context, Sign_Up.id);}

            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(top:5,left:15,right: 15),
                  height: 50,
                  color: Colors.purple,
                  child: Center(child:Text("LOG IN",style: TextStyle(color:Colors.white,fontSize: 15)))
              ),
                onTap: (){Navigator.pushNamed(context, Sign_In.id);}
            )
          ],
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [

          PageView(
            controller: controller,
            children: [

              Pages1(),
              Pages2(),
              Pages3(),
            ],
          ),
          Container(margin: EdgeInsets.only(top: 530),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [SmoothPageIndicator(controller: controller, count: 3, effect: ExpandingDotsEffect(dotColor: Colors.purple,activeDotColor: Colors.purple),)],)),
          Container(
            margin: EdgeInsets.only(top: 70, left: 20),
            child: Text(
              "Real Homes",
              style: TextStyle(
                  fontSize: 25, color: Colors.purple, fontFamily: 'Billabong'),
            ),
          ),
        ],
      )

    );
  }
}

Widget Pages1() {
  return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(
          height: 230,
        ),
        Center(
          child: Icon(
            Icons.home,
            size: 200,
            color: Colors.purple,
          ),
        ),
        Center(
          child: Text(
            "View desired homes",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 80,
        ),

      ],
    ),
  );
}

Widget Pages2() {
  return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 230,
        ),
        Center(
          child: Icon(
            Icons.calendar_month,
            size: 200,
            color: Colors.purple,
          ),
        ),
        Center(
          child: Text(
            "View desired homes",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 80,
        ),

      ],
    ),
  );
}
