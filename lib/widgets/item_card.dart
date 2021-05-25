import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard(
      {@required this.text, @required this.image, @required this.page});

  final String text;
  final String image;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
      },
      child: Container(
        width: 160,
        height: 45,
        child: Stack(
          children: [
            Container(
              width: 160,
              height: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.9), width: 5)),
            ),
            Container(
              width: 160,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black.withOpacity(0.35)),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 10,
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 0.5),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
