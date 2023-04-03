import 'package:flutter_tts/flutter_tts.dart';

class TtsService {
  FlutterTts flutterTts = FlutterTts();

  Future speak(String text) async {
    await flutterTts.setLanguage('pt-BR');
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }
}
