import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/aboutbg.jpg"), fit: BoxFit.cover)),
        child: Stack(
          children: [
            Positioned(
                // aboutj4e (30:231)
                left: 122 * fem,
                top: 20 * fem,
                child: Align(
                    child: SizedBox(
                  width: 146 * fem,
                  height: 49 * fem,
                  child: Text(
                    'ABOUT',
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
                    'little information',
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
              // autogroupn3cnpEW (4uBMR5esEiqwM33QyJN3cN)
              left: 40 * fem,
              top: 199 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(8 * fem, 29 * fem, 8 * fem, 44 * fem),
                width: 309 * fem,
                height: 364 * fem,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Center(
                  // sitirtasistempengukurantagihan (50:242)
                  child: SizedBox(
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 293 * fem,
                      ),
                      child: Text(
                        'SITIRTA\n(Sistem pengukuran tagihan air otomatis)\nWe take measurements of the amount of water used in your home by just looking through this app. The cashless feature serves to make it easier to pay your water bills anytime and anywhere, so you are not afraid to pay it late.\n\nOur Team :\nPutu Enji Aridona\nI Gede Candra Andika\nI Gede Aiswarya Pandit K\nFeliks Ary Dwi Saputra\n\nThanks For All Support',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupmcenESe (4uBMVur9hLXXkysLWrmCEN)
              left: 97 * fem,
              top: 563 * fem,
              child: Container(
                width: 196 * fem,
                height: 197 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // logononame19Zc (86:254)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 196 * fem,
                          height: 196 * fem,
                          child: Image.asset(
                            'img/logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // sitirtaqxE (86:255)
                      left: 35 * fem,
                      top: 137 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 126 * fem,
                          height: 39 * fem,
                          child: Text(
                            'SITIRTA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // useyourwaterwiselyiWE (86:256)
                      left: 15 * fem,
                      top: 178 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 166 * fem,
                          height: 19 * fem,
                          child: Text(
                            '-use your water wisely-',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
