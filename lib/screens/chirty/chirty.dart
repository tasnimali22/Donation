import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controllerchirty.dart';

class Chairty extends StatelessWidget {
  const Chairty({super.key});

  @override
  Widget build(BuildContext context) {

    final cont =Get.put(Chairtycontroller());
    return Scaffold(
      body: Center(
        child:
            Image.network("https://i.pngimg.me/thumb/f/720/comvecteezy289547.jpg",
            height: 200,width: 200,fit: BoxFit.cover,)
      ),
    );
  }
}
