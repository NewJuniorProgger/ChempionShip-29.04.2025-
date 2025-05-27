import 'package:flutter/material.dart';
import 'package:matule/core/brand/Brand.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Center(),
        width: 335,
        height: 50,
        decoration: BoxDecoration(
          color: BrandColors.accent,
          borderRadius: BorderRadius.circular(45),
        ),
      ),
    );
  }
}
