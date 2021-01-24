import 'dart:ui';

import 'package:flutter/material.dart';

import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/footer/footer_section.dart';
import 'sections/header/header_section.dart';
import 'sections/hero/hero_section.dart';
import 'widgets/responsive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();
  @override
  void dispose() {
    _trackingScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2E32),
      body: Responsive(
        mobile: _HomeScreenMobile(
          scrollController: _trackingScrollController,
        ),
        desktop: _HomeScreenDesktop(
          scrollController: _trackingScrollController,
        ),
      ),
    );
  }
}

class _HomeScreenDesktop extends StatelessWidget {
  const _HomeScreenDesktop({
    Key key,
    @required this.scrollController,
  }) : super(key: key);

  final TrackingScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scrollbar(
      child: Center(
        child: SizedBox(
          height: size.height,
          width: size.width * 0.8,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              const HeaderSection(),
              const SliverToBoxAdapter(child: SizedBox(height: 56)),
              const HeroSection(),
              const SliverToBoxAdapter(child: SizedBox(height: 80)),
              const AboutSection(),
              const SliverToBoxAdapter(child: SizedBox(height: 80)),
              const ContactSection(),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeScreenMobile extends StatelessWidget {
  const _HomeScreenMobile({
    Key key,
    @required this.scrollController,
  }) : super(key: key);
  final TrackingScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        height: size.height,
        width: size.width * 0.8,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            const HeaderSection(),
            const SliverToBoxAdapter(child: SizedBox(height: 56)),
            const HeroSection(),
            const SliverToBoxAdapter(child: SizedBox(height: 80)),
            const AboutSection(),
            const SliverToBoxAdapter(child: SizedBox(height: 80)),
            const ContactSection(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
