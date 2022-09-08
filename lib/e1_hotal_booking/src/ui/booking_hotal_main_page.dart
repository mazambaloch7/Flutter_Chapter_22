import 'package:flutter/material.dart';

class BookingHotelMainPage extends StatelessWidget {
  const BookingHotelMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Azam Khan",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Row(
                        children: [
                          Text(
                            "M. Azam Khan Barohi Baloch",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 34,
                    width: 34,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(2)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
              ),
              child: Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orangeAccent,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16, left: 16),
              height: 32,
              // color: Colors.pink,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.hotel_outlined,
                          size: 14,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "hotels",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Food",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Coffee",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 0.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Destination",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                height: 240,
                // color: Colors.indigo,
                margin: EdgeInsets.fromLTRB(16, 32, 0, 32),
                padding: EdgeInsets.only(left: 16, right: 16, top: 0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 200,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2021/08/27/01/33/bedroom-6577523__340.jpg"),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "RungKut, Surabaya",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Hotel Bungurash",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "80",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        " /Malam",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[200],
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: Center(
                                          child: Icon(
                                            Icons.bookmark,
                                            color: Colors.orange,
                                            size: 14,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      );
                    })),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
              ),
              child: Row(
                children: [
                  Text(
                    "Popular Hotels",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "View  All",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              children: List.generate(
                10,
                (index) => Container(
                  padding: EdgeInsets.all(8),
                  margin:
                      EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 0),
                  height: 120,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 84,
                        height: 84,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2015/01/26/11/05/beach-612553__340.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 8, right: 8, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Rungkut, Surabaya",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                            Text(
                              "Hotel Surabaya",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "80",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " /Malam",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(2)),
                                  child: Center(
                                    child: Icon(
                                      Icons.bookmark,
                                      color: Colors.orange,
                                      size: 14,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

//this is simple testing commit
