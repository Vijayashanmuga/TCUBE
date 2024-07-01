import 'package:flutter/material.dart';
// import 'package:tcube/grade.dart';
// import 'package:tcube/gradelist.dart';
// import 'package:tcube/main.dart';
import 'package:intl/intl.dart';
import 'package:kids_learning/detailspage/gradelist.dart';

class child extends StatelessWidget {
  // const child({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: childpage(),
    );
  }
}

class childpage extends StatefulWidget {
  // const childpage({super.key});

  @override
  State<childpage> createState() => _childpageState();
}

class _childpageState extends State<childpage> {
  String dropdownvalue = 'Select Grade';
  var items = [
    'Select Grade',
    'Kindergarden Age(4-5)',
    'Grdae 1 Age(6-7)',
    'Grade 2 Age(7-8)',
    'Grade 3 Age(8-9)',
    'Grade 4 Age(9-10)',
    'Grade 5 Age(10-11)',
    'Grade 6 Age(11-12)',
    'Adult',
  ];
  String dropdownvalue1 = 'Tamil';
  var items1 = [
    'English',
    'Tamil',
    'Hindi',
    'Spanish',
    'French',
    'Arabic',
    'Bengali',
    'Gujarati',
    'Urdu',
    'Kannada',
    'Odia',
  ];
  String dropdownvalue2 = 'Right';
  var items2 = [
    'Right',
    'Left',
    'Both',
  ];
  String dropdownvalue3 = 'Singleton';
  var items3 = [
    'Singleton',
    'Twins',
    'Triplets',
  ];
  String dropdownvalue4 = 'Hearing Loss(Minimal)';
  var items4 = [
    'Hearing Loss(Minimal)',
    'Hearing Loss(Moderate)',
    'Hearing Loss(Severe)',
    'Visual Disability',
    'Physical Disability',
    'Had Seizures',
    'Had Severe injury or fall',
    'Genetic Disorder',
    'Autism',
    'ADHD(Attention Deficit \n Hyperactivity Disorder)',
    'None'
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
    return
        //  SingleChildScrollView(
        // child:
        Scaffold(
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
                                  'Child details',
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
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: 'Child Name',
                                labelText: 'Child Name',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Child name';
                              }
                              return null;
                            },
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0, right: 50),
                        //   child: TextFormField(
                        //     style: TextStyle(color: Colors.black),
                        //     decoration: const InputDecoration(
                        //         icon: const Icon(
                        //           Icons.person,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Mother Nmae',
                        //         labelText: 'Mother Name',
                        //         labelStyle: TextStyle(
                        //             color: Colors.black, fontSize: 15)),
                        //     validator: (value) {
                        //       if (value!.isEmpty) {
                        //         return 'Please enter Mother name';
                        //       }
                        //       return null;
                        //     },
                        //   ),
                        // ),

                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0, right: 50),
                        //   child: TextFormField(
                        //     style: TextStyle(color: Colors.black),
                        //     onSaved: (value) {
                        //       _email = value!;
                        //     },
                        //     validator: (email) {
                        //       if (email!.isEmpty)
                        //         return "Please Enter Email ";
                        //       else if (!RegExp(
                        //               r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        //           .hasMatch(
                        //               email)) //Reg exp for validate the email

                        //         return "Its Not a Vaid Email";
                        //       return null;
                        //     },
                        //     decoration: const InputDecoration(
                        //         icon: const Icon(
                        //           Icons.email,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Email',
                        //         labelText: 'Email',
                        //         labelStyle: TextStyle(
                        //             color: Colors.black, fontSize: 15)),
                        //     // validator: (value) {
                        //     //   if (value!.isEmpty) {
                        //     //     return 'Please enter Mother name';
                        //     //   }
                        //     //   return null;
                        //     // },
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0, right: 50),
                        //   child: TextFormField(
                        //     style: TextStyle(color: Colors.black),
                        //     onSaved: (value) {
                        //       _password = value!;
                        //     },
                        //     validator: (password) {
                        //       if (password!.isEmpty)
                        //         return "Please Enter the Password";
                        //       else if (password.length < 8 ||
                        //           password.length > 15)
                        //         return "Password Length is incorrect";
                        //       return null;
                        //     },
                        //     obscureText: true,
                        //     decoration: const InputDecoration(
                        //         icon: const Icon(
                        //           Icons.password,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Password',
                        //         labelText: 'Password',
                        //         labelStyle: TextStyle(
                        //             color: Colors.black, fontSize: 15)),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 10.0, right: 50),
                        //   child: TextFormField(
                        //     style: TextStyle(color: Colors.black),
                        //     decoration: const InputDecoration(
                        //         icon: const Icon(
                        //           Icons.mobile_friendly,
                        //           color: Colors.black,
                        //         ),
                        //         hintText: 'Mobile Number',
                        //         labelText: 'Mobile Number',
                        //         labelStyle: TextStyle(
                        //             color: Colors.black, fontSize: 15)),
                        //     validator: (value) {
                        //       if (value!.isEmpty) {
                        //         return 'Please enter Mobile Number';
                        //       }
                        //       return null;
                        //     },
                        //   ),
                        // ),

                        // SizedBox(
                        //   height: 40,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 50),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: 'Gender',
                                labelText: 'Enter your child Gender',
                                labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Gender';
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
                                value: dropdownvalue1,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items1.map((String items1) {
                                  return DropdownMenuItem(
                                    value: items1,
                                    child: Text(
                                      items1,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue1 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Grade',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Handedness',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                value: dropdownvalue2,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items2.map((String items2) {
                                  return DropdownMenuItem(
                                    value: items2,
                                    child: Text(
                                      items2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue2 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Gestation',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                value: dropdownvalue3,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items3.map((String items3) {
                                  return DropdownMenuItem(
                                    value: items3,
                                    child: Text(
                                      items3,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue3 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                'Medical History',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // ],
                            // ),
                            // Column(
                            //   children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: DropdownButton(
                                // Initial Value
                                value: dropdownvalue4,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items4.map((String items4) {
                                  return DropdownMenuItem(
                                    value: items4,
                                    child: Text(
                                      items4,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue4 = newValue!;
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
                                  fontWeight: FontWeight.bold,
                                ),
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
                                        1970), //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101));

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
                                            builder: (context) => gradelist(),
                                          ));
                                      formKey.currentState!.save();
                                      if (_email == "test@gamil.com" &&
                                          _password == "root12345678") ;
                                    }
                                    ;
                                  }),
                                  child: Text("Submit",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          // letterSpacing: 0.5,
                                          color: Colors.black)),
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
