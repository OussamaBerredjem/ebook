import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  String fullname,profile;
  ChatWidget({super.key,required this.fullname,required this.profile});

  @override
  Widget build(BuildContext context) {
    return  CupertinoContextMenu(
                                  actions: [
                                    CupertinoContextMenuAction(child: Row(
                                      children: [
                                        Icon(BootstrapIcons.arrow_90deg_left,size: 15,),
                                        SizedBox(width: 14,),
                                        Text("Reponder"),
                                      ],
                                    )),
                                    CupertinoContextMenuAction(child: Row(
                                      children: [
                                         Icon(Icons.delete_forever,color: Colors.redAccent,),
                                        SizedBox(width: 7,),
                                       Text("Remove",style: TextStyle(color: Colors.redAccent),),
                                      ],
                                    )),
                                   
                                  ],
                                  child: Material(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(color: Colors.white.withOpacity(.2)),
                                      child: Container(
                                        constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context).size.width * 0.95,
                                            maxHeight: 73
                                        ),
                                        height: 69,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.only(bottom: 7),
                                        child: ListTile(
                                          onTap: () {
                                          },
                                          leading: Container(
                                            color: Colors.grey.shade100,
                                            margin: EdgeInsets.only(left: 5),
                                            height: 55,
                                            width: 55,
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(profile),
                                            ),
                                          ),
                                          title: Text(fullname, style: TextStyle(fontWeight: FontWeight.bold)),
                                          subtitle: Text("You are friends now"),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                            ;
  }
}