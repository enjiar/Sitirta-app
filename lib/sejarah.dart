import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class histor extends StatelessWidget {
  const histor({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: Colors.white,
        //   shadowColor: Colors.white,
        //   title: Text(
        //     'HISTORY',
        //     style: TextStyle(
        //         fontFamily: 'Inter-ExtraBold',
        //         fontSize: 40 * ffem,
        //         fontWeight: FontWeight.bold,
        //         color: Colors.black),
        //   ),
        // ),
        body: ListView(
      children: [
        // Expanded(
        //   child: Stack(
        //     children: [
        //       Positioned(
        //           left: 122 * fem,
        //           top: 20 * fem,
        //           child: Align(
        //               child: SizedBox(
        //             width: 146 * fem,
        //             height: 49 * fem,
        //             child: Text(
        //               'ABOUT',
        //               style: TextStyle(
        //                   fontFamily: 'Inter-ExtraBold',
        //                   fontSize: 40 * ffem,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.black),
        //             ),
        //           )))
        //     ],
        //   ),
        // ),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
        Expanded(
            child: ExpansionTile(
          title: Text('Januari'),
          children: [
            ListTile(
              title: Text('use 200'),
            )
          ],
        )),
      ],
    ));
  }
}
