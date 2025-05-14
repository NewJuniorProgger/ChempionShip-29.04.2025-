import 'package:flutter/material.dart';
import 'package:flutter_router/flutter_router.dart';
import 'package:matule/core/brand/Brand.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 572),
        height: 36,
        width: 456,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
            color: BrandColors.accent,
              child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('ДАЛЕЕ'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: BrandColors.accent,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
            
          ),
          ),
        ),
      ),
    );
  }
}
