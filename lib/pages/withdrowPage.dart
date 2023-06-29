import 'package:flutter/material.dart';

class WithdrowScreen extends StatefulWidget {
  @override
  State<WithdrowScreen> createState() => _WithdrowScreenState();
}

class _WithdrowScreenState extends State<WithdrowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
