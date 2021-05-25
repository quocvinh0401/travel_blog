import 'dart:ui';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:travel_app/strings.dart';
import 'package:travel_app/textstyles.dart';
import 'river_screen.dart';

class ForestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.srcATop),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/forest.jpg',
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 180,
            right: -30,
            child: Transform.rotate(
              angle: -pi / 2,
              child: Text('FOREST', style: TextStyles.rotateText),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 70,
                  color: Colors.grey.withOpacity(0.4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '\u2022',
                            style:
                                TextStyle(color: Colors.white, fontSize: 50)),
                        TextSpan(
                            text: '\u2022' * 2,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 50))
                      ])),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 1500),
                                transitionsBuilder:
                                (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                              return SharedAxisTransition(
                                secondaryAnimation: secondaryAnimation,
                                animation: animation,
                                child: child,
                                transitionType: SharedAxisTransitionType.horizontal,
                              );
                            }, pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return RiverScreen();
                            }),
                          );
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              letterSpacing: 2,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 40,
              top: 100,
              right: 50,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Strings.BEYOND_THE, style: TextStyles.headingText),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 30),
                      child: Text(Strings.forest_title,
                          style: TextStyles.titleText),
                    ),
                    Text(Strings.forest_subTitle,
                        style: TextStyles.subTitleText)
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
