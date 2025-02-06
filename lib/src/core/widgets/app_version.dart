import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/package_info_provider.dart';

class AppVersion extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return ref.watch(packageInfoProvider).when(
          data: (info) => Text('v${info.version}', style: textTheme.labelSmall),
          error: (error, _) => Text(error.toString()),
          loading: CircularProgressIndicator.new,
        );
  }
}
