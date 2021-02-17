import 'package:flutter/material.dart';

class AppVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Text('v${1.0}', style: textTheme.caption);
  }
}
