import 'package:flutter/material.dart';
import 'package:fruits/features/splash/presentation/ui/splash_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FruitsHub',
      home: SplashView(),
    );
  }
}
