import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/models/drogaboa.dart';
import 'package:hackathon/pages/anoni_page.dart';
import 'package:hackathon/pages/login_page.dart';
import 'package:hackathon/pages/register_page.dart';
import 'components/my_bottom.dart';
import 'pages/donation_page.dart';
import 'pages/forgot_page.dart';
import 'pages/smile_page.dart';
import 'pages/splash_screen.dart';
import 'firebase_options.dart';
//import 'pages/profile_page.dart';
import 'services/auth_provider.dart';
import 'package:provider/provider.dart';
//import 'models/shop.dart';
//import 'pages/login_page.dart';
//import 'pages/register_page.dart';
import 'themes/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => UserProvider()),
     ChangeNotifierProvider(create: (context) => Remedios())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: Provider.of<ThemeProvider>(context).themeData,
        routes: {
          '/splash_page': (context) => const SplashScreen(),
          '/donation_page': (context) => const DonationPage(),
          '/smile_page': (context) => const Medications(),
          '/anoni_page': (context) => const AnonimosPage(),
          '/login_page': (context) =>  LoginPage(),
          '/forgot_page': (context) => const ForgotPage(),
          '/register_page': (context) =>  RegisterPage()
        });
  }
}