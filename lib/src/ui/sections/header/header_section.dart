import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import '../../../config/app_theme.dart';
import '../../widgets/exotic_icon_button.dart';
import '../../widgets/responsive.dart';
import '../../widgets/text_button.dart';

import '../../../global.dart';

const Map<int, String> _buttons = <int, String>{
  1: 'Skills',
  2: 'Works',
  4: 'Contact',
};

const Map<int, String> _socialButtons = <int, String>{
  1: 'LinkedIn',
  2: 'Github',
};

const Map<int, MdiIconData> _socialIcons = <int, MdiIconData>{
  1: Mdi.linkedin,
  2: Mdi.github,
};

class HeaderSection extends StatefulWidget {
  const HeaderSection({
    Key key,
  }) : super(key: key);

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  int _selectedButtonIndex;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 16),
      sliver: SliverToBoxAdapter(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: buildNameHeader(),
            ),
            /*
            Expanded(child: buildRouteButtons()),
            */
            if (Responsive.isDesktop(context))
              Expanded(
                child: buildSocialButtons(),
              )
          ],
        ),
      ),
    );
  }

  Row buildSocialButtons() {
    return Row(
      children: [
        ..._socialButtons.entries
            .map(
              (k) => Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: FlatButton.icon(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  hoverColor: AppTheme.kAccentColor.withOpacity(0.9),
                  textColor: Colors.black,
                  icon: Icon(
                    _socialIcons[k.key],
                    color: AppTheme.kWhiteColor,
                  ),
                  onPressed: () {
                    switch (k.key) {
                      case 1:
                        G.launchURL(G.linkedIn);

                        break;
                      case 2:
                        G.launchURL(G.github);

                        break;
                      default:
                    }
                  },
                  label: Text(
                    k.value,
                    style: AppTheme.kPrimaryButtonTextStyle,
                  ),
                ),
              ),
            )
            .toList(),
        ExoticIconButton(
          onTap: () => G.launchURL(G.mailTo),
          icon: Mdi.emailOutline,
        ),
      ],
    );
  }

  Row buildRouteButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ..._buttons.entries
            .map(
              (k) => CustomTextButton(
                key: ValueKey(k.key),
                selected: _selectedButtonIndex == k.key,
                onTap: () => setState(() => _selectedButtonIndex = k.key),
                title: k.value,
              ),
            )
            .toList(),
      ],
    );
  }

  Row buildNameHeader() {
    final _firstName = AppTheme.kCodeTextWhite.copyWith(
      fontWeight: FontWeight.w600,
      color: AppTheme.kWhiteColor,
      letterSpacing: -0.1,
    );
    final _lastName = AppTheme.kCodeTextWhite.copyWith(
      fontWeight: FontWeight.w400,
      color: AppTheme.kWhiteColor,
      letterSpacing: -0.1,
    );
    return Row(
      children: [
        Text(
          'Aakash ',
          style: _firstName,
        ),
        Text(
          'Jangid',
          style: _lastName,
        ),
      ],
    );
  }
}
