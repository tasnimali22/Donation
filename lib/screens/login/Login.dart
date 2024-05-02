import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/login/servers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../map/map.dart';
import '../Image/ImagePicker.dart';
import '../carouse/carouseScreen.dart';
import 'auth_controller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    final ser =Servies();
    final contr =Get.put(authcontroller());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () { Get.to(CarouseScreen()); }, icon: Icon(Icons.arrow_back_ios_new_rounded),),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.follow_the_signs_rounded,size: 210,color:Color(0xFFb0e7b0),),

            TextField(
              controller: contr.numperController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                icon:const CountryCodePicker(
                  onChanged: print,
                  initialSelection: 'IT',
                  favorite: ['+20','مصر'],
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
                labelText: "phoneNumper",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),),),

            SizedBox(height: 17,),
            TextField(
              controller: contr.nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 17,),

            ElevatedButton(
             style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFb0e7b0),),
                onPressed: (){
               contr.signUp();
               Get.to(ImagePickerscreen());
                },
                child: Text("SignUp"),),
          ],),
      ),
    );
  }
}
