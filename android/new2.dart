import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> sendEmail(String recipientEmail, String subject, String body,
    String sendGridApiKey) async {
  final url = Uri.parse('https://api.sendgrid.com/v3/mail/send');

  final headers = {
    'Authorization': 'Bearer $sendGridApiKey',
    'Content-Type': 'application/json',
  };

  final data = {
    "personalizations": [
      {
        "to": [
          {"email": recipientEmail}
        ]
      }
    ],
    "from": {"email": "your_email@example.com"},
    // Replace with your verified sender email
    "subject": subject,
    "content": [
      {
        "type": "text/plain",
        "value": body,
      }
    ]
  };

  final response = await http.post(
    url,
    headers: headers,
    body: jsonEncode(data),
  );

  if (response.statusCode == 202) {
    print('Email sent successfully!');
  } else {
    print('Failed to send email. Status code: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
