import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/gradelist.dart';
import 'package:kids_learning/detailspage/parentdetails.dart';
// import 'package:tcube/grade.dart';
// import 'package:tcube/gradelist.dart';
// import 'package:tcube/main.dart';
// import 'package:tcube/parentdetails.dart';

class login extends StatelessWidget {
  // const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
    );
  }
}

class loginpage extends StatefulWidget {
  // const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
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
                image: AssetImage("assets/images/TCUBE.png"),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: Form(
                key: formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: const EdgeInsets.fromLTRB(50, 200, 0, 0)
                          // child: Image.network(
                          //   'https://o.remove.bg/downloads/bf5bf109-3b7b-417d-907c-76bff1d10123/logo1-removebg-preview.png',
                          //   width: 59,
                          //   fit: BoxFit.fill,
                          //   alignment: Alignment.center,
                          // ),
                          ),
                      // Text('TCUBE',
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 50,
                      //       fontWeight: FontWeight.w700,
                      //     )),
                      // Center(
                      //     child: Text('PAWISTIVE HEALTH THROUGH AYURVEDA',
                      //         style: TextStyle(
                      //             color: Colors.grey, fontSize: 15))),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20),
                      ),
                      Row(
                        children: [
                          Center(
                            child: Container(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
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
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                              labelText: 'Email',
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 15)),
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
                          validator: (password) {
                            if (password!.isEmpty)
                              return "Please Enter the Password";
                            else if (password.length < 5 || password.length > 8)
                              return "Password Length is incorrect";
                            else if (RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>')
                                .hasMatch(password))
                              return "Password should be combined of letters,numbers and special characters ";

                            return null;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                              icon: const Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: 'Enter the Password',
                              hintStyle: TextStyle(fontWeight: FontWeight.bold),
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text(
                      //       'Sign in',
                      //       style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 27,
                      //           fontWeight: FontWeight.w700),
                      //     ),
                      //     CircleAvatar(
                      //       radius: 30,
                      //       backgroundColor: Color(0xff4c505b),
                      //       child: IconButton(
                      //           color: Colors.white,
                      //           onPressed: () {
                      //             Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder: (context) => login(),
                      //                 ));
                      //           },
                      //           icon: Icon(
                      //             Icons.arrow_forward,
                      //           )),
                      //     )
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 40,
                      // ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 20),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => createaccount(),
                                      ));
                                  // Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 100, top: 20),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  )),
                            ),
                          ]),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 90, 0),
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
                                child: Text("Login to account",
                                    style: TextStyle(
                                        // fontWeight: FontWeight.bold,
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
                    ])),
          )),
    );
    // );
    //   body: DecoratedBox(
    // decoration: BoxDecoration(
    //   image: DecorationImage(
    //       image:
    //       Ass
    //       // NetworkImage(
    //       //     'https://png.pngtree.com/thumb_back/fw800/back_our/20190617/ourmid/pngtree-cartoon-kid-meadow-green-background-material-image_124473.jpg'),
    //       fit: BoxFit.cover),
    // ),
    // ));
  }
}
// import 'package:flutter/material.dart';
// import 'package:tcube/grade.dart';
// import 'package:tcube/main.dart';

class createaccount extends StatelessWidget {
  // const createaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createaccountpage(),
    );
  }
}

class createaccountpage extends StatefulWidget {
  // const createaccountpage({super.key});

  @override
  _createaccountpageState createState() => _createaccountpageState();
}

class _createaccountpageState extends State<createaccountpage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //late String _email, _password;
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 10),
                      child: Text('TCUBE',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          )),
                      // Image.asset(
                      //   'assets/tcubelogo.png',
                      //   height: 200,
                      // ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                      child: Text(
                        'Create Account ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Divider(
                    //   height: 10,
                    //   color: Color(0xFFd5f0fe),
                    // ),
                    SingleChildScrollView(
                      child: Container(
                        // padding: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 35, right: 35),
                              child: Column(
                                children: [
                                  TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    validator: (email) {
                                      if (email!.isEmpty)
                                        return "Please Enter Email";
                                      else if (!RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(
                                              email)) //Reg exp for validate the email

                                        return "Its Not a Vaid Email";
                                      else
                                        return null;
                                    },
                                    decoration: const InputDecoration(
                                        icon: const Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Enter your Email',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        labelText: 'Email',
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    validator: (email) {
                                      if (email!.isEmpty)
                                        return "Please Enter your name";

                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        icon: const Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Enter your Name',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        labelText: 'Name',
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    validator: (number) {
                                      if (number!.isEmpty)
                                        return "Please Enter your Mobile number";
                                      else if (RegExp(r"^\+?0[0-9]{10}$")
                                          .hasMatch(number))
                                        ; //Reg exp for validate the email

                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        icon: const Icon(
                                          Icons.phone_android,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Enter your mobile number',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        labelText: 'Mobile number',
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.black),
                                    validator: (password) {
                                      if (password!.isEmpty)
                                        return "Please fill this field";
                                      else if (password.length < 5 ||
                                          password.length > 8)
                                        return "Password Length is incorrect";
                                      else if (RegExp(
                                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>')
                                          .hasMatch(password))
                                        return "Password should be combined of letters,numbers and special characters ";
                                      //Reg exp for validate the email

                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        icon: const Icon(
                                          Icons.password,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Create password',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Colors.black),
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
                                    decoration: const InputDecoration(
                                        icon: const Icon(
                                          Icons.confirmation_num,
                                          color: Colors.black,
                                        ),
                                        hintText: 'Confirm your password',
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        labelText: 'Confirm Password',
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Text(
                                      //   'Sign Up',
                                      //   style: TextStyle(
                                      //       color: Colors.black,
                                      //       fontSize: 27,
                                      //       fontWeight: FontWeight.w700),
                                      // ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            220, 10, 10, 0),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.transparent,
                                          child: IconButton(
                                            color: Colors.black,
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          parent(),
                                                    ));
                                                formKey.currentState!.save();
                                              }
                                              ;
                                            },
                                            icon: Icon(
                                              Icons.arrow_forward,
                                              size: 50,
                                            ),
                                          ),
                                        ),
                                      ),

                                      // ),
                                    ],
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(
                                  //       right: 10, top: 10),
                                  //   child: TextButton(
                                  //     onPressed: () {
                                  //       Navigator.push(
                                  //           context,
                                  //           MaterialPageRoute(
                                  //               builder: (context) =>
                                  //                   gradelist()));
                                  //     },
                                  //     child: Text(
                                  //       'SIGN IN',
                                  //       textAlign: TextAlign.left,
                                  //       style: TextStyle(
                                  //           decoration:
                                  //               TextDecoration.underline,
                                  //           color: Colors.black,
                                  //           fontSize: 25,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //     style: ButtonStyle(),
                                  //   ),
                                  // ),
                                  // SizedBox(
                                  //   height: 40,
                                  // ),
                                  // Row(
                                  //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Padding(
                                  //       padding: const EdgeInsets.only(top: 10),
                                  //       child: TextButton(
                                  //         onPressed: () {
                                  //           Navigator.pushNamed(context, 'login');
                                  //         },
                                  //         child: Text(
                                  //           'Sign In',
                                  //           textAlign: TextAlign.left,
                                  //           style: TextStyle(
                                  //               decoration: TextDecoration.underline,
                                  //               color: Color.fromARGB(255, 83, 79, 79),
                                  //               fontSize: 18),
                                  //         ),
                                  //         style: ButtonStyle(),
                                  //       ),
                                  //     ),
                                  //   ],
                                  // )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ],
            ))));
  }
}
