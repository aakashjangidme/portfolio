import 'package:flutter/material.dart';
import '../../config/app_theme.dart';

class ExoticIconButton extends StatelessWidget {
  const ExoticIconButton({
    Key key,
    @required this.icon,
    @required this.onTap,
    this.iconSize = 22,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: iconSize,
        alignment: Alignment.center,
        key: key,
        splashRadius: 25,
        hoverColor: AppTheme.kAccentColor,
        color: AppTheme.kAccentColor,
        icon: Icon(
          icon,
          color: AppTheme.kAccentColor,
        ),
        onPressed: onTap,
      ),
    );
  }
}
