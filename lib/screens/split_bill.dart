import 'package:flutter/material.dart';

class Split_Bill extends StatefulWidget {
  const Split_Bill({Key? key, required String title}) : super(key: key);

  @override
  State<Split_Bill> createState() {
    return _Split_BillState();
  }
}

class _Split_BillState extends State<Split_Bill> {
   late TextEditingController nameController;
   late TextEditingController contributioncontroller;

  // void initstate() {
  //   nameController = TextEditingController();
  //   contributioncontroller = TextEditingController();
  //
  //   nameController.text = "Type Contributors name here";
  //   contributioncontroller.text = "00";
  //   super.initState();
  //
  // }

  // @override
  // void dispose() {
  //   nameController.dispose();
  //   contributioncontroller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: const Center(
                              child: Text(
                                'Split-Bill',
                                style: TextStyle(
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            width: 351,
                            height: 76,
                            decoration: BoxDecoration(
                              color: const Color(0xff111727),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 339,
                            width: 357,
                            decoration: BoxDecoration(
                              color: const Color(0xff111727),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'What is Your Name?',
                                    style: TextStyle(fontSize: 28),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                        filled: true,
                                        hintText:
                                            '"Type contributors name here"',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none)),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  'What was your Contribution?',
                                  style: TextStyle(
                                    fontSize: 28,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextField(
                                    // controller: contributioncontroller,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    decoration: InputDecoration(
                                        filled: true,
                                        hintText: '0',
                                        prefixIcon: const Icon(
                                          Icons.currency_rupee,
                                          color: Color(0xff4CD964),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Container(
                                    height: 30,
                                    width: 77,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xff436CFF),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Set',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Contributors(),
                        Contributors(),
                        Contributors(),
                        Contributors(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Contributors extends StatelessWidget {
  const Contributors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 351,
        height: 76,
        decoration: BoxDecoration(
          color: const Color(0xff111727),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            children: const [
              Text(
                '   Surya',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                '365',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff4CD964),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
