import 'package:flutter/material.dart';
import 'app_Gmail.dart';

void main() {
  runApp(MyApp());//demarre app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Gmail',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ma page Gmail")),
      drawer: App_Gmail(), // Le menu latéral
      body: Center(child: Text("Contenu principal")),
    );
  }
}