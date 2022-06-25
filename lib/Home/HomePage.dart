import 'package:amaliyot/Market/market.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
 static final String id="HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.purple,
                child: Column(
                  children: const [
                    SizedBox(height: 50,),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage("https://static.independent.co.uk/2020/12/19/09/newFile-3.jpg?width=1200"),),
                    SizedBox(height: 20,),
                    Text("Jack Sparrow",style: TextStyle(color: Colors.white, fontSize: 23),),
                    SizedBox(height: 10,),
                    Text("jacksparrow@gmail.com",style: TextStyle(color: Colors.white, fontSize: 15),)

                  ],
                ),)),
            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    ItemDrawer(const Icon(Icons.home_outlined,size:30,color: Colors.purple,), "Home"),
                    ItemDrawer(const Icon(Icons.search,size:30,color: Colors.purple,), "Search"),
                    ItemDrawer(const Icon(Icons.star,size:30,color: Colors.purple,), "Wishlist"),
                    ItemDrawer(const Icon(Icons.calendar_month,size:30,color: Colors.purple,), "Home Tour"),
                    ItemDrawer(const Icon(Icons.chat_outlined,size:30,color: Colors.purple,), "Chat with us"),
                    ItemDrawer(const Icon(Icons.settings,size:30,color: Colors.purple,), "Settings"),
                    ItemDrawer(const Icon(Icons.logout,size:30,color: Colors.purple,), "Log Out"),
                  ],
                ))
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Real Homes",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontFamily: 'Billabong'),
        ),
        centerTitle: true,
        actions: const [
          Padding(padding: EdgeInsets.only(right: 15),child: Icon(Icons.search))
        ],
        // leading: Icon(Icons.search),
      ),
      body: ListView(
        children: [
          Items("What's hot in the market", "Lagos, Nigeria", "https://p.bookcdn.com/data/Photos/380x250/10522/1052208/1052208739/Ms-Willa-photos-Exterior-MS-Willa.JPEG"),
          Items("Best Value", "Lagos, Nigeria", "https://p.bookcdn.com/data/Photos/380x250/1622/162299/162299739/Willa-Kominiarski-Wierch-photos-Exterior.JPEG"),
          Items("New Renta's", "Lagos, Nigeria", "https://img-ovh-cloud.zszywka.pl/0/0073/4035-ale-willa-o.jpg"),
          Items("Furnished Apartments", "Lagos, Nigeria", "https://visitmalopolska.pl/documents/20194/1708727/Willa+Pod+Jedlami/50b37295-7840-4541-86ee-792f6d00376d?t=1620818136974&imageThumbnail=5"),
        ],
      ),
    );
  }
  Widget Items(String a, String b, String c){
    return GestureDetector(
      child: Container(
        height: 200,
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(c),fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 140,),
              Text(a,style: const TextStyle(color: Colors.white, fontSize: 30),),
              Text(b,style: const TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
        ),
      ),
      onTap: (){ Navigator.pushNamed(context, MarketPage.id);},
    );
  }
  Widget ItemDrawer(Icon a, String b){
    return GestureDetector(
    child: Padding(padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        const SizedBox(width: 50,),
        a,
        const SizedBox(width: 20,),
        Text(b,style: const TextStyle(color: Colors.purple,fontSize: 20),)
      ],
    ),),

    );
  }
}
