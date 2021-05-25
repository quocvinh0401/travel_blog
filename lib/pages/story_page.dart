import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/strings.dart';

class StoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Stack(
            children: [
              Hero(
                tag: 'story 0',
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.58,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(stories[0].image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(35))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.orangeAccent[400].withOpacity(0.2),
                                Colors.orangeAccent[400].withOpacity(0.6)
                              ]),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(35))),
                      height: MediaQuery.of(context).size.height * 0.58,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 40,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Icon(FontAwesomeIcons.instagram),
                          SizedBox(height: 8),
                          Icon(FontAwesomeIcons.facebook),
                          SizedBox(height: 8),
                          Icon(FontAwesomeIcons.youtube),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      stories[0].title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'By: ${stories[0].author}',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white.withOpacity(0.7),
                            ),
                            Text(
                              '  268K',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.white.withOpacity(0.7),
                            ),
                            Text(
                              '  18 min to read',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                    child: Text(
                      '\"You are a curious and a restless soul, and that is the problem and the solution to everything!\"',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    height: 185,
                    child: ListView(
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.zero,
                      children: [
                        Text(
                          Strings.description,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.8)
                  ]
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
