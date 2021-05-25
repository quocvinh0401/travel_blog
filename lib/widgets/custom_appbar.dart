import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomAppbar extends StatelessWidget {
  double size = 16;
  Color color = Colors.black;
  final String text;
  CustomAppbar({this.text, this.color, this.size}) ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.black26.withOpacity(0.1),
                blurRadius: 4,
                offset: Offset(0,1)
              )],
              borderRadius: BorderRadius.circular(6)
            ),
            height: 40,
            width: 40,
            child: Icon(Icons.filter_list, size: 30,),
          ),
          Text(text, style: TextStyle(fontSize: size, fontWeight: FontWeight.w600, color: color),),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                    color: Colors.black26.withOpacity(0.1),
                    blurRadius: 4,
                    offset: Offset(0,1)
                )],
              borderRadius: BorderRadius.circular(6)
            ),
            height: 40,
            width: 40,
            child: Icon(FontAwesomeIcons.search, size: 30,),
          )
        ],
      ),
    );
  }
}
