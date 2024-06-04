import 'package:url_launcher/url_launcher.dart';

/*Future<void> launchURL(String url) async {
  final Uri uri = Uri(scheme: "https", host: url);
  print("url launched");

  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Could not launch $url";
  }
}*/
void launchURL(url) async {
  //const url = 'https://x.com/moe_thetechgirl/status/1757176069231198343';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
    // mode: LaunchMode.externalApplication
  } else {
    throw 'Could not launch $url';
  }
}
