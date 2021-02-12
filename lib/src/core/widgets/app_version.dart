import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/package_info_provider.dart';

class AppVersion extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final textTheme = Theme.of(context).textTheme;

    return watch(packageInfoProvider).when(
      data: (info) => Text('v${info.version}', style: textTheme.caption),
      loading: () => CircularProgressIndicator(),
      error: (error, _) => Text(error),
    );
  }
}
