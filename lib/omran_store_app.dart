import 'package:flutter/material.dart';

import 'core/app/env.variables.dart';

class OmranStoreApp extends StatelessWidget {
  const OmranStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omran Store App',
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Omran Store'),
        ),
      ),
    );
  }
}