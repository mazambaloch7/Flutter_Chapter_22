import 'package:flutter/material.dart';
import 'package:mflutter_notebook_chaptter_22/e1_hotal_booking/src/ui/booking_hotal_main_page.dart';

class BookingHotelStartScreen extends StatelessWidget {
  const BookingHotelStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/02/24/17/17/window-3178666__340.jpg",
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken))),
              ),
            ),
            Positioned(
                left: 32,
                right: 32,
                top: 72,
                bottom: 64,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "TurTek",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 72,
                    ),
                    const Text(
                      "Temkan hotel \nberualites dangan \nharga terjangkau",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        wordSpacing: 8,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Memudakhan anda mancari hotel yang nyaman dan berkualitas ",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), height: 1.5),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        print("Home page clicked");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookingHotelMainPage()));
                      },
                      child: Container(
                        height: 52,
                        decoration: BoxDecoration(color: Colors.blueAccent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Cari Hotel",
                              style: TextStyle(color: Colors.white),
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
