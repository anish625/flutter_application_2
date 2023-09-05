import 'package:flutter/material.dart';
import 'package:flutter_application_2/dialogs/setting_dialog.dart';
import 'package:flutter_application_2/screens/screen2.dart';
import 'package:flutter_application_2/widgets/button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const SettingDialog(),
                  );
                },
                child: const Text("Settings"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: SizedBox(
          height: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Screen2(),
                ),
              );
            },
            child: Button(
              buttonName: "Go to Screen 2",
            ),
          ),
        ),
      ),
    );
  }
}
