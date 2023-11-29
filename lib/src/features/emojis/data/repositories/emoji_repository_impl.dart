import 'package:either_dart/either.dart';
import 'package:flutter_boilerplate/src/core/errors/failures.dart';
import 'package:flutter_boilerplate/src/features/emojis/data/data_sources/emoji_remote_datasource.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/entities/emoji.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/repositories/emoji_repository.dart';

class EmojiRepositoryImpl implements EmojiRepository {
  final EmojiRemoteDatasource remoteDataSource;

  EmojiRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<Emoji>>> getEmojis() async {
    try {
      final emojiModels = await remoteDataSource.getEmojis();
      List<Emoji> emojis =
          emojiModels.map((emojiModel) => emojiModel.toEntity()).toList();
      return Right(emojis);
    } catch (error) {
      return Left(SomeSpecificError(error.toString()));
    }
  }
}
