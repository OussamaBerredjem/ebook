import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:ebook/screens/home_screeen.dart';
import 'package:ebook/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(166, 126, 250, 1),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Color.fromARGB(185, 234, 225, 251),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              forceMaterialTransparency: true,
              expandedHeight: 360.0,
              toolbarHeight: 0,
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showBottomSheet(
                                      context: context,
                                      builder: (context) => AccountSwitcher());
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("ouss_bjm",
                                        style: GoogleFonts.rubik(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 21,
                                            color: Colors.black)),
                                    Icon(Icons.arrow_drop_down)
                                  ],
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        "Edit Profile",
                                        style: GoogleFonts.rubik(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 13),
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://scontent.fczl1-2.fna.fbcdn.net/v/t39.30808-6/364105521_6854857154533716_5542695254217450329_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMR-y4IkXcqXzOb-uIzcEGUen23mz8x-JR6fbebPzH4iKcCKUmAftLGCw0aA5NlxTymPg-kmW7MNO-sv1etFvw&_nc_ohc=6ny8MuyHE8cQ7kNvgEh1Y_v&_nc_zt=23&_nc_ht=scontent.fczl1-2.fna&oh=00_AYAPRKQe7--vGcOf0ZO5knn1Tn_aThrj6EParkbcjbpD7A&oe=66B32D05',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text(
                          "Oussama Berredjem",
                          style: GoogleFonts.rubik(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text("@ouss_bjm"),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "13",
                                    style: GoogleFonts.rubik(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text("Orders"),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "24",
                                    style: GoogleFonts.rubik(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text('Books'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "4.5",
                                    style: GoogleFonts.rubik(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text("Rating")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => BookItem(),
                childCount: 15, // Replace with your actual list length
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.66),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                BootstrapIcons.arrow_left_right,
                applyTextScaling: true,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Switch Account',
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            trailing: Icon(Icons.check),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://scontent.fczl1-2.fna.fbcdn.net/v/t39.30808-6/364105521_6854857154533716_5542695254217450329_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMR-y4IkXcqXzOb-uIzcEGUen23mz8x-JR6fbebPzH4iKcCKUmAftLGCw0aA5NlxTymPg-kmW7MNO-sv1etFvw&_nc_ohc=6ny8MuyHE8cQ7kNvgEh1Y_v&_nc_zt=23&_nc_ht=scontent.fczl1-2.fna&oh=00_AYAPRKQe7--vGcOf0ZO5knn1Tn_aThrj6EParkbcjbpD7A&oe=66B32D05"))),
            ),
            title: Text(
              'ouss_bjm',
              style:
                  GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            onTap: () {
              // Handle account switch
            },
          ),
          SizedBox(
            height: 12,
          ),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: Icon(Icons.add),
            ),
            title: Text(
              'Add Account',
              style: GoogleFonts.rubik(fontSize: 18),
            ),
            onTap: () {
              // Handle add account
            },
          ),
        ],
      ),
    );
  }
}
