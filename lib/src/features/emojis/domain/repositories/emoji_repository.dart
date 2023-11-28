import 'package:either_dart/either.dart';
import 'package:flutter_boilerplate/src/core/errors/failures.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/entities/emoji.dart';

abstract class EmojiRepository {
  Future<Either<Failure, List<Emoji>>> getEmojis();
}
