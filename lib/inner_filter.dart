import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InnerFilter extends StatefulWidget {
  const InnerFilter({super.key});

  @override
  State<InnerFilter> createState() => _InnerFilterState();
}

class _InnerFilterState extends State<InnerFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Kategoriýalar',
            style: TextStyle(fontWeight: FontWeight.normal)),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 10),
            child: Text('ARASSALA'),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            title: Text('Ählisi',
                style: TextStyle(
                    color: Color(0xFFCCCCCC),
                    fontSize: 15,
                    fontStyle: FontStyle.italic)),
            shape:
                Border(bottom: BorderSide(width: 1, color: Color(0xFF666666))),
            trailing: Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.black,
                side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(color: Color(0xFFCCCCCC))),
                value: false,
                onChanged: (val) {
                  setState(() {});
                }),
          ),
        ],
      ),
    );
  }
}
