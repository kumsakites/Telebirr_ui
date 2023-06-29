import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({super.key});

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Account Information',
                  style: GoogleFonts.notoSerif(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.blue[50]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'NAME',
                  style: GoogleFonts.notoSerif(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'First Name',
                  style: GoogleFonts.notoSerif(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Middle Name',
                  style: GoogleFonts.notoSerif(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
