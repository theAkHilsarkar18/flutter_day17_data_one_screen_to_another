import 'package:flutter/material.dart';
import 'package:flutter_day17_data_one_screen_to_another/secondScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              child: InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child:
                      Icon(Icons.favorite_border_sharp, color: c4, size: 28)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: () {

                },
                child: Icon(Icons.more_vert, color: c4, size: 28),
              ),
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
                    child: TextField(
                      controller: txUsername,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: c3, letterSpacing: 2),
                      decoration: InputDecoration(
                        label: Container(
                          width: 125,
                          child: Row(children: [
                            Icon(Icons.person, color: c4),
                            Text(
                              "Username",
                              style: TextStyle(color: c4, letterSpacing: 2),
                            ),
                          ]),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: c5, style: BorderStyle.solid, width: w),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: c4, style: BorderStyle.solid, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: c4, style: BorderStyle.solid, width: 3),
                        ),
                      ),
                    ),
                  ),

                  // password
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      controller: txPassword,
                      maxLength: 8,
                      cursorColor: c4,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: c3, letterSpacing: 2),
                      decoration: InputDecoration(
                        label: Container(
                          width: 125,
                          child: Row(children: [
                            Icon(Icons.lock, color: c4),
                            Text(
                              "Password",
                              style: TextStyle(color: c4, letterSpacing: 2),
                            ),
                          ]),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: c5, style: BorderStyle.solid, width: w),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: c4, style: BorderStyle.solid, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: c4, style: BorderStyle.solid, width: 3),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Ink(
                      child: InkWell(
                        splashColor: c2,
                        onTap: () {
                          String username = txUsername.text;
                          String password = txPassword.text;

                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SecondScreen(username, password),
                              ),
                            );
                            w = 3;
                            c5 = c4;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 48,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: c4, width: w, style: BorderStyle.solid),
                          ),
                          child: Text("Login",
                              style: TextStyle(letterSpacing: 2, fontSize: 20)),
                        ),
                      ),
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
