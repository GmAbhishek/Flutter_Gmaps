import 'package:flutter/material.dart';

class RzpApp extends StatefulWidget {
  const RzpApp({super.key});

  @override
  State<RzpApp> createState() => _MyState();
}

class _MyState extends State<RzpApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
