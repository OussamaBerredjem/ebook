import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:ebook/screens/home_screeen.dart';
import 'package:ebook/widgets/book_item.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  TextEditingController controller = TextEditingController(text: "The Psychology");
  List<bool> _selections = [false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: [
          IconButton(onPressed:(){}, icon: Icon(BootstrapIcons.sliders,size: 20,))
        ],
        title: TextField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.only(left: 15),
              border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepPurpleAccent,
                width: 0.5,
              ),
    
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          ),
        ),
       
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            forceMaterialTransparency: true,
            flexibleSpace: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 60),
          child: Container(
            color: Color(0XFFfef7ff),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ToggleButtons(
                    selectedColor: Colors.deepPurpleAccent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    fillColor: Colors.transparent,
                    borderColor: Colors.transparent,
                    selectedBorderColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: (index){
                      setState(() {
                        _selections[index] = true;
                      });
                    },
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_drop_down),
                          Text("Top Selles")
                        ],
                      ),
                       
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(_selections[1]?Icons.arrow_drop_down:Icons.arrow_drop_up),
                            Text("Price")
                          ],
                                              ),
                        ),
                    ], isSelected: _selections),
                ),
              ],
            ),
          ),
        ),
          ),
          SliverGrid.builder(
           gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.77),
           itemBuilder: (context, index) => Container(
              height: 350,
              child: BookItem()),
            itemCount: 15, // Replace with your actual list length
          ), 
        ],
      )
       
    );
  }
}