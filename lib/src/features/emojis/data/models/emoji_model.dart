import 'package:flutter_boilerplate/src/features/emojis/domain/entities/emoji.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji_model.freezed.dart';

@freezed
class EmojiModel with _$EmojiModel {
  const EmojiModel._();

  factory EmojiModel({
    required String name,
    required String code,
  }) = _EmojiModel;

  Emoji toEntity() => Emoji(
        name: name,
        code: code,
      );
}
