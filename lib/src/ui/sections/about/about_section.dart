import 'package:flutter/material.dart';
import '../../../config/app_theme.dart';
import '../../../models/info_side_card.dart';
import '../../widgets/introduction_side_card.dart';
import '../../widgets/responsive.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final _isMobile = Responsive.isMobile(context);

    return SliverToBoxAdapter(
      child: Responsive(
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...sideList
                .map(
                  (k) => Container(
                    margin: EdgeInsets.only(top: 8),
                    child: IntroductionSideCard(
                      key: ValueKey(k.title),
                      title: k.title,
                      iconData: k.iconData,
                      buttonTxt: k.buttonTxt,
                      desc: k.desc,
                    ),
                  ),
                )
                .toList(),
          ],
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...sideList
                      .map(
                        (k) => Container(
                          margin: EdgeInsets.only(top: 8),
                          child: IntroductionSideCard(
                            key: ValueKey(k.title),
                            title: k.title,
                            iconData: k.iconData,
                            buttonTxt: k.buttonTxt,
                            desc: k.desc,
                          ),
                        ),
                      )
                      .toList(),
                ],
              ),
            ),
            const SizedBox(width: 80),
            Flexible(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Introduction',
                      style: AppTheme.kCodeTextGrey.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Hello! I\'m Aakash Jangid',
                      style: AppTheme.kCodeTextWhite.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Every great design begins with an even better story',
                      style: AppTheme.kCodeTextWhite.copyWith(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                      style: AppTheme.kCodeTextGrey.copyWith(
                        fontSize: 8,
                        letterSpacing: 0.5,
                        wordSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
