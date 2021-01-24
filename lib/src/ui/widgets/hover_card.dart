import 'package:flutter/material.dart';

import '../../config/app_theme.dart';

class HoverCard extends StatefulWidget {
  final Color color;
  final Widget child;
  final EdgeInsets margin;

  const HoverCard({
    Key key,
    this.color = AppTheme.kBgColorVariant,
    @required this.child,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);
  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: Card(
        elevation: _isHovering ? 8 : 2,
        color: widget.color,
        child: widget.child,
        margin: widget.margin,
        shape: AppTheme.kRoundBorder,
      ),
    );
  }
}
