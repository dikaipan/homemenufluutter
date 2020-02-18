import 'package:flutter/material.dart';

class AppStyle {
  static double ayahsize = 20.0;
  static final title = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  static final subtitle = TextStyle(fontSize: 14.0, color: Colors.green);
  static final end2subtitle = TextStyle(
      fontSize: 12.0, color: Colors.grey[700], fontWeight: FontWeight.bold);

  static final spaceH5 = SizedBox(height: 5);
  static final spaceH10 = SizedBox(height: 10);
  static final ayah = TextStyle(fontSize: ayahsize, height: 1.5);
}

class Category {
  String title;
  String icon;

  Category(this.title, this.icon);
}

//Menu kategori Home
Stack kategory(
  IconData icon,
  String label,
  Color color,
) {
  return Stack(
    children: <Widget>[
      Container(
        padding: const EdgeInsets.all(26.0),
        alignment: Alignment.centerRight,
        child: Opacity(
          opacity: 0.3,
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              label,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ],
  );
}
