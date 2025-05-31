import 'package:flutter/material.dart';
import 'package:matule/core/brand/Brand.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 10,),
          Text('Recent',style: 
          TextStyle(
                  fontSize: 13,
                  color: BrandColors.text,

                ),
              ),
          Icon(Icons.access_time),
        ],
      )
    );
  }
}