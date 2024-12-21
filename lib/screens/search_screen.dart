import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:ebook/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  TextEditingController controller = TextEditingController();
  bool isShow =false;
  List<String> result = [
    "The New Psychology of Success",
    "The Power of Introverts in a World That Can't Stop Talking",
    "The Psychology of Optimal Experience",
    "The Hidden Forces That Shape Our Decisions",
    "The Psychology of Persuasion"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: TextField(
          
          keyboardType: TextInputType.url,
          controller: controller,
          onChanged: (text){
            setState(() {
              isShow = controller.text.isNotEmpty;
            });
          },
          onSubmitted: (text){
            Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (context)=>ResultScreen()));
          },
          
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            suffixIcon:  isShow? IconButton(onPressed: (){
            controller.clear();
          }, icon: Icon(Icons.close)):null,
            
            hintText: "Search",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent,
                width: 1,
              ),
    
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent,
                width: 0.5,
              ),
    
              borderRadius: BorderRadius.all(Radius.circular(20))
            )
          ),
        ),
      ),
      body: isShow? ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemCount: result.length,
        itemBuilder: (context,position){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 8,),
                Text(result[position])
              ],
            ),
          );
        }
        ):Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recentes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                Text("Delete",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.clock_history,size: 15,),
              SizedBox(width: 9,),
              Text("Riwayah")
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.clock_history,size: 15,),
              SizedBox(width: 9,),
              Text("48 laws of power")
            ],),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 15,bottom: 10),
            child: Text("Top Search",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,),),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.search,size: 15,),
              SizedBox(width: 9,),
              Text("The power")
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.search,size: 15,),
              SizedBox(width: 9,),
              Text("Force")
            ],),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.search,size: 15,),
              SizedBox(width: 9,),
              Text("The ghost")
            ],),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.search,size: 15,),
              SizedBox(width: 9,),
              Text("The Psychology")
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 20),
            child: Row(children: [
              Icon(BootstrapIcons.search,size: 15,),
              SizedBox(width: 9,),
              Text("Thinking")
            ],),
          ),
          
          
      ],),
    );
  }
}