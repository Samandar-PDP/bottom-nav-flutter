import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom {
  String label;
  IconData icon;
  Bottom({required this.label, required this.icon});
}

var bottomList = [
  Bottom(label: "Favorites", icon: Icons.favorite),
  Bottom(label: "Music", icon: Icons.music_note),
  Bottom(label: "Places", icon: Icons.place),
  Bottom(label: "News", icon: Icons.newspaper),
];

var images = [
  'img.png',
  'img_1.png',
  'img_2.png',
  'img_3.png',
];