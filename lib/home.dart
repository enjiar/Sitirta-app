import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sitirta/payment.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sitirta/about.dart';
import 'package:sitirta/contact.dart';
import 'package:sitirta/history.dart';
import 'package:sitirta/invoice.dart';
import 'package:sitirta/profil.dart';

final Uri _url = Uri.parse('https://youtu.be/hXgAR9Alr94');
final Uri _urlprop = Uri.parse(
    'https://drive.google.com/file/d/1NivYN466i-YdYAdHbJ8HlMeBnav3Q_Pc');

class home extends StatefulWidget {
  //const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final currentUser = FirebaseAuth.instance;
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue.shade400,
        appBar: AppBar(
          // actions: [
          //   Container(
          //     margin: const EdgeInsets.all(8.0),
          //     padding: const EdgeInsets.all(8.0),
          //     decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.blue,
          //         boxShadow: [
          //           BoxShadow(blurRadius: 5, color: Colors.grey.shade800)
          //         ]),
          //     child: CircleAvatar(
          //       backgroundImage: AssetImage('img/logo.png'),
          //     ),
          //   ),
          // ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 130,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                    colors: [Colors.cyan.shade200, Colors.blue.shade600],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
            child: Column(children: <Widget>[
              SizedBox(
                width: 20,
                height: 10,
              ),
              // ClipOval(
              //   clipper: OvalTopBorderClipper(),
              //   child: Container(
              //     height: 120,
              //     color: Colors.yellow,
              //     child: Center(child: Text("OvalTopBorderClipper()")),
              //   ),
              // ),
              Text(
                "SITIRTA",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.2),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
                height: 0,
              ),
              Container(
                height: 80,
                width: 250,
                color: Color.fromARGB(0, 10, 8, 8),
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("users")
                      .where("userId", isEqualTo: userId?.uid)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong!");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CupertinoActivityIndicator(),
                      );
                    }
                    if (snapshot.data!.docs.isEmpty) {
                      return Center(
                        child: Text("No Data Found!"),
                      );
                    }

                    if (snapshot != null && snapshot.data != null) {
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          // var note = snapshot.data!.docs[index]['name'];
                          // var note1 =
                          //     snapshot.data!.docs[index]['datasensor'];
                          // var noteId =
                          //     snapshot.data!.docs[index]['userId'];
                          // var docId = snapshot.data!.docs[index].id;
                          // Timestamp date =
                          //     snapshot.data!.docs[index]['createdAt'];
                          // var finalDate =
                          //     DateTime.parse(date.toDate().toString());

                          return Card(
                            child: ListTile(
                                title: Text(
                              'Used : ' +
                                  snapshot.data!.docs[index]['datasensor'] +
                                  ' m3',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 24,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            )),
                          );
                        },
                      );
                    }

                    return Container();
                  },
                ),
                // child: Container(
                //     decoration: BoxDecoration(
                //         color: Colors.cyan,
                //         borderRadius: BorderRadius.all(Radius.circular(50.0))),
                //     child: new Center(
                //       child: new Text(
                //         "Used : " "20m3",
                //         style: TextStyle(
                //             color: Colors.white.withOpacity(0.8),
                //             fontFamily: 'Nunito',
                //             fontWeight: FontWeight.bold,
                //             fontSize: 24),
                //         textAlign: TextAlign.center,
                //       ),
                //     )),
              ),
            ]
                // child: Text(
                //   "SITIRTA",
                //   style: TextStyle(
                //     color: Colors.white.withOpacity(0.6),
                //     fontSize: 30,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                ),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              // StreamBuilder(
              //   stream: FirebaseFirestore.instance
              //       .collection("users")
              //       .where("userId", isEqualTo: userId?.uid)
              //       .snapshots(),
              //   builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //     if (snapshot.hasError) {
              //       return Text("Something went wrong!");
              //     }
              //     if (snapshot.connectionState == ConnectionState.waiting) {
              //       return Center(
              //         child: CupertinoActivityIndicator(),
              //       );
              //     }
              //     if (snapshot.data!.docs.isEmpty) {
              //       return Center(
              //         child: Text("No Data Found!"),
              //       );
              //     }

              //     if (snapshot != null && snapshot.data != null) {
              //       return ListView.builder(
              //         itemCount: snapshot.data!.docs.length,
              //         itemBuilder: (context, index) {
              //           // var note = snapshot.data!.docs[index]['name'];
              //           // var note1 =
              //           //     snapshot.data!.docs[index]['datasensor'];
              //           // var noteId =
              //           //     snapshot.data!.docs[index]['userId'];
              //           // var docId = snapshot.data!.docs[index].id;
              //           // Timestamp date =
              //           //     snapshot.data!.docs[index]['createdAt'];
              //           // var finalDate =
              //           //     DateTime.parse(date.toDate().toString());

              //           return Card(
              //             child: ListTile(
              //                 title: Text(
              //               'Used : ' +
              //                   snapshot.data!.docs[index]['datasensor'] +
              //                   ' m3',
              //               style: TextStyle(
              //                 color: Colors.cyan,
              //                 fontSize: 24,
              //                 fontFamily: 'Nunito',
              //                 fontWeight: FontWeight.bold,
              //               ),
              //               textAlign: TextAlign.center,
              //             )),
              //           );
              //         },
              //       );
              //     }

              //     return Container();
              //   },
              // ),   //testss
              Container(
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("users")
                        .where("userId", isEqualTo: userId?.uid)
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text("Something went wrong!");
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CupertinoActivityIndicator(),
                        );
                      }
                      if (snapshot.data!.docs.isEmpty) {
                        return Center(
                          child: Text("No Data Found!"),
                        );
                      }

                      if (snapshot != null && snapshot.data != null) {
                        return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            // var note = snapshot.data!.docs[index]['name'];
                            // var note1 =
                            //     snapshot.data!.docs[index]['datasensor'];
                            // var noteId =
                            //     snapshot.data!.docs[index]['userId'];
                            // var docId = snapshot.data!.docs[index].id;
                            // Timestamp date =
                            //     snapshot.data!.docs[index]['createdAt'];
                            // var finalDate =
                            //     DateTime.parse(date.toDate().toString());
                            // UserAccountsDrawerHeader(
                            //   accountName: Text('Putu Enji Aridona'),
                            //   accountEmail: Text(''),
                            //   currentAccountPicture: CircleAvatar(
                            //     backgroundImage: AssetImage('img/logo.png'),
                            //   ),
                            //   decoration: BoxDecoration(
                            //       gradient: LinearGradient(
                            //           colors: [
                            //         Colors.cyan.shade200,
                            //         Colors.blue.shade600
                            //       ],
                            //           begin: Alignment.bottomCenter,
                            //           end: Alignment.topCenter)),
                            // );
                            SizedBox(height: 100);
                            return Card(
                              child: ListTile(
                                  title: Text(
                                snapshot.data!.docs[index]['name'],
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontSize: 24,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              )),
                            );
                          },
                        );
                      }

                      return Container(
                          // child: UserAccountsDrawerHeader(
                          //   accountName: Text('Putu Enji Aridona'),
                          //   accountEmail: Text(''),
                          //   currentAccountPicture: CircleAvatar(
                          //     backgroundImage: AssetImage('img/logo.png'),
                          //   ),
                          //   decoration: BoxDecoration(
                          //       gradient: LinearGradient(
                          //           colors: [
                          //         Colors.cyan.shade200,
                          //         Colors.blue.shade600
                          //       ],
                          //           begin: Alignment.bottomCenter,
                          //           end: Alignment.topCenter)),
                          // ),
                          );
                    },
                  ),
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.cyan.shade200, Colors.blue.shade600],
                          begin: Alignment.bottomCenter,
                          end: Alignment
                              .topCenter)), //color: Color.fromARGB(255, 233, 60, 118),
                  alignment: Alignment.bottomLeft),
              // UserAccountsDrawerHeader(
              //   accountName: Text('Putu Enji Aridona'),
              //   accountEmail: Text(''),
              //   currentAccountPicture: CircleAvatar(
              //     backgroundImage: AssetImage('img/logo.png'),
              //   ),
              //   decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //           colors: [Colors.cyan.shade200, Colors.blue.shade600],
              //           begin: Alignment.bottomCenter,
              //           end: Alignment.topCenter)),
              // ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => profil()),
                  ));
                },
                leading: Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                title: Text(
                  "Profil",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => invoice()),
                  ));
                },
                leading: Icon(
                  Icons.description,
                  size: 30,
                ),
                title: Text(
                  "Invoice",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                onTap: () {
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(
                  //   builder: ((context) => PageSatu()),
                  // ));
                },
                leading: Icon(
                  Icons.payment,
                  size: 30,
                ),
                title: Text(
                  "Payment",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => kontak()),
                  ));
                },
                leading: Icon(
                  Icons.contacts,
                  size: 30,
                ),
                title: Text(
                  "Contact",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => payment()),
                  ));
                },
                leading: Icon(
                  Icons.casino,
                  size: 30,
                ),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          // height: double.infinity,
          // width: double.infinity,
          // child: FittedBox(
          //   fit: BoxFit.cover,
          //   child: Image.asset('img/home.jpg'),
          // ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/home.jpg"), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                  left: 10,
                  top: 10,
                  child: Align(
                    child: SizedBox(
                        width: 250,
                        height: 300,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        kontak()));
                          },
                          child: Image(
                            image: AssetImage('img/home/payment.png'),
                            alignment: Alignment.topRight,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )),
              Positioned(
                  left: 200,
                  top: 10,
                  child: Align(
                    child: SizedBox(
                        width: 225,
                        height: 225,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        invoice()));
                          },
                          child: Image(
                            image: AssetImage('img/home/invoice.png'),
                            alignment: Alignment.topRight,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )),
              Positioned(
                  left: 20,
                  top: 280,
                  child: Align(
                    child: SizedBox(
                        width: 200,
                        height: 200,
                        child: GestureDetector(
                          onTap: _launchUrl,
                          child: Image(
                            image: AssetImage('img/home/yt.png'),
                            alignment: Alignment.topRight,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )),
              // Positioned(
              //     left: 20,
              //     top: 280,
              //     child: Align(
              //       child: SizedBox(
              //         width: 200,
              //         height: 200,
              //         child: Image(
              //           image: AssetImage('img/home/yt.png'),
              //           alignment: Alignment.topRight,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     )),
              Positioned(
                  left: 205,
                  top: 250,
                  child: Align(
                    child: SizedBox(
                        width: 225,
                        height: 225,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        histori()));
                          },
                          child: Image(
                            image: AssetImage('img/home/histori.png'),
                            alignment: Alignment.topLeft,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )),
              // Positioned(
              //     left: 205,
              //     top: 250,
              //     child: Align(
              //       child: SizedBox(
              //         width: 225,
              //         height: 225,
              //         child: Image(
              //           image: AssetImage('img/home/histori.png'),
              //           alignment: Alignment.topLeft,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     )),
              Positioned(
                  left: 18,
                  top: 475,
                  child: Align(
                    child: SizedBox(
                        width: 180,
                        height: 180,
                        child: GestureDetector(
                          onTap: _launchUrlprop,
                          child: Image(
                            image: AssetImage('img/home/proposal.png'),
                            alignment: Alignment.topRight,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )),
              // Positioned(
              //     left: 18,
              //     top: 475,
              //     child: Align(
              //       child: SizedBox(
              //         width: 180,
              //         height: 180,
              //         child: Image(
              //           image: AssetImage('img/home/proposal.png'),
              //           alignment: Alignment.topRight,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     )),
              Positioned(
                  left: 210,
                  top: 475,
                  child: Align(
                    child: SizedBox(
                        width: 180,
                        height: 180,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        kontak()));
                          },
                          child: Image(
                            image: AssetImage('img/home/kontak.png'),
                            alignment: Alignment.topLeft,
                            fit: BoxFit.cover,
                          ),
                        )),
                  )),
              // Positioned(
              //     left: 210,
              //     top: 475,
              //     child: Align(
              //       child: SizedBox(
              //         width: 180,
              //         height: 180,
              //         child: Image(
              //           image: AssetImage('img/home/kontak.png'),
              //           alignment: Alignment.topLeft,
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //     )),
            ],
          ),
        ));
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUrlprop() async {
  if (!await launchUrl(_urlprop)) {
    throw Exception('Could not launch $_url');
  }
}
