import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:space_project/core/utils/app_colors.dart';

class SpeakTextWidget extends StatelessWidget {
  final String text;

  SpeakTextWidget({super.key, required this.text});

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController controller = TextEditingController();

  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1); //0.5 to 1.5
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.orange,
        size: 40,
      ),
      onPressed: () => speak(text),
    );
  }
}
