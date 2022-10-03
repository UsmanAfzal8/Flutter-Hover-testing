import 'dart:html';

import 'package:flutter/material.dart';

class OnHoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverButton({super.key, required this.builder});

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHovered = false;
  bool temp = true;
  final hoveredtransform = Matrix4.identity()..scale(1.1);
  final notHoveredtransform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onExit(false),
        child: AnimatedContainer(
            duration: Duration(milliseconds: 20),
            transform: isHovered ? hoveredtransform : notHoveredtransform,
            child: widget.builder(isHovered)));
  }

  onEntered(bool bool) {
    setState(() {
      this.isHovered = bool;
    });
  }

  onExit(bool bool) {
    setState(() {
      this.isHovered = bool;
    });
  }
}
