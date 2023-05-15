import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions/device_utils.dart';

void toScreen(BuildContext context, Widget screen) {
  Device.hideKeyboard(context);
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
}

void replaceScreen(BuildContext context, Widget screen) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => screen));
}

void toMainScreen(BuildContext context, Widget screen) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => screen), (route) => false);
}

initCallback(Function function) {
  WidgetsBinding.instance.addPostFrameCallback((_) => function());
}
