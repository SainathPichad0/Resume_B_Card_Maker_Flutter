import 'package:flutter/material.dart';

class Resume1_page extends StatelessWidget {
  final String fullname;
  final String phone;
  final String email;
  final String city;
  final String about;
  final String title;

  Resume1_page({
    required this.fullname,
    required this.phone,
    required this.email,
    required this.city,
    required this.about,
    required this.title,
})
;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),


      ),
      backgroundColor: Colors.purple,
      body: Container(
        margin: EdgeInsets.all(10),
        child: Card(
          elevation: 6,
          child: Container(

            child: Row(

              children: [
                Container(

                  color:Colors.black12,
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("About Me",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                              Text("I'm $fullname"
                              ,style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                             Text(about)
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Contact ",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Row(
                                 children: [
                                   Icon(Icons.phone,size: 20,),
                                   Text(phone)
                                 ],
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.email,size: 20,),
                                   Text(email)
                                 ],
                               )
                             ],)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Skills",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                              Text("JAVA"),
                              Text("JAVA") ,Text("JAVA"), Text("JAVA"), Text("JAVA")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(

                  width: 150,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Education",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            Text("Institude 1"),
                            Text("2015-2019"),
                            Text("B.Tech Computer Science")
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      )
                      ,
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Experience",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            Text("Institude 1"),
                            Text("2015-2019"),
                            Text("Monitor quality and \nperformance of applications ")
                            ,
                            SizedBox(
                              height: 30,
                            )
                            ,
                            Text("Institude 2"),
                            Text("2019-2021"),
                            Text("Monitor quality and \nperformance of applications ")

                          ],

                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Projects",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            ),
                            Text("Project 1"),

                            Text("Shoping App"),

                            SizedBox(
                              height: 5,
                            )
                            ,
                            Text("Project 2"),

                            Text("Quiz App")
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
