import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'bolumi_page.dart';
import 'bolumi_page2.dart';

class MainFilter extends StatefulWidget {
  const MainFilter({super.key});

  @override
  State<MainFilter> createState() => _MainFilterState();
}

class _MainFilterState extends State<MainFilter> {
  bool? firstCheck = false;
  bool? secondCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back));
          }),
          actions: [],
          toolbarHeight: 70,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          backgroundColor: Colors.green[700],
          title: Text(
            "Filter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BolumiPage()));
                },
                child: ListTile(
                    title: Text('Bölümi',
                        style:
                            TextStyle(color: Color(0xFFCCCCCC), fontSize: 17)),
                    subtitle: Text('Saýlanmadyk',
                        style:
                            TextStyle(color: Color(0xFFAAAAAA), fontSize: 15)),
                    shape: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xFF666666)))),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BolumiPage2()));
                },
                child: ListTile(
                    title: Text('Ýerleşýän ýeri',
                        style:
                            TextStyle(color: Color(0xFFCCCCCC), fontSize: 17)),
                    subtitle: Text('Saýlanmadyk',
                        style:
                            TextStyle(color: Color(0xFFAAAAAA), fontSize: 15)),
                    shape: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xFF666666)))),
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                title: Text('Diňe suraty bolanlary görkez',
                    style: TextStyle(color: Color(0xFFCCCCCC), fontSize: 16)),
                shape: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFF666666))),
                trailing: Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(color: Color(0xFFCCCCCC))),
                    value: firstCheck,
                    onChanged: (val) {
                      setState(() {
                        firstCheck = val;
                      });
                    }),
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                title: Text('Diňe täze harytlary görkez',
                    style: TextStyle(color: Color(0xFFCCCCCC), fontSize: 16)),
                shape: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFF666666))),
                trailing: Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(color: Color(0xFFCCCCCC))),
                    value: secondCheck,
                    onChanged: (val) {
                      setState(() {
                        secondCheck = val;
                      });
                    }),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Filterle",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
