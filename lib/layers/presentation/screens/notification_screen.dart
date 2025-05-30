import 'package:flutter/material.dart';
import 'package:matule/core/brand/Brand.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.background,

      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),

      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,

              childAspectRatio: 2,

              crossAxisSpacing: 10,

              mainAxisSpacing: 10,

              padding: EdgeInsets.all(8),

              children: List.generate(16, (index) => NotificationScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
