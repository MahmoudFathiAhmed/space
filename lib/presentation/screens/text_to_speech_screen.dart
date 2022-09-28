import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechScreen extends StatelessWidget {
  TextToSpeechScreen({super.key});

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController controller = TextEditingController();
  speek(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1); //0.5 to 1.5
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: ElevatedButton(
          onPressed: () => speek('Mazen, I did it'),
          child: const Text('Speak'),
        ),
      ),
    );
  }
}
