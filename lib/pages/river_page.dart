import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/custom_appbar.dart';
import 'package:travel_app/widgets/river_news.dart';

class RiverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/77/7d/74/777d7451b7c872465a6c841ceece5922.jpg'),
                    fit: BoxFit.cover)),
            constraints: BoxConstraints.expand(),
          ),
          Container(
            constraints: BoxConstraints.expand(),
            color: Colors.black26.withOpacity(0.2),
          ),
          SafeArea(
            child: CustomAppbar(
              text: 'Leave With River',
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            height: 670,
            margin: EdgeInsets.only(top: 90),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 20),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.yong.vn/Content/images/travels/cheo-thuyen-kayak-tren-song-nam-song-vang-vieng.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        top: 0,
                        right: 0,
                        child: Icon(
                          Icons.play_circle_filled_sharp,
                          color: Colors.grey[700],
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
                RiverNews(
                    imageUrl:
                    'https://image.freepik.com/free-vector/river-beautiful-sunset-with-tree-silhouette_104785-169.jpg',
                    title:
                    'Ghats Of Ganga: Way To Explore Spritual River Of India',
                    author: 'Tanya Roy'),
                RiverNews(
                    imageUrl:
                    'https://aceraft.com/wp-content/uploads/2019/03/19-ACEblog-Spring-Raft-01.jpg',
                    title:
                    'World\'s Most Notorious Whitewater Rafting In Futaleufu River - Chile',
                    author: 'Anderson Symons'),
                RiverNews(
                    imageUrl:
                    'https://www.chimuadventures.com/blog/wp-content/uploads/2017/06/Amazon-river_shutterstock_558269638.jpg',
                    title:
                    'What You Need To Know Before Visiting The Amazon River',
                    author: 'Jeffry Pranto'),
                RiverNews(
                    imageUrl:
                    'https://cdn.lifestyleasia.com/wp-content/uploads/sites/7/2020/11/26145515/pexels-richard-segal-1645028-806x605.jpg',
                    title:
                    'Best Scuba Diving Experience Adventure Enthusisasts At Andaman',
                    author: 'Jordan Sharma')
              ],
            ),
          )
        ],
      ),
    );
  }
}
