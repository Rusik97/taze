import 'package:filter/selected.dart';
import 'package:flutter/material.dart';

import 'names.dart';

class BolumiPage extends StatelessWidget {
  const BolumiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List category = [
      [Icons.location_city, 'Emläk', Names().names[0]],
      [Icons.tablet_mac, 'Telefonlar', Names().names[1]],
      [Icons.person_rounded, 'Is we Isgär', Names().names[2]],
      [Icons.home_repair_service_outlined, 'Hyzmatlar', Names().names[3]],
      [Icons.account_balance, 'Hojalyk tehnika', Names().names[4]],
      [Icons.stroller, 'Çagalar Ücin', Names().names[5]],
      [Icons.woman, 'Zenanlaryň geýimleri', Names().names[6]],
      [Icons.man, 'Erkekleriň geýimleri', Names().names[7]],
      [Icons.location_city, 'Öý we ofis üçin', Names().names[8]],
      [Icons.face, 'Gözellik we saglyk', Names().names[9]],
      [Icons.tv, 'Elektronika', Names().names[10]],
      [Icons.business, 'Biznes we Önumçilik', Names().names[11]],
      [Icons.photo_camera, 'Foto we wideo', Names().names[12]],
      [Icons.pets, 'Öy haywanlary', Names().names[13]],
      [Icons.computer, 'Kompýuter tehnika', Names().names[14]],
      [Icons.equalizer, 'Gurluşyk', Names().names[15]],
      [Icons.directions_bike, 'Sport we güýmenje', Names().names[16]],
      [Icons.location_city, 'Oba Hojalyk', Names().names[17]],
      [Icons.file_present_sharp, 'Ýitirilen we tapylan', Names().names[18]],
      [Icons.menu, 'Başgalar', Names().names[19]],
    ];
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: const Text('Kategoriýalar',
            style: TextStyle(fontWeight: FontWeight.normal)),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_outlined)),
        actions: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'ARASSALA',
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: category.length,
            itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                Selected(category: category[index])));
                  },
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    shape: Border(bottom: BorderSide(color: Colors.black26)),
                    leading: Icon(
                      category[index][0],
                      color: Colors.grey,
                    ),
                    title: Text(
                      category[index][1],
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                  ),
                )),
      ),
    );
  }
}
