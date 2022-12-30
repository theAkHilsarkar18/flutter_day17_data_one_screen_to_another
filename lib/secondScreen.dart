import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  String? uname;
  String? pword;

  SecondScreen(this.uname, this.pword);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  /***********************************************************************************************************************************88*/

  // COLOR CODE DECLARATION
  Color c1 = Color(0xffF0F5F9);
  Color c2 = Color(0xffC9D6DF);
  Color c3 = Color(0xff52616B);
  Color c4 = Color(0xff1E2022);

  // FOR BORDER HIGHLIGHT AFTER LOGIN PRESSED
  Color c5 = Color(0xff52616B);

  //
  //
  // login width effect
  double w = 2;

  //
  //
  // TEXT EDITING CONTROLLER
  TextEditingController txUsername = TextEditingController();
  TextEditingController txPassword = TextEditingController();

  /***********************************************************************************************************************************88*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //
        //
        // APPBAR
        appBar: AppBar(
          backgroundColor: c1,
          leading: Icon(Icons.all_inclusive, color: c4, size: 30),
          //centerTitle: true,
          title: Text(
            "Forever Love",
            style: TextStyle(
                color: c4, letterSpacing: 4, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(Icons.favorite_border_sharp, color: c4, size: 28),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(Icons.more_vert, color: c4, size: 28),
            ),
          ],
        ),
        //
        //
        // BODY

        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: c4, style: BorderStyle.solid, width: 3),
                //color: c3,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 40),
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 2, style: BorderStyle.solid, color: c4),
                      ),
                      child: Icon(Icons.person, size: 40),
                    ),
                  ),
                  //
                  //
                  //user name
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        // border: Border.all(color: c4,style: BorderStyle.solid,width: 2),
                      ),
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        Icon(Icons.person),
                        SizedBox(width: 10,),
                        Text(
                          "${widget.uname}",
                          style: TextStyle(
                              color: c4, fontSize: 20, letterSpacing: 2),
                        ),
                      ]),
                    ),
                  ),
                  //password
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //border: Border.all(color: c4,style: BorderStyle.solid,width: 2),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        Icon(Icons.lock),
                        SizedBox(width: 10,),
                        Text(
                          "${widget.pword}",
                          style: TextStyle(
                              color: c4, fontSize: 20, letterSpacing: 2),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        backgroundColor: c2,
      ),
    );
  }
}
