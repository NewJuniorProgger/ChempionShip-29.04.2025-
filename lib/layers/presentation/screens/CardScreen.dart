import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/core/brand/Brand.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BrandColors.block,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(

                  color: BrandColors.background,
                  borderRadius: BorderRadius.circular(100),
                ),
                alignment: Alignment.center,
                child: IconButton(

                  onPressed:
                      () => Navigator.push(
                        context,

                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      ),
                  icon: Icon(CupertinoIcons.back, size: 20),
                ),
              ),
              Text(
                context.tr('orders'),
                style: TextStyle(

                  fontWeight: FontWeight.w600,
                  color: BrandColors.text,
                  fontSize: 20,

                ),
              ),
              SizedBox(width: 40),
            ],
          ),
            SizedBox(height: 10),
              Row(children: [Text('3 Товара')]),
               SizedBox(height: 10),
                 Stack(

            children: [
              Positioned(top: 1 / 2,left: 1 / 2,
              child: 
              Container(width: 32, height: 88, color: BrandColors.accent,),),
            ],
          ),
        ],
      ),
    );
  }
}
