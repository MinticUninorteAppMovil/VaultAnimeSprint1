import 'package:flutter/material.dart';
import 'package:red_social/ui/pages/content.dart';
import 'package:red_social/ui/pages/homepage.dart';
import 'package:red_social/ui/pages/login.dart';
import 'package:red_social/ui/pages/register.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Red Social',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginPage(title: 'Login',),
        '/register': (context) => const RegisterPage(title: 'Registro',),
        '/content': (context) => const ContentPage(title: 'Actividad Reciente'),
        '/homepage': (context)=> const HomePageWidget(title: 'Hungaroo'),
      },
    );
  }
}