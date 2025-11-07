import 'dart:async';
import 'dart:developer' show log;

import 'package:flutter/material.dart';

void main() => runZonedGuarded<void>(
  () => runApp(const App()),
  (e, s) => log('Top level exception: $e\n$s'),
);

/// {@template app}
/// App widget.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Material App',
    home: Scaffold(
      appBar: AppBar(title: const Text('Material App Bar')),
      body: const SafeArea(child: Center(child: Text('Hello World'))),
    ),
  );
}
