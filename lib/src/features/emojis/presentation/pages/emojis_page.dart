import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/features/emojis/domain/entities/emoji.dart';
import 'package:flutter_boilerplate/src/features/emojis/presentation/providers/emoji_provider.dart';
import 'package:flutter_boilerplate/src/router/app_router.gr.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: 'EmojisPage')
class EmojisPage extends ConsumerWidget {
  const EmojisPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emojis = ref.watch(emojiListNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Emojis'),
      ),
      body: Column(
        children: [
          Container(
              child: emojis.when(
                  data: (emojis) {
                    return Row(
                      children: emojis
                          .map((emoji) => TextButton(
                                onPressed: () {
                                  context.navigateTo(
                                      EmojiDetailsPage(emojiName: emoji.code));
                                },
                                child: Text(
                                  emoji.code,
                                  style: TextStyle(fontSize: 32),
                                ),
                              ))
                          .toList(),
                    );
                  },
                  error: (err, stack) => Text("error: $err"),
                  loading: () => const CircularProgressIndicator())),
          TextButton(
              onPressed: () {
                ref
                    .read(emojiListNotifierProvider.notifier)
                    .addEmoji(Emoji(name: "new emoji", code: "🤩"));
              },
              child: Text("Add emoji")),
          TextButton(
              onPressed: () {
                ref.read(emojiListNotifierProvider.notifier).removeLastEmoji();
              },
              child: Text("Remove last emoji")),
          TextButton(
              onPressed: () {
                ref.read(emojiListNotifierProvider.notifier).build();
              },
              child: Text("Refresh"))
        ],
      ),
    );
  }
}
