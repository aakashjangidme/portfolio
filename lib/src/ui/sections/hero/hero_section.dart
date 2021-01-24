import 'package:flutter/material.dart';
import '../../../config/app_theme.dart';
import '../../widgets/hover_card.dart';
import '../../widgets/responsive.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _isMobile = Responsive.isMobile(context);

    return SliverToBoxAdapter(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HoverCard(
                color: AppTheme.kAccentColor.withOpacity(1),
                margin: EdgeInsets.only(left: _isMobile ? 0 : 56),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    'Full-Stack Developer',
                    style: AppTheme.kCodeTextGrey.copyWith(
                      fontSize: 12,
                      color: Colors.black,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Container(
                margin: EdgeInsets.only(left: _isMobile ? 0 : 56),
                child: Text(
                  'Talk is cheap.\nShow me the code',
                  style: AppTheme.kCodeTextWhite.copyWith(
                    fontSize: _isMobile ? 14 : 48,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: size.width * 0.7,
                margin: EdgeInsets.only(left: _isMobile ? 0 : 56),
                child: Text(
                  'I design and code beautifully simple things,\nand I love what I do.',
                  style: AppTheme.kCodeTextWhite.copyWith(
                    fontSize: _isMobile ? 10 : 12,
                    color: AppTheme.kGreyColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 32),
              Container(
                margin: EdgeInsets.only(left: _isMobile ? 0 : 56),
                child: Text(
                  'LET\'S CHAT!',
                  style: AppTheme.kAccentButtonTextStyle.copyWith(
                      decoration: TextDecoration.underline,
                      letterSpacing: 1.5,
                      decorationThickness: 2,
                      fontSize: _isMobile ? 12 : 14),
                ),
              ),
              const SizedBox(height: 64),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '1+',
                        style: AppTheme.kCodeTextWhite.copyWith(
                          fontSize: 22,
                          color: AppTheme.kGreyColor,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'YEARS\nEXPERIENCE',
                        style: AppTheme.kCodeTextWhite.copyWith(
                          fontSize: 8,
                          color: AppTheme.kGreyColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '5+',
                        style: AppTheme.kCodeTextWhite.copyWith(
                          fontSize: 22,
                          color: AppTheme.kGreyColor,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'PROJECTS\nCOMPLETED',
                        style: AppTheme.kCodeTextWhite.copyWith(
                          fontSize: 8,
                          color: AppTheme.kGreyColor,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
