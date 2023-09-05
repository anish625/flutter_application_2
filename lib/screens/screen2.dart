import 'package:flutter/material.dart';
import 'package:flutter_application_2/assistant_methods/audio_assistant.dart';
import 'package:flutter_application_2/dialogs/setting_dialog.dart';
import 'package:flutter_application_2/widgets/button.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  AudioAssistant audioAssistant = AudioAssistant();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => const SettingDialog(),
            ),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 100,
              width: 100,
              child: GestureDetector(
                onTap: () => audioAssistant.playClickSound(context),
                child: Button(
                  buttonName: (index + 1).toString(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
