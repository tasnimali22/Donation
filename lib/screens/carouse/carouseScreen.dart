import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/componants/List.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../componants/customCard.dart';
import '../login/Login.dart';

class CarouseScreen extends StatefulWidget {
   CarouseScreen({super.key});

  @override
  State<CarouseScreen> createState() => _CarouseScreenState();
}

class _CarouseScreenState extends State<CarouseScreen> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFb0e7b0),
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 400,
            child: CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                height: 250,
                aspectRatio: 5,
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                onPageChanged: (index,r){
                  setState(() {
                    currentindex=index;
                  });
                  print(index);
                }
              ),
                itemBuilder: (BuildContext context,int index, int){
                  return CustomDonate(image: images[index],);
                },
            ),),

            AnimatedSmoothIndicator(activeIndex: currentindex, count: images.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xFFb0e7b0),
            ),),
            SizedBox(height: 17,),
            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFb0e7b0),),
              onPressed: (){
              Get.to(Login());
            },
                child: const Text("Donate clothes"),),
          ],
        ),
      ),
    );
  }
}

