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
    return Container(
      color: BrandColors.red,
      padding: EdgeInsets.all(20),
      child: Column(children: [FlutterLogo()]),
    );
  }
}
