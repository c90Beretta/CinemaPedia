import 'package:ecosistemacopy/presentation/screens/mainscreen.dart';
import 'package:ecosistemacopy/routers/approuter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router
    (
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: false 
        )
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: approuter,
    );
}
}