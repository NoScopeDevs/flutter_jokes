import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info/package_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final packageInfoProvider = FutureProvider<PackageInfo>(
  (_) async => await PackageInfo.fromPlatform(),
);

// @riverpod
// Future<PackageInfo> packageInfo(Ref ref) async {
//   final packageInfo = await PackageInfo.fromPlatform();
//   return packageInfo;
// }
