import 'package:flutter/material.dart';
import '../utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce Application',
       themeMode: ThemeMode.system,
       theme:TAppTheme.lightTheme,
       darkTheme: TAppTheme.darkTheme,
       home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(child: Text('Ecommerce App'),),
      );
  }
}
