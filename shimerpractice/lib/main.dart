import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade300,
                enabled: true,
                child: ListTile(
                  title: Container(
                    width: double.infinity,
                    height: 10,
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                  subtitle: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: double.infinity,
                    height: 20,
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
