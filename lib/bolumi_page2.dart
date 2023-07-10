import 'package:filter/selected2%20(2).dart';
import 'package:flutter/material.dart';

import 'names.dart';

class BolumiPage2 extends StatelessWidget {
  const BolumiPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List category = [
      ['Aşgabat', Names().cities[0]],
      ['Ahal welaýaty', Names().cities[1]],
      ['Balkan welaýaty', Names().cities[2]],
      ['Mary welaýaty', Names().cities[3]],
      ['Lebap welaýaty', Names().cities[4]],
      ['Daşoguz welaýaty', Names().cities[5]],
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF25292C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF25292C),
        title: const Text('Şäherler',
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
                                Selected2(category: category[index])));
                  },
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    shape: Border(bottom: BorderSide(color: Colors.black26)),
                    title: Text(
                      category[index][0],
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic),
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
