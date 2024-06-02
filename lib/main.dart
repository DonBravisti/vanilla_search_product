import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/search_page.dart';
import 'state/cart_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const SearchPage(),
    );
  }
}
