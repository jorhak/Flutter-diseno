import 'package:diseno/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:diseno/screens/basic_design.dart';
import 'package:diseno/screens/scroll_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_disegn',
      routes: {
        'home_disegn': (_) => HomeScreen(),
        'basic_disegn': (_) => BasicDesignScreen(),
        'scroll_disegn': (_) => ScrollScreen(),
      },
    );
  }
}
