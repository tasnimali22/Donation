import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../componants/List.dart';
import 'controller.dart';

class Bottom_NavBar extends StatefulWidget {
   Bottom_NavBar({super.key});

  @override
  State<Bottom_NavBar> createState() => _Bottom_NavBarState();
}

class _Bottom_NavBarState extends State<Bottom_NavBar> {
  int currentindex=1;

  @override
  Widget build(BuildContext context) {
   final item =<BottomNavigationBarItem> [
      BottomNavigationBarItem(icon: Icon(Icons.phone,size: 30,color: Colors.black,)
          ,label: "تواصل معنا"

          ,activeIcon: Icon(Icons.phone,size: 35,color: Colors.white,) ),
      BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 30,color: Colors.black,),
        label: "الرئيسية",
        activeIcon: Icon(Icons.home_filled,size: 35,color: Colors.white,),),
      BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined,size: 30,color: Colors.black,),
        label: "تتبع الطلب",
        activeIcon: Icon(Icons.airplane_ticket_outlined,size: 35,color: Colors.white,),),
    ];

    assert (body.length== item.length);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:item,
        backgroundColor: Color(0xFFb0e7b0),
        currentIndex: currentindex,
        onTap: (index){
          setState(() {
            currentindex=index;
          });
        },


      ),
      body: body[currentindex],

    );
  }
}
