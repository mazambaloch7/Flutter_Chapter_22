import 'package:flutter/material.dart';
import 'package:mflutter_notebook_chaptter_22/e1_hotal_booking/src/ui/booking_hotel_start_screen.dart';

class BookingHotelApp extends StatelessWidget {
  const BookingHotelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {"/": (context) => BookingHotelStartScreen()},
    );
  }
}
