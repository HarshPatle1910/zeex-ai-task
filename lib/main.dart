import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task1/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:task1/src/utils/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDnWOcjyYSGl9DwZt3zgr4h-hfZ-N5izbo",
        authDomain: "zeex-ai-task-4ab62.firebaseapp.com",
        projectId: "zeex-ai-task-4ab62",
        storageBucket: "zeex-ai-task-4ab62.firebasestorage.app",
        messagingSenderId: "269958885064",
        appId: "1:269958885064:web:7b1c206140b50d27b93ffd",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: SplashScreen(),
    );
  }
}
