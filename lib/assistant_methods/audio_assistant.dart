import 'dart:developer';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/assistant_methods/setting_provider.dart';
import 'package:provider/provider.dart';

class AudioAssistant {
  void playClickSound(BuildContext context) async {
    try {
      bool currentAudioState =
          Provider.of<SettingProvider>(context, listen: false).soundState;
      if (currentAudioState == true) {
        await AssetsAudioPlayer.newPlayer().open(
          Audio(
            "assets/click sound.mp3",
            playSpeed: 100,
          ),
          volume: 100,
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }

}
