import 'package:animated_toggle/animated_toggle.dart';
import 'package:ebook/screens/search_screen.dart';
import 'package:ebook/widgets/book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  List<bool> _selections = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "discover the new element",
                style: TextStyle(fontSize: 15, color: Colors.deepPurple),
              )
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(CupertinoDialogRoute(
                      builder: (context) => SearchScreen(), context: context));
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: PageView.builder(
                    itemBuilder: (context, position) => Container(
                          height: 100,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 5),
                          decoration: BoxDecoration(
                              color: position % 2 == 0
                                  ? Colors.purple.shade100
                                  : Colors.amber,
                              borderRadius: BorderRadius.circular(12)),
                        ))),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: ScrollableToggleButtons(
                  color: Color.fromRGBO(166, 126, 250, 1),
                  labels: [
                    'All',
                    'Comedy',
                    'Fiction',
                    'Romance',
                    'Biography',
                    'Science',
                  ],
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 7),
                scrollDirection: Axis.horizontal,
                children: [
                  BookItem(),
                  BookItem(),
                  BookItem(),
                  BookItem(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text(
                "Recomendation",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 7),
                scrollDirection: Axis.horizontal,
                children: [
                  BookItem(),
                  BookItem(),
                  BookItem(),
                  BookItem(),
                ],
              ),
            ),
          ]),
        ));
  }
}

class ScrollableToggleButtons extends StatefulWidget {
  List<String> labels;
  Color color;
  List<IconData>? icon;
  ScrollableToggleButtons(
      {required this.labels, required this.color, this.icon});
  @override
  _ScrollableToggleButtonsState createState() =>
      _ScrollableToggleButtonsState();
}

class _ScrollableToggleButtonsState extends State<ScrollableToggleButtons> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.labels.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                  color: _selectedIndex == index
                      ? widget.color
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: widget.icon?[index] != null,
                    child: Icon(
                      widget.icon?[index],
                      color:
                          _selectedIndex == index ? Colors.white : Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: widget.icon?[index] != null ? 8 : 0,
                  ),
                  Text(
                    widget.labels[index],
                    style: TextStyle(
                        color: _selectedIndex == index
                            ? Colors.white
                            : Colors.grey,
                        fontWeight: _selectedIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
