import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../config/app_theme.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    Key key,
    @required this.title,
    this.hoverColor = AppTheme.kAccentColor,
    this.color = AppTheme.kWhiteColor,
    @required this.onTap,
    this.selected = false,
    this.showBorder = false,
  }) : super(key: key);

  final String title;
  // defaults to the Accent color
  final Color hoverColor;
  final Color color;
  final Function onTap;
  final bool selected;
  final bool showBorder;

  @override
  _CustomTextButtonState createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: widget.key,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: AnimatedDefaultTextStyle(
          duration: AppTheme.kDefaultDuration,
          style: GoogleFonts.firaCode(
            textStyle: AppTheme.kPrimaryButtonTextStyle.copyWith(
              color: _isHovering || widget.selected
                  ? widget.hoverColor
                  : widget.color,
            ),
          ),
          child: widget.selected
              ? Text('< ${widget.title} >')
              : Text(widget.title),
        ),
      ),
    );
  }
}
