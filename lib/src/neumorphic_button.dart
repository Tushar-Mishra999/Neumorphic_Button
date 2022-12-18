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

class _NeumorphicButtonState extends State<NeumorphicButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(  
        width: widget.width,
        height: widget.height,
        padding: widget.padding ?? const EdgeInsets.all(15),
        margin: widget.margin ?? const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
            shape: widget.boxShape ?? BoxShape.rectangle,
            border: Border.all(
              width: widget.borderWidth ?? 0,
              color: widget.borderColor ?? widget.backgroundColor,
            ),
            boxShadow: [
              BoxShadow(
                  color: widget.bottomRightShadowColor,
                  offset: widget.bottomRightOffset ?? const Offset(2, 2),
                  blurRadius: widget.bottomRightShadowBlurRadius ?? 15,
                  spreadRadius: widget.bottomRightShadowSpreadRadius ?? 1),
              BoxShadow(
                  color: widget.topLeftShadowColor,
                  offset: widget.topLeftOffset ?? const Offset(-2, -2),
                  blurRadius: widget.topLeftShadowBlurRadius ?? 15,
                  spreadRadius: widget.topLeftShadowSpreadRadius ?? 1),
            ]),
            child: widget.child,
      ),
    );
  }
}