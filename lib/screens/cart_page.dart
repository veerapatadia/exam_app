import 'package:untitled/Utils/all_products_data.dart';
import 'package:flutter/material.dart';

class cart_page extends StatefulWidget {
  const cart_page({super.key});

  @override
  State<cart_page> createState() => _cart_pageState();
}

class _cart_pageState extends State<cart_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart Page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ProductData.cartProductData.isEmpty
                ? Container(
                    alignment: Alignment.center,
                    child: Text(
                      "No any products added to cart yet...",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  )
                : Container(
                    // color: Colors.green,
                    padding: EdgeInsets.only(left: 18, right: 18, top: 18),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...ProductData.cartProductData.map(
                            (e) => Container(
                              margin: EdgeInsets.only(top: 12),
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                //color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 2,
                                    color: Colors.grey.shade100,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "${e['thumbnail']}",
                                        ),
                                      ),
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${e['title']}",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$ ${e['price']}",
                                              style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              ProductData.cartProductData
                                                  .remove(e);
                                              ProductData.cartData.remove(e);
                                            });
                                          },
                                          child: Text(
                                            "DELETE",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              decorationColor: Colors.red,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.red,
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
                        ],
                      ),
                    ),
                  ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.indigo.shade200,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Shipping",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
