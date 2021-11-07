import 'package:flutter/material.dart';
import 'package:pizza_app/Card_pag.dart';
import 'package:pizza_app/total_cart_screen.dart';

import 'package:pizza_app/widget/buttom.dart';

import 'widget/custom_texd.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2b6e4f),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios, size: 18),
                  color: Colors.black,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: IconButton(
                      icon: Icon(Icons.favorite_rounded,
                          color: Colors.grey, size: 22),
                      onPressed: () {},
                      color: Colors.white,
                    ))),
          ],
        ),
        body: ListView(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              Stack(children: [
                Container(
                    height: MediaQuery.of(context).size.height - 82.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent),
                Positioned(
                    top: 100.0,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(45.0),
                              topRight: Radius.circular(45.0),
                            ),
                            color: Colors.white),
                        height: MediaQuery.of(context).size.height - 100.0,
                        width: MediaQuery.of(context).size.width)),
                Positioned(
                    top: 20.0,
                    left: (MediaQuery.of(context).size.width / 2) - 100.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.network(
                          "https://pngimg.com/uploads/pizza/pizza_PNG44095.png",
                          filterQuality: FilterQuality.low,
                          height: 200,
                          width: 200,
                          // scale: 3.0,
                          fit: BoxFit.fitHeight),
                      // height: 200.0,
                      // width: 200.0),
                    )),
                // ),
                // Container(color: Colors.red, height: 180.0, width: 200.0)),
                Positioned(
                    top: 230.0,
                    left: 25.0,
                    right: 25.0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Fresh Pizza",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star_rounded,
                                  color: Colors.red, size: 18),
                              Text("4.5",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: Colors.grey)),
                              SizedBox(width: 20.0),
                              Icon(Icons.location_history,
                                  color: Colors.red, size: 18),
                              Text("348 Kcal",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18.0,
                                      color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            // ignore: prefer_const_constructors
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('\$10',
                                      style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Montserrat')),
                                  Text('.49',
                                      style: TextStyle(
                                          height: 2.0,
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontFamily: 'Montserrat')),
                                ]),
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: 125.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                color: Color(0xFF2b6e4f)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 25.0,
                                    width: 25.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(7.0),
                                        color: Color(0xFF2b6e4f)),
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('2',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.0)),
                                InkWell(
                                  onTap: () {},
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Text('Ingradients',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat',
                                        fontSize: 18.0)),
                              ),
                            ],
                          ),
                          card(lastCard),
                          Padding(
                              padding: EdgeInsets.only(
                                  bottom: 5.0, top: 20, right: 5, left: 5),
                              child: InkWell(
                                onTap: () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return CartScreen();
                                })),
                                // ignore: dead_code
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xFF2b6e4f)),
                                    height: 60.0,
                                    width:
                                        MediaQuery.of(context).size.width - 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.shopping_cart,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text('Add to Cart',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Montserrat')),
                                        ),
                                      ],
                                    )),
                              )),
                        ])),
                SizedBox(
                  height: 100,
                ),
              ])
            ]));
  }
}

Widget card(List lastCard) {
  return Padding(
      padding: const EdgeInsets.only(left: 0, top: 17),
      child: Container(
        height: 65,
        child: ListView.separated(
            itemCount: lastCard.length,
            //  controller.productModel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: WidgetButton(
                  wid: 130,
                  hght: 40,
                  onpress: () {},
                  text: CustomText(
                      text: lastCard[index]["name"],
                      color: Colors.black,
                      weight: FontWeight.bold,
                      alignment: Alignment.center,
                      fontSize: 15),
                  borderColor: Colors.grey.shade100,
                  color: Colors.white,
                  imageUrl: lastCard[index]["url"],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
                  width: 9,
                )),
      ));
}

List lastCard = [
  {
    'url': 'assets/images/rice.png',
    'name': 'Black Pasta',
  },
  {
    'url': 'assets/images/shrimp.png',
    'name': 'Shrimp',
  },
  {
    'url': 'assets/images/tomato.png',
    'name': 'Tomato',
  },
  {
    'url': 'assets/images/mushroom.png',
    'name': 'Mushrooms',
  },
  {
    'url': 'assets/images/meat.png',
    'name': 'Meat',
  },
];
