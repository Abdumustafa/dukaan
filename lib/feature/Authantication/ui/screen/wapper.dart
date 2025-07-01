import 'package:dukaan/feature/Authantication/ui/screen/add_phone_number.dart';
import 'package:dukaan/feature/home/ui/screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Wapper extends StatefulWidget {
  const Wapper({super.key});

  @override
  State<Wapper> createState() => _WapperState();
}

class _WapperState extends State<Wapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomeScreen();
            } else {
              return AddPhoneNumber();
            }
          }),
    );
  }
}
