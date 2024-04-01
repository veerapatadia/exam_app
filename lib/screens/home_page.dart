import 'package:flutter/material.dart';
import 'package:untitled/utils/all_products_data.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  // color: Colors.purple.shade200,
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        size: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Explore",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 43,
                              width: 43,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('cart_page');
                                },
                                child: Icon(
                                  Icons.shopping_cart,
                                  size: 27,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    color: Colors.indigo.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Shopping Sale ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "20% OFF",
                                    style: TextStyle(
                                      height: 1.8,
                                      fontSize: 29,
                                      letterSpacing: 1,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "discount on all the products",
                                    style: TextStyle(
                                      height: 1.5,
                                      fontSize: 22,
                                      letterSpacing: 1,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "Shop Now",
                                          style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "🛍️",
                              style: TextStyle(
                                fontSize: 45,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  //color: Colors.red,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...ProductData.allProductData.map(
                          (e) => Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 350,
                              width: 400,
                              //color: Colors.amber,
                              child: Row(
                                children: [
                                  ...e['categoryProducts']
                                      .map((Map<String, dynamic> e) {
                                    return Expanded(
                                        child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            'detail_page',
                                            arguments: e);
                                      },
                                      child: Container(
                                        padding:
                                            EdgeInsets.only(right: 3, left: 3),
                                        margin:
                                            EdgeInsets.only(right: 3, left: 3),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      flex: 3,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: NetworkImage(
                                                              "${e['thumbnail']}",
                                                            ),
                                                            fit: BoxFit.cover,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topRight: Radius
                                                                      .circular(
                                                                          20),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          20)),
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 2,
                                                      child: Container(
                                                        child: Column(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 10),
                                                              child: Row(
                                                                children: [
                                                                  Text(
                                                                    "${e['title']}",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        letterSpacing:
                                                                            1),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 15),
                                                              child: Row(
                                                                children: [
                                                                  Text(
                                                                    "\$ ${e['price']}",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          19,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 35),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Container(
                                                                    height: 30,
                                                                    width: 45,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .indigo
                                                                          .shade100,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomRight:
                                                                            Radius.circular(15),
                                                                        topLeft:
                                                                            Radius.circular(15),
                                                                      ),
                                                                    ),
                                                                    child: Icon(
                                                                        Icons
                                                                            .add),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          20),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          20)),
                                                          color: Colors
                                                              .grey.shade200,
                                                          boxShadow: <BoxShadow>[
                                                            BoxShadow(
                                                              color: Colors.grey
                                                                  .shade500,
                                                              blurRadius: 6,
                                                              spreadRadius: 1,
                                                              offset:
                                                                  Offset(0, 3),
                                                            )
                                                          ],
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
                                    ));
                                  })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
