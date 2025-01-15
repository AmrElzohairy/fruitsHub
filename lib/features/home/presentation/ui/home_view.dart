import 'package:flutter/material.dart';
import 'package:fruits/features/home/presentation/ui/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
