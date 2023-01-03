// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:auth_minggu11/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyBdicIOfB1FwteTcUa8h6U7QkHtmHYfr4U',
          appId: '1:781196300723:android:f3c8b6abd810cab5917bc6',
          messagingSenderId: '781196300723',
          projectId: 'authfirebase-ec9d8'));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication Minggu 11',
      home: LoginScreen(),
    );
  }
}
