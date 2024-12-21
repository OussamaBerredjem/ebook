import 'package:ebook/widgets/book_cover.dart';
import 'package:ebook/widgets/book_item.dart';
import 'package:ebook/widgets/library_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/screen.dart';

class LibraryDemande extends StatefulWidget {
  const LibraryDemande({super.key});

  @override
  State<LibraryDemande> createState() => _LibraryDemandeState();
}

class _LibraryDemandeState extends State<LibraryDemande> {
  late Screen screen;

  @override
  Widget build(BuildContext context) {
    screen = Screen(context: context);

    return Container(
      padding: EdgeInsets.only(top: 8),
      height: MediaQuery.of(context).size.height * 0.6,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BookCover(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Thinking About Water",
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text("By Nirat Bhatnagar"),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RatingBar.builder(
                        itemSize: screen.width(4.5),
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text("4.2 (22k)"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("6 Books left"),
                  ),
                  Text(
                    "4500DA",
                    style: GoogleFonts.rubik(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black.withOpacity(0.7)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ]),
        ExpansionTile(
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                  borderRadius: BorderRadius.circular(12)),
            ),
            title: Text(
              "Oussama Berredjem",
              style:
                  GoogleFonts.rubik(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            subtitle: Text("Aug 29,2024"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .47,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Accept",
                      style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.green)),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .47,
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Cancell",
                      style: GoogleFonts.rubik(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ],
                ),
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.transparent)),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
