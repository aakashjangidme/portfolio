import 'package:flutter/material.dart';
import 'hover_card.dart';

import '../../config/app_theme.dart';

class IntroductionSideCard extends StatelessWidget {
  const IntroductionSideCard({
    Key key,
    @required this.title,
    @required this.desc,
    @required this.iconData,
    @required this.buttonTxt,
  }) : super(key: key);

  final String title;
  final String desc;
  final IconData iconData;
  final String buttonTxt;

  @override
  Widget build(BuildContext context) {
    return HoverCard(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTheme.kCodeTextWhite.copyWith(
                    fontSize: 12,
                  ),
                ),
                Icon(
                  iconData,
                  size: 12,
                  color: AppTheme.kAccentColor,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              desc,
              style: AppTheme.kCodeTextWhite
                  .copyWith(fontSize: 8, color: AppTheme.kGreyColor),
            ),
            const SizedBox(height: 12),
            Text(
              buttonTxt,
              style:
                  TextStyle(fontSize: 10, decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
