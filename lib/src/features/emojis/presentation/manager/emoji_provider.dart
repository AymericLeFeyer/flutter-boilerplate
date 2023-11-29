import 'package:flutter_boilerplate/src/features/emojis/data/data_sources/emoji_remote_datasource.dart';
import 'package:flutter_boilerplate/src/features/emojis/data/repositories/emoji_repository_impl.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/entities/emoji.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/repositories/emoji_repository.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/use_cases/get_emojis.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'emoji_provider.g.dart';

@riverpod
EmojiRemoteDatasource emojiRemoteDatasource(EmojiRemoteDatasourceRef ref) =>
    EmojiRemoteDatasource();

@riverpod
EmojiRepository emojiRepository(EmojiRepositoryRef ref) => EmojiRepositoryImpl(
      remoteDataSource: ref.watch(emojiRemoteDatasourceProvider),
    );

/// State
@riverpod
class EmojiListNotifier extends _$EmojiListNotifier {
  @override
  Future<List<Emoji>> build() async {
    return fetchEmojis();
  }

  Future<List<Emoji>> fetchEmojis() async {
    final emojiRepository = ref.read(emojiRepositoryProvider);
    final getEmojis = await GetEmojis(emojiRepository).call();
    return getEmojis.fold(
      (failure) => [],
      (emojis) => emojis,
    );
  }

  void addEmoji(Emoji emoji) {
    state = AsyncData([...state.value ?? [], emoji]);
  }

  void removeLastEmoji() {
    state = AsyncData([...state.value ?? []]..removeLast());
  }
}
