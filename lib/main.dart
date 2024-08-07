import 'package:flutter/material.dart';
import 'WeaponClass.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black87,
        // useMaterial3: false,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize:40,
          ),
          labelSmall: TextStyle(
            color: Colors.white38,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),

      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    Weapon one = Weapon('Aka', '50', '1');
    Weapon two = Weapon('M', '30', '15');
    Weapon three = Weapon('HK', '60', '1');
    Weapon four = Weapon('P90', '40', '2');
    Weapon five = Weapon('M6', '55', '20');
    Weapon six = Weapon('M6', '55', '20');
    Weapon seven = Weapon('M6', '55', '20');
    Weapon eight  = Weapon('M6', '55', '20');

    final  Weaponlist = [one, two, three, four, five,six,seven,eight];

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('WeaponList'),
          backgroundColor: Colors.amber,

        ),
        body:ListView.builder(
          itemCount: 8,
          itemBuilder:( BuildContext ,int i)=>ListTile(
          title: Text(Weaponlist[i].name,
            style: theme.textTheme.bodyMedium,

          )
            ,
            subtitle: Text(Weaponlist[i].damage,
                style: theme.textTheme.labelSmall,

            ),

          ),
        ),
        floatingActionButton: Column(
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _incrementCounter,
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              child: Icon(Icons.delete),
              onPressed: _resetCounter,
            )
          ],
        ));
  }
}
