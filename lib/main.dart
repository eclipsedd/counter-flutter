import 'package:flutter/material.dart';
import './presentation/screens/my_home_page.dart';
import './presentation/screens/binary_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
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
      initialRoute: '/binary',
      routes: <String, WidgetBuilder>{
        '/HomePage': (context) => const MyHomePage(),
        '/binary': (context) => const ToDecimal(),
      },
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.onetwothree),
              label: 'Decimal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.outlet_outlined),
              label: 'Binary Converter',
            ),
          ],
          onTap: (int index) {
            setState(() {
              myIndex = index;
            });
            if (index == 0) {
              Navigator.pushNamed(context, '/HomePage');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/binary');
            }
          },
        ),
      ),
    );
  }
}
