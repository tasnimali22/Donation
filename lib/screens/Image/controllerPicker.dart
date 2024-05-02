import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerController extends GetxController{
  final image ="".obs;
  final ImagePicker picker= ImagePicker();

  selectImage({required source})async{
    try{
     final picckedImage= await picker.pickImage(source: ImageSource.gallery,
      imageQuality: 25);
      if(picckedImage!=null){
        image.value=picckedImage.path;
      }
      
    }catch(e){
      print(e.toString());
    }
  }
}