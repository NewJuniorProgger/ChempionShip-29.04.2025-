import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/core/brand/Brand.dart';
import 'package:matule/layers/presentation/screens/CardScreen.dart';

class Outdoor extends StatefulWidget {
  const Outdoor({super.key});

  @override
  State<Outdoor> createState() => _OutdoorState();
}

class _OutdoorState extends State<Outdoor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.background,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: BrandColors.block,
                ),
                alignment: Alignment.center,
                child: IconButton(
                  onPressed:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      ),
                  icon: Icon(CupertinoIcons.back, size: 20,),
                ),
              ),
              Text(
                'OutDoor',
                style: TextStyle(
                  fontSize: 20,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 40),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: BrandColors.block,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    context.tr('see_all'),
                    style: TextStyle(
                      fontSize: 15,
                      color: BrandColors.text,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: BrandColors.accent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Outdoor(),
                          ),
                        ),
                    child: Text(
                      'Outdoor',
                      style: TextStyle(
                        fontSize: 15,
                        color: BrandColors.block,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 150,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: BrandColors.block,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Tennis',
                    style: TextStyle(
                      fontSize: 15,
                      color: BrandColors.text,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(8),
              children: List.generate(16, (index) => CardScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
