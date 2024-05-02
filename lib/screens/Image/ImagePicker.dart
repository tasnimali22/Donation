import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../map/map.dart';
import 'controllerPicker.dart';

class ImagePickerscreen extends StatelessWidget {
  const ImagePickerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imagefile =Get.put(ImagePickerController());
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Obx(() => imagefile.image.value.isEmpty?
              Icon(Icons.image, size: 170,color: Color(0xFFb0e7b0),):
              Image.file(File(imagefile.image.value.toString()),)
              ),
              ElevatedButton(onPressed: (){
                imagefile.selectImage(source:ImageSource.gallery);
              }, child: Text("select Image")),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                    labelText:"the number of pieces",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )),),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.add_location_outlined),
                    labelText:"adress",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )),),
              SizedBox(height: 15,),
              Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            onPressed: () {
              final DateTime now = DateTime.now();
              showTimePicker(
                context: context,
                initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
              ).then((TimeOfDay? value) {
                if (value != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(value.format(context)),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ),
                  );
                }
              });
            }, child: Icon(Icons.access_alarm_outlined)),
        ElevatedButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2018),
              lastDate: DateTime(2025),
            ).then((DateTime? value) {
              if (value != null) {
                DateTime _fromDate = DateTime.now();
                _fromDate = value;
                final String date = DateFormat.yMMMd().format(_fromDate);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Selected date: $date')),
                );
              }   });
          }, child: Icon(Icons.calendar_month),),
      ],),
              SizedBox(height: 17,),
              ElevatedButton(onPressed: (){
                 Get.to(MapSample());
              },
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFb0e7b0)),
                  child:Text("submit"), ),
    ],),
        ),
      ),
    );
  }
}