import 'dart:ui';
import 'package:flutter/material.dart';

class BlurGlass extends StatefulWidget {
  Widget child;
  double marginValue;
  double paddingValue;
  Color? color;
  double outBorderRadius;
  double inBorderRadius;
  double filterX;
  double filterY;
  BlurGlass({Key? key,
             required this.child,
             this.marginValue = 20.0,
             this.paddingValue = 20.0,
             this.color,
             this.outBorderRadius = 20.0,
             this.inBorderRadius = 30.0,
             this.filterX = 10.0,
             this.filterY = 10.0
             }) : super(key: key);

@override
_BlurGlassState createState() => _BlurGlassState();
}

class _BlurGlassState extends State<BlurGlass> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.outBorderRadius),
      child: BackdropFilter(
        //背景滤镜器
        filter: ImageFilter.blur(sigmaX: widget.filterX, sigmaY: widget.filterY),
        //图片模糊过滤，横向竖向都设置5.0
        child: Container(
          margin: EdgeInsets.all(widget.marginValue),
          padding: EdgeInsets.all(widget.paddingValue),
          decoration: BoxDecoration(
            color: widget.color??Colors.transparent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(widget.inBorderRadius),
          ),
          child: widget.child,
        ),
      ),
    );
  }

}