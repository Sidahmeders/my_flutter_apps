
import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/localization/demo_localization.dart';

String translate(BuildContext context, String key) {
  return DemoLocalization.of(context).getTranslatedValues(key);
}
