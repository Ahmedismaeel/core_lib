//
import 'package:flutter/material.dart';

/// Helper class for device related operations.
///
class Device {
  ///
  /// hides the keyboard if its already open
  ///
  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// orientation
  ///
  static double getScaledSize(BuildContext context, double scale) =>
      scale *
      (MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height);

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// width
  ///
  static double getScaledWidth(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.width;

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// height
  ///
  static double getScaledHeight(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.height;

  static double Y(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.height;
  static double X(BuildContext context, double scale) =>
      scale * MediaQuery.of(context).size.width;

  static double width({required double scale, required BuildContext context}) =>
      scale * MediaQuery.of(context).size.width / 375;
  static double height(
          {required double scale, required BuildContext context}) =>
      scale * MediaQuery.of(context).size.width / 375;

  static Widget spaceY(
          {required double scale, required BuildContext context}) =>
      SizedBox(
        height: height(scale: 16 * scale, context: context),
      );
  static Widget spaceX(
          {required double scale, required BuildContext context}) =>
      SizedBox(
        width: width(scale: 16 * scale, context: context),
      );
  //812
  //375
}
