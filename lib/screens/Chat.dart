
import 'dart:ui';

import 'package:ebook/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';




class Chat extends StatefulWidget {
  Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat>{

  bool isVisible = true,isReleased = false;
  ScrollController _Vertical = ScrollController();

  List<String> links = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzZXmKIr5mtQzhz-DS4WirJxcEPlFJ0x4adg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRvMk1gN5f9wrsdXnIhwlFE80xoU6k15Fa7A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcTQNJX5Ck-qcTTuFgapnlOB9BAXuF_D0Nfw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ZU1bbOVV_7VYgqsh9_A0yEMpAAWiqmvmnQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg013L3g110jMjMVQKFXFD3wdZoEUUfdn5-g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpatsm0jlxjiKkXTHVqFBS3edC3qOO5RH_4A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ64EmI8qgpJf3b9z0PWXKMVXfwRx0Hlm1NvQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdqvli5kQXRDqj400XhaKR-VEE3iu91lHoCg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCjyVuvsz5YtLO_eV-bSfywfdH-an5sqAXRLvCXyhJFwY2ah04HqPqBaSbVLmAkom1ZD8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ZU1bbOVV_7VYgqsh9_A0yEMpAAWiqmvmnQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdqvli5kQXRDqj400XhaKR-VEE3iu91lHoCg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpatsm0jlxjiKkXTHVqFBS3edC3qOO5RH_4A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcTQNJX5Ck-qcTTuFgapnlOB9BAXuF_D0Nfw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpatsm0jlxjiKkXTHVqFBS3edC3qOO5RH_4A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzZXmKIr5mtQzhz-DS4WirJxcEPlFJ0x4adg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvrLhamiUurJOGc1jSyxODFjaXtBw7Y9PuFQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCjyVuvsz5YtLO_eV-bSfywfdH-an5sqAXRLvCXyhJFwY2ah04HqPqBaSbVLmAkom1ZD8&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ZU1bbOVV_7VYgqsh9_A0yEMpAAWiqmvmnQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdqvli5kQXRDqj400XhaKR-VEE3iu91lHoCg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpatsm0jlxjiKkXTHVqFBS3edC3qOO5RH_4A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcTQNJX5Ck-qcTTuFgapnlOB9BAXuF_D0Nfw&usqp=CAU",




  ];

  List<String> names = [
    "Oussama Berredjem",
    "Akram Serim",
    "Sabri Benabas",
    "Aymen Mhamdia",
    "Imad Halouane",
    "Amine Hamadi",
    "Aggab Massinissa",
    "Kossai Guraichi",
    "Islam Siab",
    "Djamil Boughezran",
    "Aymen Mhamdia",
    "Imad Halouane",
    "Akram Serim",
    "Sabri Benabas",
    "Kossai Guraichi",
    "Islam Siab",
    "Kossai Guraichi",
    "Islam Siab",
    "Djamil Boughezran",
    "Aymen Mhamdia",
    "Imad Halouane",


  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Chats",style: GoogleFonts.rubik(fontWeight: FontWeight.bold,color: Colors.black),),
            Text("Discover new messages",style: TextStyle(fontSize: 15,color: Colors.deepPurple))
          ],
        ),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: ListView.builder(
        itemCount: links.length,
        itemBuilder: (context,position)=>ChatWidget(fullname: names[position], profile: links[position])),
    );
  }

}
