import 'package:flutter/material.dart';
// import 'package:tcube/childetails.dart';
// import 'package:tcube/grade.dart';
// import 'package:tcube/login.dart';
// import 'package:tcube/main.dart';

import 'package:intl/intl.dart';

import 'childetails.dart';

class parent extends StatelessWidget {
  // const parent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: parentpage(),
    );
  }
}

class parentpage extends StatefulWidget {
  // const parentpage({super.key});

  @override
  State<parentpage> createState() => _parentpageState();
}

class _parentpageState extends State<parentpage> {
  String dropdownvalue = 'English';
  var items = [
    'English',
    'தமிழ்',
    'हिंदी',
    'Española',
    'Français',
    'عربي',
    'বাংলা',
    'ગુજરાતી',
    'اردو',
    'ಕನ್ನಡ',
    'ଓଡିଆ',
  ];
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _email, _password;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/mainpic.jpg"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 100.0, top: 100, right: 30),
                        ),
                        Row(
                          children: [
                            Center(
                              child: Container(
                                child: Text(
                                  'Parent details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.white.withOpacity(0.3),
                                        Colors.transparent
                                      ],
                                    ),
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.white, width: 5))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: 'Father Name',
                                labelText: 'Father Name',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Father name';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: 'Mother Nmae',
                                labelText: 'Mother Name',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Mother name';
                              }
                              return null;
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            onSaved: (value) {
                              _email = value!;
                            },
                            validator: (email) {
                              if (email!.isEmpty)
                                return "Please Enter Email ";
                              else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(
                                      email)) //Reg exp for validate the email

                                return "Its Not a Vaid Email";
                              return null;
                            },
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.email,
                                  color: Colors.black,
                                ),
                                hintText: 'Email',
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            // validator: (value) {
                            //   if (value!.isEmpty) {
                            //     return 'Please enter Mother name';
                            //   }
                            //   return null;
                            // },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            onSaved: (value) {
                              _password = value!;
                            },
                            // style: TextStyle(color: Colors.black),
                            validator: (password1) {
                              if (password1!.isEmpty)
                                return "Please fill this field";
                              else if (password1.length < 5 ||
                                  password1.length > 8)
                                return "Password Length is incorrect";
                              else if (RegExp(
                                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>')
                                  .hasMatch(password1))
                                return "Password should be combined of letters,numbers and special characters ";

                              //Reg exp for validate the email

                              return null;
                            },
                            obscureText: true,
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.password,
                                  color: Colors.black,
                                ),
                                hintText: 'Password',
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.mobile_friendly,
                                  color: Colors.black,
                                ),
                                hintText: 'Mobile Number',
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Mobile Number';
                              }
                              return null;
                            },
                          ),
                        ),

                        // SizedBox(
                        //   height: 40,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.location_city,
                                  color: Colors.black,
                                ),
                                hintText: 'Address',
                                labelText: 'Enter your Address',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Address';
                              }
                              return null;
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Mother Tongue',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // ],
                            // ),
                            // Column(
                            //   children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: DropdownButton(
                                // Initial Value
                                value: dropdownvalue,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            child: Center(
                                child: TextField(
                              style: const TextStyle(color: Colors.black),
                              controller:
                                  dateInput, //editing controller of this TextField
                              decoration: InputDecoration(
                                filled: true,

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                //icon of text field
                                labelText: "Date Of Birth",
                                labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                // hintText: "DOB",
                                // hintStyle: const TextStyle(color: Colors.black),
                                //label text of field
                              ),
                              readOnly:
                                  true, //set it true, so that user will not able to edit text
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(
                                      2000), //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101),
                                );

                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement

                                  setState(() {
                                    dateInput.text =
                                        formattedDate; //set output date to TextField value.
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ))),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 140, top: 40),
                              child: ElevatedButton(
                                  onPressed: (() {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  childpage()));
                                      formKey.currentState!.save();
                                      if (_email == "test@gamil.com" &&
                                          _password == "root12345678") ;
                                    }
                                    ;
                                  }),
                                  child: Text("Submit",
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        // letterSpacing: 0.5,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(230, 255, 255, 255),
                                    // side: BorderSide(width: 2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ]),
                )),
          )),
      // ),
    );
  }
}
