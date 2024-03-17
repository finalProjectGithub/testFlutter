import 'package:firebase_tut/features/app/splash_screen/splash_screen.dart';
import 'package:firebase_tut/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDdZS5DtMf3hM5fThO2Kfw2Dty1W3wv9WE",
            appId: "1:176722169010:web:8df7d265ca6d6e2f1d8dab",
            messagingSenderId: "176722169010",
            projectId: "fir-tut-9b99c"));
  }

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(
          child: LoginPage(),
        ));
  }
}
