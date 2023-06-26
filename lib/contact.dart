import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class kontak extends StatelessWidget {
  const kontak({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/kontakbg.jpg"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                // aboutj4e (30:231)
                left: 122 * fem,
                top: 20 * fem,
                child: Align(
                    child: SizedBox(
                  width: 200 * fem,
                  height: 49 * fem,
                  child: Text(
                    'CONTACT',
                    style: TextStyle(
                        fontFamily: 'Inter-ExtraBold',
                        fontSize: 40 * ffem,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))),
            Positioned(
                left: 67 * fem,
                top: 76 * fem,
                child: Align(
                  child: SizedBox(
                    width: 255 * fem,
                    height: 17 * fem,
                    child: Image.asset(
                      'img/devider.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
              // littleinformation8Mg (30:233)
              left: 138 * fem,
              top: 101 * fem,
              child: Align(
                child: SizedBox(
                  width: 114 * fem,
                  height: 19 * fem,
                  child: Text(
                    'All to contact us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter-Light',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                left: 60 * fem,
                top: 180 * fem,
                child: SizedBox(
                    width: 200 * fem,
                    height: 30 * fem,
                    child: Text(
                      'Our Address',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ))),
            Positioned(
                left: -20 * fem,
                top: 250 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 30 * fem,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                left: 110 * fem,
                top: 250 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 120 * fem,
                  child: Text(
                    'Kampus Politeknik Negeri Bali, \nBukit Jimbaran, Kuta Selatan, Badung',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                )),
            Positioned(
                left: -20 * fem,
                top: 350 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 30 * fem,
                  child: Icon(
                    Icons.chat_rounded,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                left: 110 * fem,
                top: 390 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 120 * fem,
                  child: Text(
                    '+62 (0361)701981',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                )),
            Positioned(
                left: -20 * fem,
                top: 390 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 30 * fem,
                  child: Icon(
                    Icons.chat_rounded,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                left: 110 * fem,
                top: 350 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 120 * fem,
                  child: Text(
                    '+62 (0361)701981',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                )),
            Positioned(
                left: -20 * fem,
                top: 430 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 30 * fem,
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                left: 110 * fem,
                top: 430 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 120 * fem,
                  child: Text(
                    'poltek@pnb.ac.id',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                )),
            Positioned(
                left: -20 * fem,
                top: 470 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 30 * fem,
                  child: Icon(
                    Icons.cloud,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                left: 110 * fem,
                top: 470 * fem,
                child: SizedBox(
                  width: 200 * fem,
                  height: 120 * fem,
                  child: Text(
                    'SITIRTA',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
