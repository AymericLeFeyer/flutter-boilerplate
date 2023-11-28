import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate/src/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/emojis", page: EmojisPage.page, initial: true),
        AutoRoute(path: "/emojis/:emojiName", page: EmojiDetailsPage.page),
      ];
}
