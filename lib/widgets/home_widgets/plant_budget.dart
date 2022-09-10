import 'package:flutter/material.dart';

import '../../screens/plan_budget_stepper.dart';

class PlanYourBudget extends StatefulWidget {
  const PlanYourBudget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<PlanYourBudget> createState() => _PlanYourBudgetState();
}

class _PlanYourBudgetState extends State<PlanYourBudget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.size.height * 0.15,
        width: widget.size.width - 24,
        decoration: BoxDecoration(
          color: const Color(0xff00BDAB),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlanYourBudgetScreen(),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 22, 12, 6),
                      child: Text(
                        'Lets Plan your Budget..',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text('Get better insights on your money',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/Saly-26.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
