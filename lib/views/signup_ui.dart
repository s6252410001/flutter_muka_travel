import 'package:flutter/material.dart';
import 'package:flutter_muka_travel/views/login_ui.dart';

class SignupUI extends StatefulWidget {
  const SignupUI({Key? key}) : super(key: key);

  @override
  _SignupUIState createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupUI> {
  TextEditingController txName = TextEditingController();
  TextEditingController txLast = TextEditingController();
  TextEditingController txId = TextEditingController();
  TextEditingController txPass = TextEditingController();
  TextEditingController txConfirm = TextEditingController();

  showWarningDialog(context, msg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน..!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
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
                      txName.text = '';
                      txLast.text = '';
                      txId.text = '';
                      txPass.text = '';
                      txConfirm.text = '';
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

  confirmDialog(context, msg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน..!!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            content: Text(
              msg,
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
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
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        txName.text = '';
                        txLast.text = '';
                        txId.text = '';
                        txPass.text = '';
                        txConfirm.text = '';
                      });
                    },
                    child: Text(
                      'ยกเลิก',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                ],
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
              height: 80.0,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'SIGN UP',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width - 360),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 40.0,
              ),
              child: TextField(
                controller: txName,
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
                  labelText: 'Name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 20.0,
              ),
              child: TextField(
                controller: txLast,
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
                  labelText: 'Lastname',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 20.0,
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 20.0,
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                top: 20.0,
              ),
              child: TextField(
                controller: txConfirm,
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
                  labelText: 'Confirm Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                if (txName.text.length == 0) {
                  showWarningDialog(context, 'กรุณาป้อนชื่อ');
                } else if (txLast.text.length == 0) {
                  showWarningDialog(context, 'กรุณาป้อนนามสกุล ');
                } else if (txId.text.length == 0) {
                  showWarningDialog(context, 'กรุณาป้อน Username ');
                } else if (txPass.text.length == 0) {
                  showWarningDialog(context, 'กรุณาป้อน Password ');
                } else if (txConfirm.text.length == 0) {
                  showWarningDialog(context, 'กรุณาป้อน Confirm Password ');
                } else if (txPass.text != txConfirm.text) {
                  showWarningDialog(
                      context, 'ป้อน Confirm Password ไม่ถูกต้อง  ');
                } else {
                  confirmDialog(
                      context, 'คุณต้องการสมัครสมาชิก ใช่ หรือ ไม่ ?');
                }
              },
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 10.0,
                fixedSize:
                    Size(MediaQuery.of(context).size.width - 200.0, 45.0),
                primary: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
