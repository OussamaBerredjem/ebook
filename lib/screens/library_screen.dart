import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:ebook/screens/home_screeen.dart';
import 'package:ebook/widgets/library_demande.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
              dividerHeight: 0,
              unselectedLabelColor: Colors.grey,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: GoogleFonts.rubik(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              indicator: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(12)),
              tabs: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Recieved',
                          style: GoogleFonts.rubik(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_downward,
                        size: 17,
                        fill: 0.8,
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Send',
                        style: GoogleFonts.rubik(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_upward,
                      size: 17,
                    )
                  ],
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ScrollableToggleButtons(
                      color: Colors.deepPurpleAccent,
                      icon: [
                        Icons.list,
                        Icons.check,
                        Icons.hourglass_bottom,
                        Icons.close
                      ],
                      labels: [
                        "All",
                        "Accepted",
                        "Waitting",
                        "Cancelled"
                      ]),
                ),
                Expanded(
                    flex: 9,
                    child: SingleChildScrollView(child: LibraryDemande()))
              ],
            ),
            Center(child: Text('Content of Tab 2')),
          ],
        ),
      ),
    );
  }
}
