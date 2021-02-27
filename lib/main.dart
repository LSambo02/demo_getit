import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'utils/getit_sl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();

  runApp(Lojinha());
}

class Lojinha extends StatefulWidget {
  @override
  _LojinhaState createState() => _LojinhaState();
}

class _LojinhaState extends State<Lojinha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
