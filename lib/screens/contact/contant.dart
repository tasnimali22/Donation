import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../login/auth_controller.dart';
import '../login/servers.dart';

class Contant extends StatelessWidget {
  const Contant({super.key});

  @override
  Widget build(BuildContext context) {
    final ser =Servies();
    final contr =Get.put(authcontroller());

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("connect with us")),
      ),
      body: Column(
        children: [
          Text("Phono Numper"),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:Border.all(width:2.0),
            ),
            child:Row(
            children: [
              Icon(Icons.phone,color: Color(0xFFb0e7b0),),
              Text("075182445"),
            ],
            )
          ),
          SizedBox(height: 15,) ,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:Border.all(width:2.0),
            ),
            child:Row(
            children: [
              Icon(Icons.phone,color: Color(0xFFb0e7b0),),
              Text("075182445"),
            ],
            )
          ),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:Border.all(width:2.0),
            ),
            child:Row(
            children: [
              Icon(Icons.phone,color: Color(0xFF749336),),
              Text("075182445"),
            ],
            )
          ),
          SizedBox(height: 20,),
          Text("Social"),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:Border.all(width:2.0),
              ),
              child:Row(
                children: [
                  Icon(Icons.email,color: Color(0xFF749336),),
                  Text("charityclothes565@gmail.com"),
                ],
              )
          ),
          SizedBox(height: 15,),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:Border.all(width:2.0),
              ),
              child:Row(
                children: [
                  Icon(Icons.facebook,color: Color(0xFFb0e7b0),),
                  Text("https://www.facebook.com/CharityClothesApp"),
                ],
              )
          ),
          SizedBox(height: 15,),
          Center(
            child: ElevatedButton(
              onPressed: () {
             contr.deletAccount();
             showDialog(context: context, builder: (BuildContext){
               return AlertDialog(
                 content: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Do you went to delet the account"),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     GestureDetector(
                       child: Text("yes"),
                       onTap: (){
                       },),
                     GestureDetector(
                       child: Text("No"),
                       onTap: (){},),
                   ],
                 )

                   ],
                 ),
               );
             });
         },
              child: Text("Delet Account"),),
          )
        ],),
    );
  }
}