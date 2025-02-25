import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen());
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int tabIndex = 1;
  final titlee = ["Home","Shorts","Add","Subscriptions","Profile"];
  final tabItems = [Home(), Shorts(), Add(), Subscriptions(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titlee[tabIndex], style: TextStyle(color: Colors.white)),
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 20, 20),
        
      ),
      body: tabItems[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        currentIndex: tabIndex,
        elevation: 0,
        onTap: (value) {
          setState(() {
            tabIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined), label: "Shorts"),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined), label: "Subscriptions"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.home,size: 100,)
      ),
    );
  }
}

class Shorts extends StatelessWidget {
  const Shorts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Image.network("https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",fit: BoxFit.fill,)),
          Positioned(
            top: MediaQuery.sizeOf(context).height/2-200,
            left: MediaQuery.sizeOf(context).width/2-100,
            child: Text("BEING SELF ...!!!!!!!",style: TextStyle(color: Colors.white,fontSize: 25),)),
          Positioned(
            bottom: 80,
            left: 20,
            child: Container(
            padding: EdgeInsets.all(2),
            height: 50,
            width: 220,
            decoration: BoxDecoration(color: const Color.fromARGB(44, 6, 42, 108),
            borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Center(child: Row(
              children: [
                Icon(Icons.search,color: Colors.white,),
                Text("Search Being self motivated",style: TextStyle(color: Colors.white),),
              ],
            )),
          )),
          Positioned(
            bottom: 50,
            left: 20,
            child: Row(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color.fromARGB(255, 248, 246, 246))),
                child: Icon(Icons.person_outline_rounded,color: Colors.white,)),
                 Text("  Motive Beats",style: TextStyle(color: Colors.white),)
            ],
          )),
          Positioned(
            top: MediaQuery.sizeOf(context).height/2 - 60,
            right: 15,
            child: Column(
              children: [
                Icon(Icons.thumb_up_outlined,color: Colors.white,),
                Text("Like",style: TextStyle(color: Colors.white,fontSize: 10),),
               
              ],
            )),
          Positioned(
            top: MediaQuery.sizeOf(context).height/2 ,
            right: 10,
            child: Column(
              children: [
                Icon(Icons.thumb_down_outlined,color: Colors.white,),
                Text("Dislike",style: TextStyle(color: Colors.white,fontSize: 10),)
              ],
            )),
          Positioned(
            top: MediaQuery.sizeOf(context).height/2 + 60,
            right: 10,
            child: Column(
              children: [
                Icon(Icons.comment_outlined,color: Colors.white,),
                 Text("Coment",style: TextStyle(color: Colors.white,fontSize: 10),)
              ],
            )),
          Positioned(
            top: MediaQuery.sizeOf(context).height/2 + 110,
            right: 15,
            child: Column(
              children: [
                Icon(Icons.share_outlined,color: Colors.white,),
                 Text("share",style: TextStyle(color: Colors.white,fontSize: 10),)
              ],
            )),

        ],
      )
    );
  }
}

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.card_giftcard,size: 100,)
      ),
    );
  }
}

class Subscriptions extends StatelessWidget {
  const Subscriptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Icon(Icons.subscriptions_outlined,size: 100,)
    ));
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
        child: Center(
          child: Column(
            children: [
              Center(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Icon(Icons.person,size: 50,)
                )
              ),
              SizedBox(height: 10,),
              Center(child: Text("Mr. Jhon",style: TextStyle(fontSize: 20),)),
              
            ],
          ),
        ),
      )
      );
  }
}