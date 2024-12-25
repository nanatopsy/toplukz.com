import 'package:url_launcher/url_launcher.dart';

Future<void> sendEmailWithMailto(String recipientEmail, String subject,
    String body) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: recipientEmail,
    queryParameters: {
      'subject': subject,
      'body': body,
    },
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    print('Could not launch email app.');
  }
}