import 'package:fazaa_app/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(  const FazaaApp());
}

class FazaaApp extends StatefulWidget {
  const FazaaApp({super.key});

  @override
  State<FazaaApp> createState() => _FazaaAppState();
}

class _FazaaAppState extends State<FazaaApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      localizationsDelegates:  const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Tajawal",
      ),
      home:  const SplashPage(),
    );
  }
}
