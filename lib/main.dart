import 'package:flutter/material.dart';
import 'package:matule/core/router/router.dart';
import 'package:flutter_router/flutter_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      routerConfig: RouterConfigGo.router,
    );
  }
}
