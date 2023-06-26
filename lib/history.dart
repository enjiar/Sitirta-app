import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class histori extends StatelessWidget {
  const histori({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    // aboutj4e (30:231)
                    left: 122 * fem,
                    top: 20 * fem,
                    child: Align(
                        child: SizedBox(
                      width: 180 * fem,
                      height: 49 * fem,
                      child: Text(
                        'HISTORY',
                        style: TextStyle(
                            fontFamily: 'Inter-ExtraBold',
                            fontSize: 40 * ffem,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
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
                        '-use your water wisely-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter-Light',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w300,
                          height: 1.2125 * ffem / fem,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
            //Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(20))),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          ))),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          ))),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      // left: 60 * fem,
                      // top: 0 * fem,
                      child: SizedBox(
                          width: 250 * fem,
                          height: 50 * fem,
                          child: DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: false,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: [
                              "Brazil",
                              "Italia (Disabled)",
                              "Tunisia",
                              'Canada'
                            ],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: "January",
                                labelStyle: TextStyle(),
                                //hintText: "your history",
                              ),
                            ),
                            onChanged: print,
                            //selectedItem: "Brazil",
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
