import 'package:url_launcher/url_launcher.dart';

void launchURL(url) async {
  //const url = 'https://x.com/moe_thetechgirl/status/1757176069231198343';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
