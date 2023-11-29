// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emojiRemoteDatasourceHash() =>
    r'd478fc0da71f2403d6dd1b176f934fe708ef95be';

/// See also [emojiRemoteDatasource].
@ProviderFor(emojiRemoteDatasource)
final emojiRemoteDatasourceProvider =
    AutoDisposeProvider<EmojiRemoteDatasource>.internal(
  emojiRemoteDatasource,
  name: r'emojiRemoteDatasourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$emojiRemoteDatasourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EmojiRemoteDatasourceRef
    = AutoDisposeProviderRef<EmojiRemoteDatasource>;
String _$emojiRepositoryHash() => r'23a069c69c4048c99d529692d70be4b5318cbc6c';

/// See also [emojiRepository].
@ProviderFor(emojiRepository)
final emojiRepositoryProvider = AutoDisposeProvider<EmojiRepository>.internal(
  emojiRepository,
  name: r'emojiRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$emojiRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef EmojiRepositoryRef = AutoDisposeProviderRef<EmojiRepository>;
String _$emojiListNotifierHash() => r'a0766f9b201d2bf66a67b9971155ff82f19f0a79';

/// State
///
/// Copied from [EmojiListNotifier].
@ProviderFor(EmojiListNotifier)
final emojiListNotifierProvider =
    AutoDisposeAsyncNotifierProvider<EmojiListNotifier, List<Emoji>>.internal(
  EmojiListNotifier.new,
  name: r'emojiListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$emojiListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EmojiListNotifier = AutoDisposeAsyncNotifier<List<Emoji>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
