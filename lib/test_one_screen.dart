import 'package:flutter/material.dart';
import 'package:omran_store/core/extensions/context_extensions.dart';
import 'package:omran_store/core/routes/app_routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Center(
        child: Column(
          children: [


            Center(
              child: TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.testTwo);
                },
                child:  Text(
                  'Go Two Screen',
                  style: TextStyle(
                    fontSize: 30,
                    color: context.color.minColor,
                  ),
                ),
              ),
            ),

            Image.asset(context.assets.testImage!),
          ],
        ),
      ),
    );
  }
}
