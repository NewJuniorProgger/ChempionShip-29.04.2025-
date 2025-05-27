import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/brand/Brand.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool invise = false;

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
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
            ),
            Text(
              "Заполните свои данные или продолжите \n через социальные медиа",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28 / 2),
            ),

            SizedBox(height: 52),
            Text(
              "email",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 15),
                labelText: "abc@gmail.com",
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),

            SizedBox(height: 50),
            Text(
              "password",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
            ),
            TextField(
              obscureText: invise,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 15),
                labelText: "pass_2444",
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      invise = !invise;
                    });
                  },
                  icon: Icon(
                    invise
                        ? Icons.remove_red_eye_outlined
                        : Icons.remove_red_eye,
                  ),
                ),
              ),
            ),

            SizedBox(height: 65),
            CupertinoButton(
              color: BrandColors.accent,
              onPressed: () {
                context.go("/notification");
              },
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
