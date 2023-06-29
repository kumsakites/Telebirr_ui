import 'package:flutter/material.dart';

class RecieveScreen extends StatefulWidget {
  @override
  State<RecieveScreen> createState() => _RecieveScreenState();
}

class _RecieveScreenState extends State<RecieveScreen> {
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
