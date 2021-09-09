import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:asal_gores/splashscreen_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Asal Gores",
    home: SplashScreenPage(),
  ));
}
