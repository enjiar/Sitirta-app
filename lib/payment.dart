import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_braintree/flutter_braintree.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  static const String tokenizationKey = 'sandbox_q7rkzj9f_8q9h85npnzyjqry5';
  User? userId = FirebaseAuth.instance.currentUser;

  /// For use in Braintree SDKs

  void showNonce(BraintreePaymentMethodNonce nonce) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Payment method nonce:'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Nonce: ${nonce.nonce}'),
            SizedBox(height: 16),
            Text('Type label: ${nonce.typeLabel}'),
            SizedBox(height: 16),
            Text('Description: ${nonce.description}'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Paypal In Flutter Test Mode")),
      body: Container(
        child: Stack(children: [
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
                    height: 1.2125,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 150,
              left: 30,
              child: Align(
                child: SizedBox(
                  height: 60,
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
              top: 210,
              left: 30,
              child: Align(
                child: SizedBox(
                  height: 60,
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
              top: 270,
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
              top: 340,
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
              top: 300,
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
                                      snapshot.data!.docs[index]['datasensor'] +
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
              left: 35,
              top: 400,
              child: SizedBox(
                  width: 350,
                  height: 100,
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: false,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: ["Bank BCA", "Bank Mandiri", "Bank BRI", 'Bank BNI'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Transfer Bank",
                        labelStyle: TextStyle(),
                        //hintText: "your history",
                      ),
                    ),
                  ))),
          Positioned(
              left: 35,
              top: 450,
              child: SizedBox(
                  width: 350,
                  height: 100,
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: false,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: ["OVO", "GoPay", "Dana", 'ShopeePay'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "E-Wallet",
                        labelStyle: TextStyle(),
                        //hintText: "your history",
                      ),
                    ),
                  ))),
          Positioned(
              left: 35,
              top: 500,
              child: SizedBox(
                  width: 350,
                  height: 100,
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: false,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    //items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Credit Card",
                        labelStyle: TextStyle(),
                        //hintText: "your history",
                      ),
                    ),
                  ))),
          Positioned(
              left: 35,
              top: 550,
              child: SizedBox(
                  width: 350,
                  height: 100,
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: false,
                      disabledItemFn: (String s) => s.startsWith('I'),
                    ),
                    items: [
                      "Indomart",
                      "Alfamart",
                    ],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        labelText: "Partner Agency",
                        labelStyle: TextStyle(),
                        //hintText: "your history",
                      ),
                    ),
                  ))),
          Positioned(
            top: 625,
            left: 60,
            child: Align(
              child: SizedBox(
                  height: 50,
                  width: 300,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan.withOpacity(0.6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage('img/paypal.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ),
          ),
          Positioned(
            top: 690,
            left: 170,
            child: ElevatedButton(
                onPressed: () async {
                  var request = BraintreeDropInRequest(
                    tokenizationKey: tokenizationKey,
                    collectDeviceData: true,
                    paypalRequest: BraintreePayPalRequest(
                      amount: '200.000',
                      displayName: 'coca',
                    ),
                  );
                  final result = await BraintreeDropIn.start(request);
                  if (result != null) {
                    showNonce(result.paymentMethodNonce);
                  }
                },
                child: Text("PAY")),
          )
        ]),

        //
      ),
    );
  }
}
