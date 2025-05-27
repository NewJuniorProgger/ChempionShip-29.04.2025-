import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 29, vertical: 38),
        width: double.maxFinite,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(45)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Привет!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
            Text(
              "Заполните свои данные или продолжите \n через социальные медиа",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28 / 2),
            ),

            SizedBox(height: 52),
            Text("email"),
            TextField(
              decoration: InputDecoration(
                labelText: "",
                border: InputBorder.none,
                hintText: "abc@gmail.com",
              ),
            ),

            SizedBox(height: 50),
            Text("password"),
            TextField(
              decoration: InputDecoration(
                labelText: "",
                border: InputBorder.none,
                hintText: "Pass_2444",
              ),
            ),

            SizedBox(height: 65),
            CupertinoButton(
              color: BrandColors.accent,
              onPressed: () {},
              child: Text(
                "Войти",
                style: TextStyle(color: BrandColors.subTextLight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
