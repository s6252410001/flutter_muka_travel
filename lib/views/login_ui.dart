import 'package:flutter/material.dart';
import 'package:flutter_muka_travel/views/signup_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'listtravel_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  String mockupID = 'username';
  String mockupPass = 'password';

  TextEditingController txId = TextEditingController();
  TextEditingController txPass = TextEditingController();

  showWarningDialog(context, msg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน..!!',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            content: Text(
              msg,
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      txId.text = '';
                      txPass.text = '';
                    });
                  },
                  child: Text(
                    'ตกลง',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Image.asset(
              'assets/images/logotravel.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 50.0,
              ),
              child: TextField(
                controller: txId,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  labelText: 'Username',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 15.0,
              ),
              child: TextField(
                controller: txPass,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.0,
                      color: Colors.black54,
                    ),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (txId.text.length == 0) {
                      showWarningDialog(context, 'กรุณาป้อน ID ');
                    } else if (txPass.text.length == 0) {
                      showWarningDialog(context, 'กรุณาป้อน Password ');
                    } else {
                      if (txId.text != mockupID) {
                        showWarningDialog(context, 'ID ของท่านไม่ถูกต้อง');
                      } else if (txPass.text != mockupPass) {
                        showWarningDialog(
                            context, 'Password ของท่านไม่ถูกต้อง');
                      } else {
                        setState(() {
                          txId.text = '';
                          txPass.text = '';
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListtravelUI(),
                          ),
                        );
                      }
                    }
                  },
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width - 240.0, 45.0),
                    primary: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUI(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      color: Colors.black54,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width - 240.0, 45.0),
                    primary: Colors.red[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 40.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  showWarningDialog(context, 'ระบบยังไม่พร้อมให้บริการ ');
                },
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                ),
                label: Text(
                  'Facebook',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width - 80.0, 45.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                    ),
                    primary: Color(0xFF1E5A99)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 15.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  showWarningDialog(context, 'ระบบยังไม่พร้อมให้บริการ ');
                },
                icon: Icon(
                  FontAwesomeIcons.google,
                ),
                label: Text(
                  'Google',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 10.0,
                    fixedSize:
                        Size(MediaQuery.of(context).size.width - 80.0, 45.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        40.0,
                      ),
                    ),
                    primary: Color(0xFFFF3200)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
