import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(205, 46, 94, 110),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Counter Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int index = 0; 

  dynamic get onTap => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'COUNTER',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            // Logic for the first item
          } else if (index == 1) {
            // Logic for the second item
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.onetwothree),
            label: 'Decimal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outlet_outlined),
            label: 'Binary Convertor',
          ),
        ],
      ),
    );
  }
}
