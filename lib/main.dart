import 'package:flutter/material.dart';
import 'navigation_menu.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(205, 37, 85, 101),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/navigationMenu',
      routes: {
        '/navigationMenu': (context) => NavigationMenu(), 
      },
    );
  }
}
