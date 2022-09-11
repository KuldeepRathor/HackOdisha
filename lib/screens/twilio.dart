import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twilio_flutter/twilio_flutter.dart';

class Twilio extends StatefulWidget {
  final String title;

  const Twilio({super.key, required this.title});

  @override
  State<Twilio> createState() => _TwilioState();
}

class _TwilioState extends State<Twilio> {
  late TwilioFlutter twilioFlutter;

  @override
  void initState() {
    twilioFlutter = TwilioFlutter(
        accountSid: 'AC8837a1ff5324b1a057d04add590bf346',
        authToken: '5853d4a53ffebbad7d57f792777fb9c3',
        twilioNumber: '+18086463642');
    super.initState();
  }

  void sendSms() async {
    twilioFlutter.sendSMS(
        toNumber: ' +918482974719',
        messageBody: 'Hii everyone this is a demo of\nflutter twilio sms.');
  }

  void getSms() async {
    var data = await twilioFlutter.getSmsList();
    print(data);
    await twilioFlutter.getSMS('***************************');
  }

  void sendWhatsApp() {
    twilioFlutter.sendWhatsApp(
        toNumber: '+918482974719', messageBody: 'hello world');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Press the button to send SMS.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: sendSms,
          tooltip: 'Send Sms',
          child: Icon(Icons.send),
        ),
      ),
    );
  }
}
