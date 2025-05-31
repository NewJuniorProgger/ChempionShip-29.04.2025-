import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/shared/ui/card_screen.dart';
import 'package:matule/core/brand/Brand.dart';
import 'package:matule/layers/presentation/shared/ui/recent.dart';
import 'package:matule/layers/presentation/screens/OutDoor.dart';
import 'package:matule/layers/presentation/screens/search.dart';
import 'package:matule/layers/presentation/screens/Setting_screen.dart';
import 'package:matule/layers/presentation/screens/PopularScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

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
                ),
                child: IconButton(
                  onPressed: () {
                    // ZoomDrawer.of(context)?.toggle();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
              Text(
                context.tr('explore'),
                style: TextStyle(
                  fontSize: 40,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: BrandColors.block,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.bag),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: BrandColors.block,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: GestureDetector(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: BrandColors.block,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IgnorePointer(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: context.tr('looking_for_shoes'),
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: BrandColors.accent,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingScreen()),
                      ),
                  icon: Icon(Icons.settings),
                  color: BrandColors.block,
                
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              context.tr('select_category'),
              style: TextStyle(
                fontSize: 15,
                color: BrandColors.text,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 15),
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
                    color: BrandColors.block,
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
                        color: BrandColors.text,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.tr('popular_shoes'),
                style: TextStyle(
                  fontSize: 15,
                  color: BrandColors.text,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Popularscreen()),
                    ),
                child: Text(
                  context.tr('see_all'),
                  style: TextStyle(
                    fontSize: 15,
                    color: BrandColors.accent,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CardScreen(), SizedBox(width: 10), CardScreen()],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.tr('new_arrivals'),
                      style: TextStyle(
                        fontSize: 15,
                        color: BrandColors.text,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        context.tr('see_all'),
                        style: TextStyle(
                          fontSize: 15,
                          color: BrandColors.accent,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [Image.asset('assets/action.png', fit: BoxFit.cover)],
            ),
          ),
        ],
      ),
    );
  }
}
