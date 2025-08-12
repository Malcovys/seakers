import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sneakers/dependency_injection/injection.dart';
import 'package:sneakers/app_layout.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjections();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const AppLayout());
}