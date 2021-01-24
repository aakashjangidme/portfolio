import 'package:flutter/material.dart';

import '../../../config/app_theme.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SliverToBoxAdapter(
      child: SizedBox(
        width: size.width * 0.4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              Text(
                'Made w/ ❤ by Aakash',
                style: AppTheme.kCodeTextGrey.copyWith(fontSize: 12),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
