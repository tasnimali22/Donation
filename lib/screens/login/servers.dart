import 'package:firebase_auth/firebase_auth.dart';

class Servies{
  final auth =FirebaseAuth.instance;

  signUp({required email, required password})async{
    await auth.createUserWithEmailAndPassword(email: '', password: '',);
  }
  deletAccount()async{
   await auth.currentUser?.delete();
  }
}