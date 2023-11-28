// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_boilerplate/src/features/emojis/presentation/pages/emojis_details_page.dart'
    as _i1;
import 'package:flutter_boilerplate/src/features/emojis/presentation/pages/emojis_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EmojiDetailsPage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EmojiDetailsPageArgs>(
          orElse: () => EmojiDetailsPageArgs(
              emojiName: pathParams.getString('emojiName')));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.EmojiDetailsPage(
          key: args.key,
          emojiName: args.emojiName,
        ),
      );
    },
    EmojisPage.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EmojisPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.EmojiDetailsPage]
class EmojiDetailsPage extends _i3.PageRouteInfo<EmojiDetailsPageArgs> {
  EmojiDetailsPage({
    _i4.Key? key,
    required String emojiName,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          EmojiDetailsPage.name,
          args: EmojiDetailsPageArgs(
            key: key,
            emojiName: emojiName,
          ),
          rawPathParams: {'emojiName': emojiName},
          initialChildren: children,
        );

  static const String name = 'EmojiDetailsPage';

  static const _i3.PageInfo<EmojiDetailsPageArgs> page =
      _i3.PageInfo<EmojiDetailsPageArgs>(name);
}

class EmojiDetailsPageArgs {
  const EmojiDetailsPageArgs({
    this.key,
    required this.emojiName,
  });

  final _i4.Key? key;

  final String emojiName;

  @override
  String toString() {
    return 'EmojiDetailsPageArgs{key: $key, emojiName: $emojiName}';
  }
}

/// generated route for
/// [_i2.EmojisPage]
class EmojisPage extends _i3.PageRouteInfo<void> {
  const EmojisPage({List<_i3.PageRouteInfo>? children})
      : super(
          EmojisPage.name,
          initialChildren: children,
        );

  static const String name = 'EmojisPage';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
