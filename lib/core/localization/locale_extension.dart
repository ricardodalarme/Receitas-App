import 'package:easy_localization/easy_localization.dart';

export 'package:desafio/core/localization/locale_keys.g.dart';

extension LocaleExtension on String {
  String get tra => this.tr();
}
