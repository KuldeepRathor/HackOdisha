import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackodisha/screens/registration_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../bt_navbar.dart';
import 'login_page.dart';

class Onboard extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  var list = [
    'Gain total control \n  of your money',
    'Know where your \n money goes',
    'Planning ahead \n your budget'
  ];
  var des = [
    'Become your own money manager \n and make every cent count',
    'Track your transaction easily,with categories and financial report ',
    'Setup your budget for each category so you in control'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (context, index) {
                    return Onboardcontent(
                      title: list[index],
                      description: des[index],
                    );
                  },
                  itemCount: list.length,
                ),
              ),
              SmoothPageIndicator(
                  controller: controller, // PageController
                  count: 3,
                  effect: const SlideEffect(
                      spacing: 14.0,
                      radius: 12.0,
                      dotWidth: 8.0,
                      dotHeight: 8.0,
                      dotColor: Color(0xFFEEE5FF),
                      activeDotColor:
                          Color(0xFF5C7AE5)), // your preferred effect
                  onDotClicked: (index) {}),
              const SizedBox(height: 34),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(358, 56),
                          primary: const Color(0xFF00BDAB)),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrationPage(),
                            ));
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 34),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(358, 56),
                        primary: Colors.white,
                        onPrimary: Color(0xff00BDAB),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Onboardcontent extends StatelessWidget {
  const Onboardcontent({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF6274B2),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ),
      ],
    );
  }
}
