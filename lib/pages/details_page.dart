import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/pages/Home_page/resume_page.dart';

class Details_Page extends StatefulWidget {
  const Details_Page({Key? key}) : super(key: key);

  @override
  _Details_PageState createState() => _Details_PageState();
}

class _Details_PageState extends State<Details_Page> {
  TextEditingController fullname = new TextEditingController();
  TextEditingController phone_number_controller = new TextEditingController();
  TextEditingController email_controllweer = new TextEditingController();
  TextEditingController about_contoller = new TextEditingController();
  TextEditingController city_contorller = new TextEditingController();
  TextEditingController title_contorller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKey3 = GlobalKey<FormState>();
  final _formKey4 = GlobalKey<FormState>();
  final _formKey5 = GlobalKey<FormState>();
  final _formKey6 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Personal Details"),
        ),
        body: Container(
          margin: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          print(fullname.text.toString());
                        },
                        child: Icon(Icons.person)),
                    Container(
                      margin: EdgeInsets.only(left: 9),
                      child: Text(
                        "Personal Details",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Full Name ',
                              labelText: 'Name',
                            ),
                            controller: fullname,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              icon: const Icon(Icons.phone),
                              hintText: 'Enter a phone number',
                              labelText: 'Phone',
                            ),
                            controller: phone_number_controller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              icon: const Icon(Icons.email),
                              hintText: 'Enter Email',
                              labelText: 'Email',
                            ),
                            controller: email_controllweer,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              icon: const Icon(Icons.location_city),
                              hintText: 'Enter a your city',
                              labelText: 'City',
                            ),
                            controller: city_contorller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Android Developer ',
                              labelText: 'Title',
                            ),
                            controller: title_contorller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Enter about',
                              labelText: 'About',
                            ),
                            maxLines: 4,
                            maxLength: 140,
                            controller: about_contoller,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        new Container(
                            padding:
                                const EdgeInsets.only(left: 150.0, top: 40.0),
                            child: new RaisedButton(
                              child: const Text('Submit'),
                              onPressed: () {
                                print("hi");
                                print(about_contoller.text.toString());
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return Resume1_page(
                                      fullname: fullname.text.toString(),
                                      phone: phone_number_controller.text,
                                      email: email_controllweer.text,
                                      city: city_contorller.text,
                                      about: about_contoller.text,
                                      title: title_contorller.text);
                                }));
                              },
                            )),
                      ],
                    ),
                  ),
                ),



























                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            print(fullname.text.toString());
                          },
                          child: Icon(Icons.school)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Education",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Form(
                    key: _formKey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'INSTITUDE NAME ',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'DEGREE',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'BRANCH',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'PERCENTAGE/GPA',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'YEAR',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        new Container(
                            padding:
                                const EdgeInsets.only(left: 150.0, top: 40.0),
                            child: new RaisedButton(
                              child: const Text('NEXT'),
                              onPressed: () {

                              },
                            )),
                      ],
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            print(fullname.text.toString());
                          },
                          child: Icon(Icons.work)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Work Experience",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Form(
                    key: _formKey3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'EMPLOYER ',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'JOB TITLE',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid date';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'COMPANY NAME',
                            ),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'DESCRIPTION',
                            ),
                            maxLines: 4,

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid';
                              }
                              return null;
                            },
                          ),
                        ),
                        new Container(
                            padding:
                                const EdgeInsets.only(left: 150.0, top: 40.0),
                            child: new RaisedButton(
                              child: const Text('NEXT'),
                              onPressed: () {

                              },
                            )),
                      ],
                    ),
                  ),
                ),





                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            print(fullname.text.toString());
                          },
                          child: Icon(Icons.star)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Skills",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Form(
                    key: _formKey4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                                  Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'SKILLS ', hintText: 'Java'),

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        new Container(
                            padding:
                                const EdgeInsets.only(left: 150.0, top: 40.0),
                            child: new RaisedButton(
                              child: const Text('Next'),
                              onPressed: () {

                              },
                            )),
                      ],
                    ),
                  ),
                ),











                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            print(fullname.text.toString());
                          },
                          child: Icon(Icons.work)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Projects",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Form(
                    key: _formKey5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                              Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'PROJECT TITLE ',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid ';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                              Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'PROJECT URL',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid';
                              }
                              return null;
                            },
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffEFEFEF),
                              border:
                              Border.all(width: 0.3, color: Colors.grey),
                              borderRadius: BorderRadius.circular(12)),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'PROJECT DESCRIPTION',
                            ),
                            maxLines: 4,

                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter valid';
                              }
                              return null;
                            },
                          ),
                        ),
                        new Container(
                            padding:
                            const EdgeInsets.only(left: 150.0, top: 40.0),
                            child: new RaisedButton(
                              child: const Text('NEXT'),
                              onPressed: () {

                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
