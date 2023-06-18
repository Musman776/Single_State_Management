import 'package:flutter/material.dart';
import 'package:practice_singal_provider_state_management/provider/count_provider.dart';
import 'package:practice_singal_provider_state_management/screen/count_Screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.white,
        ),

        home: const CountScreen(),
      ),
    );
  }
}
