import 'package:flutter/material.dart';

import 'main.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HackFiles"),
        backgroundColor: Color(0xffE0115F),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MY()),
            );
          },
          child: Icon(
            Icons.account_circle_outlined,
            size: 40,
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.dashboard,
                  size: 30.0,
                ),
              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  "One app,",
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  "for all files!",
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200],
                      blurRadius: 10.0,
                      spreadRadius: 3.0,
                    )
                  ]),
              margin: EdgeInsets.only(right: 20.0),
              child: Visibility(
                visible: false,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Something',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                            BorderSide(color: Color(0xFFEDEDED), width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide:
                            BorderSide(color: Color(0xFFEDEDED), width: 1.0)),
                    fillColor: Color(0xFFEDEDED),
                    // filled: true,
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 5.0),
                      decoration: BoxDecoration(
                          color: Color(0xffE0115F),
                          borderRadius: BorderRadius.circular(15.0)),
                      child: IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[50],
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.9,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width / 2.2,
                    margin: EdgeInsets.only(right: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0XFFe5e4e2)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(image: AssetImage("assets/0.png"))),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Storage",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black
                                  ]),
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(20.0),
                                  bottomStart: Radius.circular(20.0))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0XFFe5e4e2)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(image: AssetImage("assets/1.png"))),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Images to PDF",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black
                                  ]),
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(20.0),
                                  bottomStart: Radius.circular(20.0))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.9,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width / 2.2,
                    margin: EdgeInsets.only(right: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0XFFe5e4e2)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(image: AssetImage("assets/2.png"))),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "PDF Viewer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black
                                  ]),
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(20.0),
                                  bottomStart: Radius.circular(20.0))),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.9,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0XFFe5e4e2)),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              image: AssetImage("assets/3.png"),
                              alignment: Alignment.topCenter,
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Format Conversion",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              )
                            ],
                          ),
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black
                                  ]),
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomEnd: Radius.circular(20.0),
                                  bottomStart: Radius.circular(20.0))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
