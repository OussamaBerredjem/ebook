import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            SizedBox(height: 40,),
            const Text(
                          "Signup",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 36,
                          ),
            ),
            SizedBox(height: 5,),
            Text("create your new acccount et joindre nous"),
            SizedBox(height: 30,),

            SizedBox(
              width: 100,
              height: 100,
              child:GestureDetector(
                onTap: () async{
                
                },
                child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration:const BoxDecoration(
                      color: Color.fromARGB(255, 249, 249, 249),
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: false
                          ? Image.file(
                          File(""),
                        fit: BoxFit.cover,
                        width: 100.0,
                        height: 100.0,
                      )
                          : const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                                     color: Colors.grey,
                                     Icons.person,
                                     size: 80,
                                  ),
                          ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20,left: 20),
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: IconButton(onPressed: (){print("get image");}, icon: Icon(Icons.edit_sharp,color: Colors.white,size: 19,))),
                  )
                ],
              ),
            )
    ),

              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Nom',
                                        border:  OutlineInputBorder(
                                  borderSide:const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                    ),

            const SizedBox(height: 10,),

             SizedBox(
               width: MediaQuery.of(context).size.width * 0.46,

               child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Prenom',
                    border:  OutlineInputBorder(
                                  borderSide:const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
             ),
              ]),

            const SizedBox(height: 10,),


             TextFormField(
                decoration: InputDecoration(
                  hintText: 'Numero',
                  prefixIcon:const Icon(Icons.call),

                  border:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 10,),


             TextFormField(
                decoration: InputDecoration(
                  prefixIcon:const Icon(Icons.email),
                  hintText: 'Email',
                  border:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 10,),


             TextFormField(
                decoration: InputDecoration(
                  hintText: 'Address',
                  prefixIcon:const Icon(Icons.location_city),
                  border:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Mot de pass',
                  prefixIcon:const Icon(Icons.lock),
                  border:  OutlineInputBorder(
                                borderSide:const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

                    InkWell(
                          onTap: () {
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 53,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Center(
                              child: false
                                  ? const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                                  : const Text(
                                "S'identifier",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
            
                      SizedBox(height: 20,),
                      Row(                    
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Vous avez un compte ?',
                              style: TextStyle(color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                ' Login ',
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ],
                        ),

                     

            ],
          ),
        ),
      ),
    );
  }
}