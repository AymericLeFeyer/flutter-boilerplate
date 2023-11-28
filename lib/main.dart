import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: App()));
}
