import 'package:flutter/material.dart';

import '../strings.dart';

enum Domain {all, ios, android, flutter, sss, unity, macos, archived, unknown }

extension DomainExtension on Domain {
  String get name {
    switch (this) {
      case Domain.ios:
        return Strings.ios;
      case Domain.android:
        return Strings.android;
      case Domain.all:
        return Strings.all;
      case Domain.archived:
        return Strings.archived;
      case Domain.macos:
        return Strings.macos;
      case Domain.flutter:
        return Strings.flutter;
      case Domain.unity:
        return Strings.unity;
      default:
        return Strings.unknown;

    }
  }
}
