import 'package:flutter/material.dart';
import 'package:flutter_application_2/assistant_methods/setting_provider.dart';
import 'package:flutter_application_2/screens/screen1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingProvider>(
            create: (context) => SettingProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool debugShowCheckedModeBanner = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      home: const Screen1(),
    );
  }
}
