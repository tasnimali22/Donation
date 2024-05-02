import 'package:flutter/cupertino.dart';
import 'package:flutter_firebase/screens/login/servers.dart';
import 'package:get/get.dart';

class authcontroller extends GetxController{
  @override

  String signInEmail ='';
  String signInpass ='';
  final ser =Servies();
  final nameController = TextEditingController();
  final numperController = TextEditingController();

  signUp()async{
    await ser.signUp(email: signInEmail, password:signInpass =''
    );
  }

  deletAccount()async{
await ser.deletAccount();
  }
  void onInit() {
    super.onInit();
    signUp();
    deletAccount();
  }


}