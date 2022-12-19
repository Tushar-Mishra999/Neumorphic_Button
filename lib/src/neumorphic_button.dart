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
      onTap: widget.onTap, //onTap function
      child: Container(
        width: widget.width,
        height: widget.height,
        padding: widget.padding ?? const EdgeInsets.all(15),
        margin: widget.margin ?? const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: widget.backgroundColor, //containerColor
            borderRadius:
                BorderRadius.circular(widget.borderRadius ?? 10), //borderRadius
            shape: widget.boxShape ?? BoxShape.rectangle, //borderShape
            border: Border.all(
              width: widget.borderWidth ?? 0, //borderWidth
              color: widget.borderColor ?? widget.backgroundColor, //borderColor
            ),
            boxShadow: [
              //bottomRightShadowProperties
              BoxShadow(
                  color: widget.bottomRightShadowColor,
                  offset: widget.bottomRightOffset ??
                      const Offset(2, 2), //x and y coordinates of shadow
                  blurRadius: widget.bottomRightShadowBlurRadius ??
                      15, // how many pixels on the screen blend into each other; thus, a larger value will create more blur.
                  spreadRadius: widget.bottomRightShadowSpreadRadius ??
                      1), // positive values will cause the shadow to expand and grow bigger, negative values will cause the shadow to shrink
              //topLEftShadowProperties
              BoxShadow(
                  color: widget.topLeftShadowColor,
                  offset: widget.topLeftOffset ??
                      const Offset(-2, -2), //x and y coordinates of shadow
                  blurRadius: widget.topLeftShadowBlurRadius ??
                      15, // how many pixels on the screen blend into each other; thus, a larger value will create more blur.
                  spreadRadius: widget.topLeftShadowSpreadRadius ??
                      1), // positive values will cause the shadow to expand and grow bigger, negative values will cause the shadow to shrink
            ]),
        child: widget.child, //child widget of our button
      ),
    );
  }
}
