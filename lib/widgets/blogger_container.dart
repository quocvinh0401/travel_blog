import 'package:flutter/material.dart';
import 'package:travel_app/models/blogger_model.dart';

class BloggerContainer extends StatelessWidget {
  const BloggerContainer({@required this.blogger});

  final Blogger blogger;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(6),
      // height: 10,
      width: 90,
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(blogger.imageUrl), fit: BoxFit.cover),
                shape: BoxShape.circle,
                border:
                    Border.all(color: Colors.white.withOpacity(0.8), width: 4)),
          ),
          SizedBox(height: 6),
          Expanded(
              child: Text(
            blogger.name,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ))
        ],
      ),
    );
  }
}
