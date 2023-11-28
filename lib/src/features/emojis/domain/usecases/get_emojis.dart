import 'package:either_dart/either.dart';
import 'package:flutter_boilerplate/src/core/errors/failures.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/entities/emoji.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/repositories/emoji_repository.dart';

class GetEmojis {
  final EmojiRepository repository;

  GetEmojis(this.repository);

  Future<Either<Failure, List<Emoji>>> call() async {
    return await repository.getEmojis();
  }
}