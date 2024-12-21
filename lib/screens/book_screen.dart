import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:ebook/models/screen.dart';
import 'package:ebook/widgets/book_cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    final screen = Screen(context: context);
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "borrow",
                    style: GoogleFonts.rubik(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.deepPurpleAccent)),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 270,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.only(top: 80),
                child: Row(
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
                            fontSize: screen.width(4.5),
                          ),
                        ),
                        Text("By Nirat Bhatnagar"),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 23,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 2.0),
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
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverList(
                delegate: SliverChildListDelegate([
              Text(
                "Synopsis",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7)),
              ),
              Text("Fiction | Suspense | Best Seller | New"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                    "During the 1980s and 90s, the Resource Institute, headed by Jonathan White, held a series of 'floating seminars' aboard a sixty-five-foot schooner featuring leading White, held a series"),
              ),
              Text(
                "Posted by",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7)),
              ),
              ListTile(
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
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w500, fontSize: 17),
                ),
                subtitle: Text("Aug 29,2024"),
              ),
              Text(
                "Ratings",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.7)),
              ),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade200,
                      borderRadius: BorderRadius.circular(12)),
                ),
                title: Text(
                  "Imad Halouane",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w500, fontSize: 15.5),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text("Aug 30,2024"),
                trailing: RatingBar.builder(
                  itemSize: 20,
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
              ),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.purple.shade200,
                      borderRadius: BorderRadius.circular(12)),
                ),
                title: Text(
                  "Djoumi Djahid",
                  style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w500, fontSize: 15.5),
                ),
                subtitle: Text("Aug 30,2024"),
                trailing: RatingBar.builder(
                  itemSize: 20,
                  initialRating: 4,
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
              ),
            ])),
          )
          // Other slivers can go here
        ],
      ),
    );
  }
}
