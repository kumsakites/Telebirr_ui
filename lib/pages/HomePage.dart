import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';
import '../widget/ItemsWidgetThird.dart';
import '../widget/item_widget.dart';
import 'RegistrationPage.dart';

import 'fundraisePage.dart';
import 'home_screen.dart';
import 'recievePage.dart';
import 'sendPage.dart';
import 'withdrowPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color forColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        // child: Padding(
        //   padding: EdgeInsets.all(
        //     10,
        //   ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Color(0xFFEF330),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image(
                            image: AssetImage(
                              'images/tel.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/kumii.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 10,
                      shadowColor: Colors.blue[100],
                      color: Colors.blue[800],
                      // width: 200,
                      // height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'ETB',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  '1,270.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 36),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.gift,
                                  color: Colors.yellow,
                                  size: 35,
                                ),
                                Text(
                                  '15.00',
                                  style: TextStyle(color: Colors.yellow),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Rewarded',
                                  style: TextStyle(color: Colors.yellow),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.black54,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'View Balance',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: 130,
                    child: Card(
                      color: Color.fromARGB(187, 206, 163, 35),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 10,
                      shadowColor: Colors.blue[100],
                      // width: 200,
                      // height: 100,
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.storefront_outlined,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Financial',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Services',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SendScreen()));
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.outbox,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Send',
                                style: GoogleFonts.notoSerif(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecieveScreen()));
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.move_to_inbox_rounded,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Recieve',
                                style: GoogleFonts.notoSerif(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WithdrowScreen()));
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.price_change_rounded,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Recharge',
                                style: GoogleFonts.notoSerif(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WithdrowScreen()));
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.bento_rounded,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Withdrow',
                                style: GoogleFonts.notoSerif(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FundScreen()));
                      },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_balance_rounded,
                                color: Colors.black87,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Fundraising',
                                style: GoogleFonts.notoSerif(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('images/send1.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('images/send6.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 300, child: Image.asset('images/send5.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('images/send4.png'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Quick Access',
                    style: GoogleFonts.notoSerif(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.add_box,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/te1.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Pay bill'),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/ride.png'),
                      ),
                    ),
                  ),
                  Text('Ride'),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                        image: AssetImage('images/ticket.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transactions',
                    style: GoogleFonts.notoSerif(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text('daily'),
                          value: 'daily',
                        ),
                        DropdownMenuItem(
                          child: Text('weekly'),
                          value: 'weekly',
                        ),
                        DropdownMenuItem(
                          child: Text('monthly'),
                          value: 'monthly',
                        ),
                        DropdownMenuItem(
                          child: Text('Annually'),
                          value: 'Annually',
                        ),
                      ],
                      onChanged: (Object? value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      child: Card(
                        color: Colors.green[100],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 10,
                        shadowColor: Colors.blue[100],
                        child: Icon(
                          Icons.mobile_friendly,
                          color: Colors.green[600],
                          size: 40,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Bought 1GB daily internet page',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '10-12-2023 | 12:46 AM',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '-35.00',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      child: Card(
                        color: Colors.green[100],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 10,
                        shadowColor: Colors.blue[100],
                        child: Icon(
                          Icons.mobile_friendly,
                          color: Colors.green[600],
                          size: 40,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Bought 1GB daily internet page',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '10-12-2023 | 12:46 AM',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Card(
                        color: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        elevation: 10,
                        shadowColor: Colors.blue[100],
                        // width: 200,
                        // height: 100,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecieveScreen()));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'images/qr.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                  Text(
                                    'Scan QR',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  ap.isSignedIn ==
                          true // when true then fetch shared preference data
                      ? Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()))
                      : Navigator.pushNamed(context, 'RegistrationPage');
                },
                child: Text('Go to Registration Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
