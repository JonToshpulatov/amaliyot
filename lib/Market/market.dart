import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);
  static final String id = "MarketPage";

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Real Homes",
          style: TextStyle(fontSize: 25, fontFamily: 'Billabong'),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
                width: double.infinity,
                child: Center(
                  child: Text("WHAT'S HON IN THE MARKET",
                      style: TextStyle(color: Colors.white)),
                ),
              )),
          Expanded(
            flex: 15,
            child: ListView(
              children: [
                Items("https://www.distinctivehomes.com.au/wp-content/uploads/2018/04/DistinctiveHomesBackground-1.png"),
                Items("https://static7.depositphotos.com/1000133/757/i/950/depositphotos_7576104-stock-photo-luxurious-villa.jpg"),
                Items("https://newimg.otpusk.com/3/800x600/00/00/16/97/169711.jpg"),
                Items("https://aff.bstatic.com/images/hotel/840x460/257/257150618.jpg"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Items(String a) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              a),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: Color.fromRGBO(200, 200, 200, 0.5),
            ),
            child: Padding(padding: EdgeInsets.only(left: 20,right: 15),child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("TOUR TIME, 2:30PM TO 5:00PM",style: TextStyle(color: Colors.white,fontSize: 10),),
                Icon(Icons.star_border,color: Colors.orange[600],)
              ],
            ),),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
            child: Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 5),child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Column(children: [
                 Text("Royal Duplex",style: TextStyle(color: Colors.white,fontSize: 18),),
                 Text("Ibeju-Lekki",style: TextStyle(color: Colors.white,fontSize: 9),),
                 Text("Yesterday",style: TextStyle(color: Colors.white,fontSize: 9),),
               ],),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("N55,000,000",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Padding(padding: EdgeInsets.only(left: 20,right: 15),child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2",style: TextStyle(color: Colors.white,fontSize: 13),),
                        Icon(Icons.bathtub_outlined,color: Colors.white,),
                        SizedBox(width: 20,),
                        Text("4",style: TextStyle(color: Colors.white,fontSize: 13),),
                        Icon(Icons.bed,color: Colors.white,),


                      ],
                    ),),

                ],)
              ],
            ),),
          ),
        ],
      ),
    );
  }
}
