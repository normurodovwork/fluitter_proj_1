import 'package:flutter/material.dart';
import 'pages/first_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My application', 
      home: MainPage()
      );
  }
}
