import 'package:flutter/material.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/models/blogger_model.dart';
import 'package:travel_app/pages/page.dart';
import 'package:travel_app/pages/story_page.dart';
import 'package:travel_app/textstyles.dart';
import 'package:travel_app/widgets/blogger_container.dart';
import 'package:travel_app/widgets/custom_appbar.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/widgets/item_card.dart';
import '../strings.dart';

class HomeScreen extends StatelessWidget {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
                text: DateFormat('d MMM, yyyy, EEEE').format(now).toString()),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
              child: Text(
                Strings.blogger_of_the_week,
                style: TextStyles.headingText2,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bloggers.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Blogger blogger = bloggers[index];
                    return BloggerContainer(blogger: blogger);
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                Strings.fresh_inspiring_story,
                style: TextStyles.headingText2,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> StoryPage()));
                        },
                        child: Stack(
                          children: [
                            Hero(
                              tag: 'story 0',
                              child: Stack(
                                children: [
                                  Container(
                                    height: 250,
                                    width: 210,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(stories[0].image),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(20)),
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
                                        borderRadius: BorderRadius.circular(20)),
                                    height: 250,
                                    width: 210,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(stories[0].title,
                                      style: TextStyles.titleStory),
                                  SizedBox(height: 10),
                                  Text(
                                    'By: ${stories[0].author}',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: (){
                          print('story tapped');
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 210,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(stories[1].image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.green[600].withOpacity(0.2),
                                        Colors.green[900].withOpacity(0.6)
                                      ]),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 250,
                              width: 210,
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(stories[1].title,
                                      style: TextStyles.titleStory),
                                  SizedBox(height: 10),
                                  Text(
                                    'By: ${stories[1].author}',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8)),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(Strings.what_you_want_read,
                  style: TextStyles.headingText2),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemCard(
                          text: 'FOREST',
                          image: 'assets/images/forest_item.jpeg',
                        page: ForestPage(),
                      ),
                      ItemCard(
                          text: 'MOUNTAINS',
                          image: 'assets/images/mountain_item.jpg', page: MountainPage(),),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemCard(
                          text: 'RIVER', image: 'assets/images/river_item.jpg', page: RiverPage(),),
                      ItemCard(
                          text: 'CITY\'S', image: 'assets/images/city_item.png', page: CityPage(),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
