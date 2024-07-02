import 'package:flutter/material.dart';

class OmranStoreApp extends StatelessWidget {
  const OmranStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omran Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Omran Store"),
        ),
      ),
    );
  }
}