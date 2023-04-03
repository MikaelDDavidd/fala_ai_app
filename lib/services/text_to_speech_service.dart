import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechService {
  FlutterTts? flutterTts;

  Future _speak(String text) async {
    await flutterTts!.setLanguage("pt-BR");
    await flutterTts!.speak(text);
  }

  Future speak(String text) async {
    await flutterTts!.setVolume(1.0);
    await flutterTts!.setSpeechRate(0.5);
    await flutterTts!.setPitch(1.0);
    await _speak(text);
  }

  Future stop() async {
    await flutterTts!.stop();
  }
}
