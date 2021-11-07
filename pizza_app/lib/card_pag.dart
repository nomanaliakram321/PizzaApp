// ignore: file_names
import 'package:flutter/material.dart';
import 'package:pizza_app/widget/custom_appbar.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color(0xFF7A9BEE),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(56), child: CustomAppBar()),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
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
                top: 30.0,
                left: (MediaQuery.of(context).size.width / 2) - 100.0,
                child: Container(
                    child: Image.network(
                        "https://pngimg.com/uploads/pizza/pizza_PNG44046.png",
                        fit: BoxFit.cover)),
                height: 200.0,
                width: 200.0),
            Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("wfoodNameidget.",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Piza",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),
                        Container(height: 25.0, color: Colors.grey, width: 1.0),
                        Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.0),
                              color: Color(0xFF7A9BEE)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Color(0xFF7A9BEE)),
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
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Colors.white),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF7A9BEE),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildInfoCard('WEIGHT', '300', 'G'),
                            SizedBox(width: 10.0),
                            _buildInfoCard('CALORIES', '267', 'CAL'),
                            SizedBox(width: 10.0),
                            _buildInfoCard('VITAMINS', 'A, B6', 'VIT'),
                            SizedBox(width: 10.0),
                            _buildInfoCard('AVAIL', 'NO', 'AV')
                          ],
                        )),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0)),
                            color: Colors.black),
                        height: 50.0,
                        child: Center(
                          child: Text('\$52.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    )
                  ],
                ))
          ])
        ]));
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
        onTap: () {
          // selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF7A9BEE),
              border: Border.all(
                  color: Colors.transparent,
                  style: BorderStyle.solid,
                  width: 0.75),
            ),
            height: 100.0,
            width: 100.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(cardTitle,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: Colors.grey.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(info,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(unit,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  )
                ])));
  }
}

List lastCard = [
  {
    'icon': Icons.paste_outlined,
    'name': 'Black Pasta',
  },
  {
    'icon': Icons.share,
    'name': 'Shrimp',
  },
  {
    'icon': Icons.ac_unit_outlined,
    'name': 'Tomato',
  },
];
