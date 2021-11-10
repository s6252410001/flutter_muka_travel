import 'package:flutter/material.dart';
import 'package:flutter_muka_travel/views/listtravel_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailtravelUI extends StatefulWidget {
  String name = '';
  String facebook = '';
  String linkface = '';
  String address = '';
  String mobile = '';
  String image = '';
  String location = '';
  String ads1 = '';
  String ads2 = '';
  String ads3 = '';

  DetailtravelUI({
    Key? key,
    required this.name,
    required this.facebook,
    required this.linkface,
    required this.address,
    required this.mobile,
    required this.image,
    required this.location,
    required this.ads1,
    required this.ads2,
    required this.ads3,
  }) : super(key: key);

  @override
  _DetailtravelUIState createState() => _DetailtravelUIState();
}

class _DetailtravelUIState extends State<DetailtravelUI> {
  //methodเปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //methodโทร
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Image.asset(
                'assets/images/' + widget.ads1,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Image.asset(
                'assets/images/' + widget.ads2,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              child: Image.asset(
                'assets/images/' + widget.ads3,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.green[100],
                shadowColor: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                          ),
                          Text(
                            '   Name : ' + widget.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.facebookF),
                          Text(
                            '   Facebook : ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _launchInBrowser(widget.linkface);
                              });
                            },
                            child: Text(
                              widget.facebook,
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.mobileAlt),
                          Text(
                            '   mobile : ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _makePhoneCall('tel:' + widget.mobile);
                              });
                            },
                            child: Text(
                              widget.mobile,
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(FontAwesomeIcons.locationArrow),
                          Text(
                            '   Location : ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _launchInBrowser(widget.location);
                              });
                            },
                            child: Text(
                              widget.address,
                              style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
