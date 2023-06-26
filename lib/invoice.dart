import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sitirta/payment.dart';

class invoice extends StatefulWidget {
  const invoice({super.key});

  @override
  State<invoice> createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                left: 125,
                top: 20,
                child: Align(
                    child: SizedBox(
                  width: 170,
                  height: 49,
                  child: Text(
                    'INVOICE',
                    style: TextStyle(
                        fontFamily: 'Inter-ExtraBold',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ))),
            Positioned(
                left: 77,
                top: 80,
                child: Align(
                  child: SizedBox(
                    width: 255,
                    height: 17,
                    child: Image.asset(
                      'img/devider.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
              // littleinformation8Mg (30:233)
              left: 130,
              top: 108,
              child: Align(
                child: SizedBox(
                  width: 150,
                  height: 19,
                  child: Text(
                    'Invoice for this month',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter-Light',
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      height: 1.2125 * ffem / fem,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 170,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 40,
                    width: 340,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                          border: Border.all(color: Colors.black, width: 1)),
                      // child: new Center(
                      //   child: new Text(
                      //     "Tagihan bulan",
                      //     style: TextStyle(
                      //         color: Colors.white.withOpacity(0.8),
                      //         fontFamily: 'Nunito',
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 20),
                      //     textAlign: TextAlign.start,
                      //   ),
                      // )
                      child: new Text(
                        "  Tagihan Bulan",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 209,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 100,
                    width: 340,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: new Center(
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection("users")
                                .where("userId", isEqualTo: userId?.uid)
                                .snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return Text("Something went wrong!");
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
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

                                    return Text(
                                      snapshot.data!.docs[index]['month'],
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      textAlign: TextAlign.center,
                                    );
                                  },
                                );
                              }

                              return Container();
                            },
                          ),
                        )),
                  ),
                )),
            Positioned(
              top: 270,
              left: 30,
              child: Align(
                child: SizedBox(
                    height: 40,
                    width: 340,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: new Text(
                        "  Jumlah Pakai",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                    )),
              ),
            ),
            Positioned(
                top: 309,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 100,
                    width: 340,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: new Center(
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection("users")
                                .where("userId", isEqualTo: userId?.uid)
                                .snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return Text("Something went wrong!");
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
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

                                    return Text(
                                      'Used : ' +
                                          snapshot.data!.docs[index]
                                              ['datasensor'] +
                                          ' m3',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.8),
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      textAlign: TextAlign.center,
                                    );
                                  },
                                );
                              }

                              return Container();
                            },
                          ),
                        )),
                  ),
                )),
            Positioned(
              top: 370,
              left: 30,
              child: Align(
                child: SizedBox(
                    height: 40,
                    width: 340,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: new Text(
                        "  Harga Perkubik",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        textAlign: TextAlign.start,
                      ),
                    )),
              ),
            ),
            Positioned(
                top: 400,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 40,
                    width: 340,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: new Center(
                          child: new Text(
                            "Rp. 1000/m3",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ),
                )),
            Positioned(
                top: 500,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        child: new Text(
                          "Sub Total",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'Inter-ExtraBold',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.left,
                        )),
                  ),
                )),
            Positioned(
                top: 455,
                left: 200,
                child: Align(
                  child: SizedBox(
                    height: 100,
                    width: 190,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection("users")
                            .where("userId", isEqualTo: userId?.uid)
                            .snapshots(),
                        builder:
                            (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text("Something went wrong!");
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
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
                                    'Rp. ' +
                                        snapshot.data!.docs[index]
                                            ['datasensor'] +
                                        '000,00',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontFamily: 'Inter-ExtraBold',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    textAlign: TextAlign.center,
                                  )),
                                );
                              },
                            );
                          }

                          return Container();
                        },
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 550,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        child: new Text(
                          "Biaya Admin",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'Inter-ExtraBold',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.left,
                        )),
                  ),
                )),
            Positioned(
                top: 550,
                left: 240,
                child: Align(
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        child: new Text(
                          "Rp.   2.000,00",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'Inter-ExtraBold',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.left,
                        )),
                  ),
                )),
            Positioned(
              top: 590,
              left: 30,
              child: Align(
                child: SizedBox(
                  width: 350,
                  height: 17,
                  child: Image.asset(
                    'img/jumlah.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 630,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        child: new Text(
                          "TOTAL",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'Inter-ExtraBold',
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                          textAlign: TextAlign.left,
                        )),
                  ),
                )),
            Positioned(
                top: 585,
                left: 180,
                child: Align(
                  child: SizedBox(
                    height: 100,
                    width: 200,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                      ),
                      child: StreamBuilder(
                        stream: FirebaseFirestore.instance
                            .collection("users")
                            .where("userId", isEqualTo: userId?.uid)
                            .snapshots(),
                        builder:
                            (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text("Something went wrong!");
                          }
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
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
                                    'Rp. ' +
                                        snapshot.data!.docs[index]
                                            ['datasensor'] +
                                        '000,00',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontFamily: 'Inter-ExtraBold',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                    textAlign: TextAlign.center,
                                  )),
                                );
                              },
                            );
                          }

                          return Container();
                        },
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 700,
                left: 70,
                child: Align(
                  child: SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const payment()),
                            );
                          },
                          child: Text(
                            'PAYMENT',
                            style: TextStyle(fontSize: 20),
                          ))),
                ))
          ],
        ),
      ),
    );
  }
}
