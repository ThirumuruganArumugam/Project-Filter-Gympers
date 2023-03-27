import 'package:filter/VM.dart';
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx/src/observer.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  final FilterVM _filterVM = FilterVM();

  ProductPage({super.key});

  // final xoVM _counterVM = xoVM();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xff0D031B),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 33,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "GYMPERS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: SizedBox(
                height: 50,
                width: 300,
                child: Observer(
                  builder: (context) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _filterVM.brandCollection.length,
                        itemBuilder: (BuildContext context, int index) {
                          return MaterialButton(
                            onPressed: () {
                              _filterVM.productFilter(brandindex: index);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 26,
                              child: Image.asset(
                                _filterVM.brandCollection[index] == "Nike"
                                    ? "lib/Helpers/Resources/Asset/Images/path2.png"
                                    : _filterVM.brandCollection[index] ==
                                            "Addidas"
                                        ? "lib/Helpers/Resources/Asset/Images/path3.png"
                                        : _filterVM.brandCollection[index] ==
                                                "Puma"
                                            ? "lib/Helpers/Resources/Asset/Images/path1.png"
                                            : _filterVM.brandCollection[index] ==
                                                    "All"
                                                ? "lib/Helpers/Resources/Asset/Images/path4.png"
                                                : "lib/Helpers/Resources/Asset/Images/image2.png",
                                height: 20,
                                width: 30,
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "T-shirt",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      letterSpacing: 1),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Align(
                alignment: Alignment.center,
                child: Observer(builder: (context) {
                  return Expanded(
                    child: GridView.builder(
                        itemCount: _filterVM.productCollection.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 56,
                                mainAxisSpacing: 25,
                                childAspectRatio: 0.65),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 146,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),
                                    color: Color(0xff56505F),
                                  ),
                                  child: Image.asset(
                                    _filterVM.productCollection[index]["Brand"] ==
                                            "Nike"
                                        ? _filterVM.productCollection[index]
                                            ["ProductImage"]
                                        : _filterVM.productCollection[index]
                                                    ["Brand"] ==
                                                "Addidas"
                                            ? _filterVM.productCollection[index]
                                                ["ProductImage"]
                                            : _filterVM.productCollection[index]
                                                        ["Brand"] ==
                                                    "Puma"
                                                ? _filterVM.productCollection[index]
                                                    ["ProductImage"]
                                                : _filterVM.productCollection[index]
                                                    ["ProductImage"],
                                    height: 127,
                                    width: 102,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    _filterVM.productCollection[index]["Brand"] ==
                                            "Nike"
                                        ? _filterVM.productCollection[index]
                                            ["Brand"]
                                        : _filterVM.productCollection[index]
                                                    ["Brand"] ==
                                                ["Addidas"]
                                            ? _filterVM.productCollection[index]
                                                ["Brand"]
                                            : _filterVM.productCollection[index]
                                                        ["Brand"] ==
                                                    ["Puma"]
                                                ? _filterVM.productCollection[index]
                                                    ["Brand"]
                                                : _filterVM.productCollection[index]
                                                    ["Brand"],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    _filterVM.productCollection[index]["Brand"] ==
                                            "Nike"
                                        ? _filterVM.productCollection[index]
                                            ["Category"]
                                        : _filterVM.productCollection[index]
                                                    ["Brand"] ==
                                                ["Addidas"]
                                            ? _filterVM.productCollection[index]
                                                ["Category"]
                                            : _filterVM.productCollection[index]
                                                        ["Brand"] ==
                                                    ["Puma"]
                                                ? _filterVM.productCollection[index]
                                                    ["Category"]
                                                : _filterVM.productCollection[index]
                                                    ["Category"],
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  );
                }),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(Icons.home_filled, color: Colors.white),
                SizedBox(width: 30),
                Icon(Icons.search_rounded, color: Colors.white),
                SizedBox(width: 30),
                Icon(Icons.shopping_cart_checkout, color: Colors.white),
                SizedBox(width: 30),
                Icon(Icons.person_4_outlined, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
