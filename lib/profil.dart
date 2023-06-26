import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sitirta/home.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  User? userId = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var namaController;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'PROFIL',
          style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontFamily: 'Inter-ExtraBold',
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => home(),
              ),
            );
          },
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 100,
              child: Align(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('img/logo.png'),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 290,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 100,
                    width: 330,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(Radius.circular(0))),
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
                                    snapshot.data!.docs[index]['name'],
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent,
                                        fontSize: 24),
                                    textAlign: TextAlign.center,
                                  )),
                                );
                              },
                            );
                          }

                          return Container();
                        },
                      ),
                      // child: new Center(
                      //   child: new Text(
                      //     "I Gede Ais Waria Pandit kartika Dewi",
                      //     style: TextStyle(
                      //         color: Colors.white.withOpacity(0.8),
                      //         fontFamily: 'Nunito',
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 20),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // )
                    ),
                  ),
                )),
            Positioned(
                top: 370,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 70,
                    width: 330,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.all(Radius.circular(0))),
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
                                    snapshot.data!.docs[index]['id'],
                                    style: TextStyle(
                                        color: Colors.deepOrangeAccent,
                                        fontSize: 24),
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
                    // child: Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.cyan,
                    //         borderRadius: BorderRadius.all(Radius.circular(0))),
                    //     child: new Center(
                    //       child: new Text(
                    //         "sandiku15",
                    //         style: TextStyle(
                    //             color: Colors.white.withOpacity(0.8),
                    //             fontFamily: 'Nunito',
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 24),
                    //         textAlign: TextAlign.center,
                    //       ),
                    //     )),
                  ),
                )),
            Positioned(
                top: 460,
                left: 30,
                child: Align(
                  child: SizedBox(
                    height: 50,
                    width: 360,
                    child: Container(
                      child: TextFormField(
                        // controller: namaController
                        //   ..text = "${Get.arguments['name'].toString()}",
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                              color:
                                  Color.fromARGB(255, 0, 0, 0).withOpacity(1)),
                          border: OutlineInputBorder(),
                          hintText: 'Name',
                          enabled: true,
                        ),
                        // validator: (value) {
                        //   if (value!.length == 0) {
                        //     return "Name cannot be empty";
                        //   }
                        // },
                        onChanged: (value) {},
                      ),
                      // TextField(
                      //   decoration: InputDecoration(
                      //     labelText: "Change Password",
                      //     labelStyle:
                      //         TextStyle(color: Colors.black.withOpacity(0.8)),
                      //     border: OutlineInputBorder(),
                      //   ),
                      // ),
                    ),
                  ),
                )),
            Positioned(
              top: 550,
              left: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (() {}),
                    child: Text('delete account'),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await FirebaseFirestore.instance
                          .collection("users")
                          .doc(Get.arguments['docId'].toString())
                          .update(
                        {
                          'name': namaController.text.trim(),
                        },
                      ).then((value) => {
                                Get.offAll(() => home()),
                                log("Data Updated"),
                              });
                    },
                    child: Text("Update"),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 680,
                left: 85,
                child: Align(
                  child: SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('LOGOUT'))),
                ))
          ],
        ),
      ),
    );
  }
}
