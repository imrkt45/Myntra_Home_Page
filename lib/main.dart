
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_first_project/phone.dart';
import 'otp.dart';
import 'package:my_first_project/new.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
initialRoute: 'phone',
    routes: {
  'phone':(context) => MyPhone(),
      'otp':(context)=>Myotp(),
      'new':(context)=>next(),
    },

  ));
}
