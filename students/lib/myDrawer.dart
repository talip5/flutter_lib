import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_car,
                    color:Colors.white,size:100.0),
                Text('Kurnaz Nakliyat',style: TextStyle(fontSize: 25.0),
                ),
              ],
            ),
          ),
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('AnaSayfa'),
            trailing:Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "/");
            },
          ),
          ExpansionTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('Kurumsal'),
            trailing: Icon(Icons.arrow_drop_down),
            children: <Widget>[
              ListTile(
                title: Text('Biz Kimiz'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/bizkimiz");
                },
              ),
              ListTile(
                title: Text('Tarihçemiz'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/tarihcemiz");
                },
              ),
              ListTile(
                title: Text('Kurumsal'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, "/kurumsal");
                },
              ),
            ],
          ),

          ListTile(
            leading: Icon(Icons.local_laundry_service),
            title: Text('Hizmetler'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/hizmetler");
            },
          ),

          ListTile(
            leading: Icon(Icons.image),
            title: Text('Galeri'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/galeri");
            },
          ),

          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('Nasıl Yapıyoruz'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/nasilyapiyoruz");
            },
          ),

          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Ücret Hesapla'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/ucrethesapla");
            },
          ),

          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('İletişim'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/iletisim");
            },
          ),

        ],
      ),
    );
  }
}
        ],
      ),
    );
  }
}
