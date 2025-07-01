import 'package:dukaan/core/services/services.dart';
import 'package:dukaan/dukaan_app.dart';
import 'package:flutter/material.dart';
import "package:firebase_core/firebase_core.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  await Firebase.initializeApp();
  runApp(DukaanApp());
}
