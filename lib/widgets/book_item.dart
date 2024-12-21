import 'package:ebook/screens/book_screen.dart';
import 'package:ebook/widgets/book_cover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => BookScreen()));
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white.withOpacity(0.22),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BookCover(),
            Text(
              "The Psycologie",
              style:
                  GoogleFonts.rubik(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const Text("Morgan Housel"),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "4.4",
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "1300DA",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
