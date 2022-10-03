import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hovaed_effect.dart';

class HomeScreenUi extends StatefulWidget {
  const HomeScreenUi({super.key});

  @override
  State<HomeScreenUi> createState() => _HomeScreenUiState();
}

class _HomeScreenUiState extends State<HomeScreenUi>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF101225),
              Color(0xFF000c20),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: AnimatedBackground(
        behaviour: RacingLinesBehaviour(),
        vsync: this,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Image.asset('assets/logo-white.png', fit: BoxFit.cover),
          ),
          body: Stack(
            children: [
              Container(
                height: height,
                width: width,
              ),
              Padding(
                padding: const EdgeInsets.all(58.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Dev Markaz',
                      style: GoogleFonts.lobster(
                          fontSize: 100, color: Color(0xff1c72b8)),
                    ),
                    Text(
                      'It is a markaz of a developers.',
                      style:
                          GoogleFonts.oswald(fontSize: 60, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' We build software to automate all your operations \n with a seamless experience ',
                      style:
                          GoogleFonts.oswald(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 40,
                right: width / 2 - 50,
                child: HoverButton(builder: (isHovered) {
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: isHovered ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.white)),
                    child: Center(
                        child: Text(
                      'Explore',
                      style: GoogleFonts.oswald(
                          fontSize: 30,
                          color: isHovered
                              ? const Color(0xFF000c20)
                              : Colors.white),
                    )),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
