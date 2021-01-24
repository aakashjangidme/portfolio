import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../widgets/exotic_icon_button.dart';
import '../../widgets/hover_card.dart';
import '../../widgets/responsive.dart';

import '../../../config/app_theme.dart';
import '../../../global.dart';


final Map<int, IconData> _socialIcons = {
  1: Mdi.linkedin,
  2: Mdi.github,
  3: Mdi.instagram,
  4: Mdi.facebook
};

class ContactSection extends StatelessWidget {
  const ContactSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _isMobile = Responsive.isMobile(context);
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text('Contact Information',
                style: AppTheme.kCodeTextGrey.copyWith(fontSize: 12)),
            const SizedBox(height: 32),
            HoverCard(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: SizedBox(
                  width: _isMobile ? double.infinity : size.width * 0.4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => G.launchURL(G.call),
                        child: Text(
                          '+91-9785002929',
                          style: AppTheme.kCodeTextWhite.copyWith(fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () => G.launchURL(G.mailTo),
                        child: Text(
                          G.email,
                          style: AppTheme.kCodeTextWhite.copyWith(fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Jaipur, Rajasthan (IN)',
                        style: AppTheme.kCodeTextGrey.copyWith(fontSize: 12),
                      ),
                      const SizedBox(height: 32),
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runSpacing: 16,
                        children: [
                          ..._socialIcons.entries
                              .map(
                                (k) => ExoticIconButton(
                                  iconSize: _isMobile ? 16 : 22,
                                  key: ValueKey(k.key),
                                  onTap: () {
                                    switch (k.key) {
                                      case 1:
                                        G.launchURL(G.linkedIn);

                                        break;
                                      case 2:
                                        G.launchURL(G.github);

                                        break;
                                      case 3:
                                        G.launchURL(G.insta);

                                        break;
                                      case 4:
                                        G.launchURL(G.facebook);

                                        break;
                                      default:
                                    }
                                  },
                                  icon: k.value,
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
