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
        accountSid: '******************************',
        // as we cannot publish this repository publicly without masking this auth token otherwise its acess will be revoked so for further details please contact (+91-8482974719)
        authToken: '*******************************',
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
          onPressed: sendWhatsApp,
          tooltip: 'Send Sms',
          child: Icon(Icons.send),
        ),
      ),
    );
  }
}
