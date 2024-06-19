import 'dart:ffi';

import 'package:flutter/material.dart';

class Email extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column( 
               children: [Icon(Icons.sort)]),
            Text("Email",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              children: [Icon(Icons.search)]
              ),
          ],
        )
      ) ,
      body: SafeArea(
        minimum: EdgeInsets.all(16.0),
        child: 
       Column(
        children: [
          Container(
            decoration: new BoxDecoration(
                       color: Colors.white,
                    ),
            padding: EdgeInsets.fromLTRB(32,16,32,0),
             child: 
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Inbox",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 2,
                      ),
                    ),
                    Text("Sent",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                      ),
                    ),
                    Text("Draft",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                      ),
                    ),
                  ],
                 ),
          ),
          Container(
            decoration: new BoxDecoration(
                       color: Colors.white,
                    ),
            padding: EdgeInsets.all(24),
            child:
             Column(
               children: [
                 SizedBox(height: 8),
                 Column(
                 children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.arrow_back,size: 32, color: Colors.grey,),
                  Icon(Icons.more_vert,size: 32, color: Colors.grey),
                  ],
                  ),
                 SizedBox(height: 16,),
                 Column(
                        children: [
                 Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1771542579764490240/I1nqoFpQ_400x400.jpg"),
                      ),
                      SizedBox(width: 10,),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Melvin Sherman",
                               style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "pedro@gmail.com",
                               style: TextStyle(color: Colors.grey),
                            ),
                          ],
                         ),
                      SizedBox(width: 60,),
                      Column(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                                Text("10:30 am",
                                 style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                         ),
                    ],
                  ),
                 SizedBox(height: 20,)
                  ],
                  ) 
                  ],
                  ),
                 SizedBox(height: 16), 
                 Row(
                  children: [
                    Text("Fonts,Mockups & Templates",
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
                    )
                  ],
                 ),
                 SizedBox(height: 16),
                 Row(
                  children: [
                    Text("Hi Jhonson",
                     style: TextStyle(fontSize: 16),
                    )
                  ],
                 ),  
                 SizedBox(height: 24),
                 Column(
                  children: [
                    Text("It's Friday and time for some free products! Here are the latest freebies to arrive on our sites. Join plus for Instant Acces to 264 Fonts and Designs worth S/.2.874 with Commercial Use ",
                    style: TextStyle(fontSize: 16),
                    ),
                   ],
                  ),
                  SizedBox(height: 16),
                  Column(
                  children: [
                    Text("These HUGE discount! These are Limited time only bundles once the timers hit zero, they go back to full price. ",
                    style: TextStyle(fontSize: 16),
                    ),
                   ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text("Read More", style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),)],),
                  SizedBox(height: 16,),
                  Container(
                       decoration: new BoxDecoration(
                       color: Color.fromARGB(255, 215, 212, 212),
                    ),
                    child: Row(
                     children: [
                        Image.asset(
                        'assets/images/Open_Folder.png',
                        width: 40,
                         ),
                       
                        SizedBox(width: 20,),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "2 Files Attachment",
                                 style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "5.6 mn",
                                 style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                              ),
                            ],
                           ),
                        SizedBox(width: 100,),
                        Column(
                               mainAxisAlignment: MainAxisAlignment.end,
                               children: [
                                   Icon(
                                        Icons.download_for_offline_outlined,
                                        color: Colors.blue,
                                    ),
                                ],
                           ),
                      ],
                    ),
                  ),
          
               ],
             ),
          ),
          Divider(height: 2, color: Colors.grey,),
          Container(
            decoration: new BoxDecoration(
                       color: Colors.white,
                    ),
            padding: EdgeInsets.all(32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Icon(
            Icons.reply,
            color: Colors.grey,
            size: 36,
                    ),
                    Icon(
            Icons.delete,
            color: Colors.grey,
            size: 36,
                    ),
                    Icon(
            Icons.star_sharp,
            color: Colors.yellow,
            size: 36,
                    ),
             ], 
            ),
          )
        ],
      )

      ), 
     
    );
  }

}