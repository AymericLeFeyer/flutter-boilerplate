import 'package:flutter_boilerplate/src/features/emojis/data/models/emoji_model.dart';

class EmojiRemoteDatasource {
  EmojiRemoteDatasource();

  Future<List<EmojiModel>> getEmojis() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      EmojiModel(name: "sunglasses", code: "😎"),
      EmojiModel(name: "muscle", code: "💪"),
      EmojiModel(name: "fire", code: "🔥"),
    ];
  }
}
