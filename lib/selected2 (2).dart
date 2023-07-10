import 'package:flutter/material.dart';

class Selected2 extends StatefulWidget {
  Selected2({Key? key, required this.category}) : super(key: key);
  final List category;

  @override
  State<Selected2> createState() => _SelectedState2();
}

class _SelectedState2 extends State<Selected2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF25292C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF25292C),
        title: Text(widget.category[0],
            style: TextStyle(fontWeight: FontWeight.normal)),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_outlined)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Center(
                child: Icon(Icons.check),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: widget.category[1].length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  widget.category[1][index][1] = !widget.category[1][index][1];
                });
              },
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                title: Text(widget.category[1][index][0],
                    style: TextStyle(
                        color: Color(0xFFCCCCCC),
                        fontSize: 15,
                        fontStyle: FontStyle.italic)),
                shape: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFF666666))),
                trailing: Checkbox(
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(color: Color(0xFFCCCCCC))),
                    value: widget.category[1][index][1],
                    onChanged: (val) {
                      setState(() {
                        widget.category[1][index][1] =
                            !widget.category[1][index][1];
                      });
                    }),
              ),
            );
          }),
    );
  }
}
