import 'package:url_launcher/url_launcher.dart';

class G {
  G._();
  static const String github = 'https://github.com/aakashjangidme';
  static const String linkedIn = 'https://www.linkedin.com/in/aakashjangidme/';
  static const String email = 'ajangid25@gmail.com';
  static const String facebook = 'https://facebook.com/itsyorsky';
  static const String insta = 'https://instagram.com/aakashjangidme';
  static const String phNumber = '+91 9785002929';

  static const String mailTo = 'mailto:$email?subject=&body=';
  static const String call = 'tel:$phNumber';

  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
