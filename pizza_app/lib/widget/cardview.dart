import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String text;
  final String price;

  const CardView({
    this.text,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.center,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 0,
            child: Container(
              alignment: Alignment.center,
              height: 95,
              width: MediaQuery.of(context).size.width - 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('$text',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('\$$price',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 15,
            left: (MediaQuery.of(context).size.width / 2) - 160.0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(8, 1),
                        color: Colors.orange.shade100,
                        spreadRadius: 1,
                        blurRadius: 24)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.network(
                    "https://pngimg.com/uploads/pizza/pizza_PNG44095.png",
                    filterQuality: FilterQuality.low,
                    height: 85,
                    width: 85,
                    // scale: 3.0,
                    fit: BoxFit.fitHeight),
                // height: 200.0,
                // width: 200.0),
              ),
            )),
        Positioned(
          top: 33.0,
          right: (MediaQuery.of(context).size.width / 2) - 163.0,
          child: Container(
            alignment: Alignment.center,
            width: 80.0,
            height: 32.0,
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
                        borderRadius: BorderRadius.circular(7.0),
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
        ),
      ],
    );
  }
}
