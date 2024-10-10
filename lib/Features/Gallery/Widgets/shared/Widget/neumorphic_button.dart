import 'package:flutter/material.dart';

class NeumorphicButton extends StatefulWidget {
  const NeumorphicButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.child,
      this.padding,
      this.margin,
      required this.backgroundColor,
      this.borderRadius,
      this.boxShape,
      required this.bottomRightShadowColor,
      required this.topLeftShadowColor,
      this.bottomRightShadowBlurRadius,
      this.bottomRightShadowSpreadRadius,
      this.topLeftShadowBlurRadius,
      this.topLeftShadowSpreadRadius,
      required this.onTap,
      this.borderWidth,
      this.borderColor,
      this.topLeftOffset,
      this.bottomRightOffset})
      : super(key: key);
  final Widget child;
  final double width;
  final double height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final double? borderRadius;
  final BoxShape? boxShape;
  final Color bottomRightShadowColor;
  final Color topLeftShadowColor;
  final double? bottomRightShadowBlurRadius;
  final double? bottomRightShadowSpreadRadius;
  final double? topLeftShadowBlurRadius;
  final double? topLeftShadowSpreadRadius;
  final VoidCallback onTap;
  final Offset? topLeftOffset;
  final Offset? bottomRightOffset;
  final double? borderWidth;
  final Color? borderColor;
  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}
