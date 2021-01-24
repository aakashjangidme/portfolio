import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:mdi/mdi.dart';

class InfoSideCard {
  final String title;
  final String desc;
  final IconData iconData;
  final String buttonTxt;
  InfoSideCard({
    this.title,
    this.desc,
    this.iconData,
    this.buttonTxt,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'desc': desc,
      'iconData': iconData?.codePoint,
      'buttonTxt': buttonTxt,
    };
  }

  factory InfoSideCard.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return InfoSideCard(
      title: map['title'],
      desc: map['desc'],
      iconData: IconData(map['iconData'], fontFamily: 'MaterialIcons'),
      buttonTxt: map['buttonTxt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InfoSideCard.fromJson(String source) =>
      InfoSideCard.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InfoSideCard(title: $title, desc: $desc, iconData: $iconData, buttonTxt: $buttonTxt)';
  }
}

final List<InfoSideCard> sideList = [
  InfoSideCard(
    title: 'Front-End',
    desc: 'Create digital products and unique Ideas',
    iconData: Mdi.codeBraces,
    buttonTxt: '2 PROJECTS',
  ),
  InfoSideCard(
    title: 'Back-End',
    desc: 'Create digital products and unique Ideas',
    iconData: Mdi.codeEqual,
    buttonTxt: '2 PROJECTS',
  ),
  InfoSideCard(
    title: 'Cloud',
    desc: 'Create digital products and unique Ideas',
    iconData: Mdi.cloud,
    buttonTxt: '2 PROJECTS',
  ),
];
