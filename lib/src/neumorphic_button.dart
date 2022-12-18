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
      required this.borderRadius,
      this.boxShape,
      required this.bottomRightShadowColor,
      required this.bottomRightShadowBlurRadius,
      required this.bottomRightShadowSpreadRadius,
      required this.topLeftShadowColor,
      required this.topLeftShadowBlurRadius,
      required this.topLeftShadowSpreadRadius,
      required this.onTap,
      required this.borderWidth,
      this.borderColor,
      this.gradientColors,
      required this.topLeftOffset,
      required this.bottomRightOffset})
      : super(key: key);
  final double width;
  final double height;
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final double borderRadius;
  final BoxShape? boxShape;
  final Color bottomRightShadowColor;
  final double bottomRightShadowBlurRadius;
  final double bottomRightShadowSpreadRadius;
  final Color topLeftShadowColor;
  final double topLeftShadowBlurRadius;
  final Offset topLeftOffset;
  final Offset bottomRightOffset;
  final double topLeftShadowSpreadRadius;
  final Function onTap;
  final double? borderWidth;
  final Color? borderColor;
  final List<Color>? gradientColors;
  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap(),
      child: Container(
        width: widget.width,
        height: widget.height,
        child: widget.child,
        padding: widget.padding ?? EdgeInsets.all(15),
        margin: widget.margin ?? EdgeInsets.all(5),
        decoration: BoxDecoration(
            //  gradient: LinearGradient(
            //     colors: widget.gradientColors,
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight),
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            shape: widget.boxShape ?? BoxShape.rectangle,
            border: Border.all(
              width: widget.borderWidth ?? 0,
              color: widget.borderColor ?? widget.backgroundColor,
            ),
            boxShadow: [
              BoxShadow(
                  color: widget.bottomRightShadowColor,
                  offset: widget.bottomRightOffset,
                  blurRadius: widget.bottomRightShadowBlurRadius,
                  spreadRadius: widget.bottomRightShadowSpreadRadius),
              BoxShadow(
                  color: widget.topLeftShadowColor,
                  offset: widget.topLeftOffset,
                  blurRadius: widget.topLeftShadowBlurRadius,
                  spreadRadius: widget.topLeftShadowSpreadRadius),
            ]),
      ),
    );
  }
}