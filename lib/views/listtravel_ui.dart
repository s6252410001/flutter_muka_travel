import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:flutter_muka_travel/views/models/listtravel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detailtravel_ui.dart';
import 'login_ui.dart';

class ListtravelUI extends StatefulWidget {
  const ListtravelUI({Key? key}) : super(key: key);

  @override
  _ListtravelUIState createState() => _ListtravelUIState();
}

class _ListtravelUIState extends State<ListtravelUI> {
  List<TravelList> travelList = [
    TravelList(
      name: 'Antika Café & Resort',
      facebook: 'Antika Café & Resort',
      linkface : 'https://www.facebook.com/antikacafeandresort',
      address: 'จ.สระบุรี ',
      mobile: '0648498627',
      image: 'antika.jpg',
      location: 'https://goo.gl/maps/fQfki9Huyyg3DRRaA',
      ads1: 'antika1.jpg',
      ads2: 'antika2.jpg',
      ads3: 'antika3.jpg',
    ),
    TravelList(
      name: 'Doolaylay',
      facebook: 'Doolaylay',
      linkface : 'https://www.facebook.com/doolaylay.homestay',
      address: 'จ.เชียงใหม่',
      mobile: '-',
      image: 'doolaylay.jpg',
      location:
          'https://www.google.com/maps/dir/?api=1&destination=18.854367940049%2C98.700305292644&fbclid=IwAR3O4yJpkkJGj-LTZeVuwRLQr9XMra8BOQG9mYx6SN_i5IZIz8J7FX2bSoc',
      ads1: 'doolaylay1.jpg',
      ads2: 'doolaylay2.jpg',
      ads3: 'doolaylay3.jpg',
    ),
    TravelList(
      name: 'ปันนาบุรี รีสอร์ท',
      facebook: 'ปันนาบุรี รีสอร์ท',
      linkface : 'https://www.facebook.com/Pannabureeinkhaoyai',
      address: 'จ.นครราชสีมา',
      mobile: '0940532996',
      image: 'panna.jpg',
      location: 'https://goo.gl/maps/M6BBDS9sR9xrU7Ky7',
      ads1: 'panna1.jpg',
      ads2: 'panna2.jpg',
      ads3: 'panna3.jpg',
    ),
    TravelList(
      name: 'แสงเทียนบีช รีสอร์ท',
      facebook: 'แสงเทียนบีช รีสอร์ท',
      linkface : 'https://www.facebook.com/SangThianBeachResort',
      address: 'เกาะสเม็ด จ.ระยอง',
      mobile: '0812959567',
      image: 'sangthian.jpg',
      location: 'https://goo.gl/maps/UtaLDhXbFrVg3cFd8',
      ads1: 'sangthian1.jpg',
      ads2: 'sangthian2.jpg',
      ads3: 'sangthian3.jpg',
    ),
    TravelList(
      name: 'Suan Lamai',
      facebook: 'Suan Lamai',
      linkface : 'https://www.facebook.com/Suanlamai',
      address: 'จ.ระยอง',
      mobile: '0987374983',
      image: 'suanlamai.jpg',
      location: 'https://goo.gl/maps/wDqHVdiuAaKUaMm27',
      ads1: 'suanlamai1.jpg',
      ads2: 'suanlamai2.jpg',
      ads3: 'suanlamai3.jpg',
    ),
    TravelList(
      name: 'The BlueSky Resort',
      facebook: 'The BlueSky Resort',
      linkface : 'https://www.facebook.com/theblueskyresorts/',
      address: 'เขาค้อ จ.เพชรบูรณ์',
      mobile: '022477310',
      image: 'bluesky.jpg',
      location: 'https://goo.gl/maps/KtxAzM5zSqsreBdD6',
      ads1: 'bluesky1.jpg',
      ads2: 'bluesky2.jpg',
      ads3: 'bluesky3.jpg',
    ),
    TravelList(
      name: 'Urban Camp Khao Yai',
      facebook: 'Urban Camp Khao Yai',
      linkface : 'https://www.facebook.com/Urbancampkhaoyai',
      address: 'เขาใหญ่ จ.นครราชสีมา',
      mobile: '0826959569',
      image: 'urban.jpg',
      location: 'https://goo.gl/maps/Acipz4FrYYHsCi38A',
      ads1: 'urban1.jpg',
      ads2: 'urban2.jpg',
      ads3: 'urban3.jpg',
    ),
    TravelList(
      name: 'Vitha Khaokho',
      facebook: 'Vitha Khaokho',
      linkface : 'https://www.facebook.com/vithakhaokho',
      address: 'เขาค้อ จ.เพชรบูรณ์',
      mobile: '0805571888',
      image: 'vitha.png',
      location: 'https://goo.gl/maps/B9uBr2RKpUr7f23Y7',
      ads1: 'vitha1.jpg',
      ads2: 'vitha2.jpg',
      ads3: 'vitha3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(
          'List Travel',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[600],
      ),
      
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Image.asset(
              'assets/images/ads.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
              ),
              child: ListView.builder(
                  itemCount: travelList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.lightGreen[100],
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            //ส่งตัวแปลไปหน้าอื่น
                            MaterialPageRoute(builder: (context) {
                              return DetailtravelUI(
                                name: travelList[index].name,
                                facebook: travelList[index].facebook,
                                linkface : travelList[index].linkface,
                                address: travelList[index].address,
                                mobile: travelList[index].mobile,
                                image: travelList[index].image,
                                location: travelList[index].location,
                                ads1: travelList[index].ads1,
                                ads2: travelList[index].ads2,
                                ads3: travelList[index].ads3,
                              );
                            }),
                          );
                        },
                        title: Text(
                          travelList[index].name,
                        ),
                        subtitle: Text(
                          travelList[index].address,
                        ),
                        leading: Image.asset(
                          'assets/images/' + travelList[index].image,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    
      drawer: Drawer(
        child: ListView (
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/profile.jpg',
                ),
              ),
              accountName: Text(
                'Apisit Kulkham',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
              accountEmail: Text(
                'ID: 6252410001',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bg.jpg'
                  ),
                  fit: BoxFit.fill
                )
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/logotravel.png'
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ข้อมูลส่วนตัว',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'นาย อภิสิทธิ์ กุลคำ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
              trailing: Text(
                'สถานะ : Admin',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
              ),
            ),
            Divider(
              color: Colors.black87,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUI(),
                        ),
                      );
              },
              title: Text(
                'ออกจากระบบ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    
    
    
    );
  }
}
