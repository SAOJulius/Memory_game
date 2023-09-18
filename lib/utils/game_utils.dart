import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue
  ];
  final String hiddenCardpath = "assets/images/hidden.png";
  final box = GetStorage();

  List<String> list = [
    "assets/easy/0.jpg",
    "assets/easy/0.jpg",
    "assets/easy/1.jpg",
    "assets/easy/1.jpg",
    "assets/easy/2.jpg",
    "assets/easy/2.jpg",
    "assets/easy/3.jpg",
    "assets/easy/3.jpg",
    "assets/easy/4.jpg",
    "assets/easy/4.jpg",
    "assets/easy/5.jpg",
    "assets/easy/5.jpg",
    "assets/easy/6.jpg",
    "assets/easy/6.jpg",
    "assets/easy/7.jpg",
    "assets/easy/7.jpg",
  ];

  List<String> list1 = [
    "assets/medium/0.jpg",
    "assets/medium/0.jpg",
    "assets/medium/1.jpg",
    "assets/medium/1.jpg",
    "assets/medium/2.jpg",
    "assets/medium/2.jpg",
    "assets/medium/3.jpg",
    "assets/medium/3.jpg",
    "assets/medium/4.jpg",
    "assets/medium/4.jpg",
    "assets/medium/5.jpg",
    "assets/medium/5.jpg",
    "assets/medium/6.jpg",
    "assets/medium/6.jpg",
    "assets/medium/7.jpg",
    "assets/medium/7.jpg",
  ];
  List<String> list2 = [
    "assets/hard/0.jpg",
    "assets/hard/0.jpg",
    "assets/hard/1.jpg",
    "assets/hard/1.jpg",
    "assets/hard/2.jpg",
    "assets/hard/2.jpg",
    "assets/hard/3.jpg",
    "assets/hard/3.jpg",
    "assets/hard/4.jpg",
    "assets/hard/4.jpg",
    "assets/hard/5.jpg",
    "assets/hard/5.jpg",
    "assets/hard/6.jpg",
    "assets/hard/6.jpg",
    "assets/hard/7.jpg",
    "assets/hard/7.jpg",
  ];

  List<String> list3 = [
    "assets/extreme/1.jpg",
    "assets/extreme/2.jpg",
    "assets/extreme/3.jpg",
    "assets/extreme/4.jpg",
    "assets/extreme/5.jpg",
    "assets/extreme/6.jpg",
    "assets/extreme/7.jpg",
    "assets/extreme/8.jpg",
    "assets/extreme/9.jpg",
    "assets/extreme/10.jpg",
    "assets/extreme/11.jpg",
    "assets/extreme/12.jpg",
    "assets/extreme/13.jpg",
    "assets/extreme/14.jpg",
    "assets/extreme/15.jpg",
    "assets/extreme/16.jpg",
    "assets/extreme/17.jpg",
    "assets/extreme/18.jpg",
    "assets/extreme/19.jpg",
    "assets/extreme/20.jpg",
    "assets/extreme/21.jpg",
    "assets/extreme/22.jpg",
    "assets/extreme/23.jpg",
    "assets/extreme/24.jpg",
    "assets/extreme/25.jpg",
    "assets/extreme/26.jpg",
    "assets/extreme/27.jpg",
    "assets/extreme/28.jpg",
    "assets/extreme/29.jpg",
    "assets/extreme/30.jpg",
    "assets/extreme/31.jpg",
    "assets/extreme/32.jpg",
    "assets/extreme/1.jpg",
    "assets/extreme/2.jpg",
    "assets/extreme/3.jpg",
    "assets/extreme/4.jpg",
    "assets/extreme/5.jpg",
    "assets/extreme/6.jpg",
    "assets/extreme/7.jpg",
    "assets/extreme/8.jpg",
    "assets/extreme/9.jpg",
    "assets/extreme/10.jpg",
    "assets/extreme/11.jpg",
    "assets/extreme/12.jpg",
    "assets/extreme/13.jpg",
    "assets/extreme/14.jpg",
    "assets/extreme/15.jpg",
    "assets/extreme/16.jpg",
    "assets/extreme/17.jpg",
    "assets/extreme/18.jpg",
    "assets/extreme/19.jpg",
    "assets/extreme/20.jpg",
    "assets/extreme/21.jpg",
    "assets/extreme/22.jpg",
    "assets/extreme/23.jpg",
    "assets/extreme/24.jpg",
    "assets/extreme/25.jpg",
    "assets/extreme/26.jpg",
    "assets/extreme/27.jpg",
    "assets/extreme/28.jpg",
    "assets/extreme/29.jpg",
    "assets/extreme/30.jpg",
    "assets/extreme/31.jpg",
    "assets/extreme/32.jpg"
  ];

  List<String> cards_list = [];
  int cardCount = 16;
  List<Map<int, String>> matchCheck = [];
  List<String> check = [];

//methods
  void initGame() {
    if (box.read("mode") == "Easy") {
      cardCount = 16;
      cards_list = list;
    } else if (box.read("mode") == "Medium") {
      cardCount = 16;
      cards_list = list1;
    } else if (box.read("mode") == "Hard") {
      cardCount = 16;
      cards_list = list2;
    } else if (box.read("mode") == "Extrem") {
      cardCount = 64;
      cards_list = list3;
    } else {
      cardCount = 8;
      cards_list = list;
    }

    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
