import 'package:flutter/material.dart';

class CardTheme extends StatelessWidget {
  const CardTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
    );
  }
}