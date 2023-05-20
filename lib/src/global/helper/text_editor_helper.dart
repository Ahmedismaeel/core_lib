import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

TextEditingController useListenableTextController({String? value}) {
  TextEditingController controller =
      useTextEditingController(text: value ?? '');
  useListenable(controller);
  return controller;
}
