import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:web_firstpage_ui/hover_button.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnHoverButton(builder: (isHovered) {
            final color = isHovered ? Colors.purple : Colors.white;
            return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    isHovered
                        ? BoxShadow(
                            color: Colors.purple.withOpacity(0.6),
                            spreadRadius: 24,
                            blurRadius: 10,
                          )
                        : BoxShadow(
                            color: Colors.white,
                            spreadRadius: 14,
                            blurRadius: 10,
                          )
                  ]),
            );
          }),
          SizedBox(
            height: 40,
          ),
          OnHoverButton(builder: (isHovered) {
            final color = isHovered ? Colors.orange : Colors.white;
            return Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(100),
              ),
            );
          }),
        ],
      )),
    );
  }
}
