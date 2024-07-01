// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/detailspage/login.dart';
// import 'package:kids_learning/grade1/main.dart';
// import 'package:tcube/frontpage.dart';
// import 'package:tcube/grade.dart';
// import 'package:tcube/login.dart';
// import 'package:tcube/welcome.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 900,
        duration: 20,
        splash: Image.asset('assets/images/tcube.jpg'),
        nextScreen: WelcomeScreen(),
        // routes: {
        //   'register': (context) => MyRegister(),
        //   'login': (context) => MyLogin(),
        // },
        // MyLogin(),
        animationDuration: Duration(milliseconds: 4000),
        splashTransition: SplashTransition.fadeTransition,
        // pageTransitionType: PageTransitionType.topToBottom,
        backgroundColor: Color(0xff001220),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffA9DFF9),
                      //  Color.fromARGB(255, 118, 187, 255),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Expanded(
                          child:
                              // Image.network(
                              //     'https://www.pngall.com/wp-content/uploads/9/Kids-Rainbow-Vector-No-Background.png')
                              Image.asset("assets/images/welcom.png"))
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xFFA9DFF9),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            "Tcube",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Improve the life of children suffering from \nspecific learning disability",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          //repleace sizebox with spacer
                          Row(
                            //button position
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                height: 60,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: Color(0xFFA9DFF9),
                                onPressed: () {
                                  //home screen path
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => login()));
                                },
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// class loginpage extends StatefulWidget {
//   const loginpage({super.key});

//   @override
//   State<loginpage> createState() => _loginState();
// }

// class _loginState extends State<loginpage> {
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   late String _email, _password;
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 4, 40, 69),
//         body: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Form(
//                 key: formKey,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 10, vertical: 10),
//                         // child: Image.network(
//                         //   'https://o.remove.bg/downloads/bf5bf109-3b7b-417d-907c-76bff1d10123/logo1-removebg-preview.png',
//                         //   width: 59,
//                         //   fit: BoxFit.fill,
//                         //   alignment: Alignment.center,
//                         // ),
//                       ),
//                       Text('MRIGRAKSHA',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 50,
//                             fontWeight: FontWeight.w700,
//                           )),
//                       Center(
//                           child: Text('PAWISTIVE HEALTH THROUGH AYURVEDA',
//                               style:
//                                   TextStyle(color: Colors.grey, fontSize: 15))),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10.0, top: 20),
//                       ),
//                       Row(
//                         children: [
//                           Center(
//                             child: Container(
//                               child: Text(
//                                 'LOGIN',
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold, fontSize: 15),
//                               ),
//                               decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     colors: [
//                                       Colors.white.withOpacity(0.3),
//                                       Colors.transparent
//                                     ],
//                                   ),
//                                   border: Border(
//                                       left: BorderSide(
//                                           color: Colors.white, width: 5))),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10.0, right: 10),
//                         child: TextFormField(
//                           style: TextStyle(color: Colors.white),
//                           onSaved: (value) {
//                             _email = value!;
//                           },
//                           validator: (email) {
//                             if (email!.isEmpty)
//                               return "Please Enter Email ";
//                             else if (!RegExp(
//                                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                                 .hasMatch(
//                                     email)) //Reg exp for validate the email

//                               return "Its Not a Vaid Email";
//                             return null;
//                           },
//                           keyboardType: TextInputType.emailAddress,
//                           decoration: InputDecoration(
//                               focusedBorder: UnderlineInputBorder(
//                                   borderSide: BorderSide(color: Colors.white)),
//                               prefixIcon:
//                                   Icon(Icons.email, color: Colors.white),
//                               labelText: "EMAIL ADDRESS",
//                               labelStyle:
//                                   TextStyle(color: Colors.white, fontSize: 16)),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 10.0, vertical: 10.0),
//                         child: TextFormField(
//                           style: TextStyle(color: Colors.white),
//                           onSaved: (value) {
//                             _password = value!;
//                           },
//                           validator: (password) {
//                             if (password!.isEmpty)
//                               return "Please Enter the Password";
//                             else if (password.length < 8 ||
//                                 password.length > 15)
//                               return "Password Length is incorrect";
//                             return null;
//                           },
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             focusedBorder: UnderlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.white)),
//                             prefixIcon:
//                                 Icon(Icons.lock_open, color: Colors.white),
//                             labelText: "PASSWORD",
//                             labelStyle:
//                                 TextStyle(color: Colors.white, fontSize: 16),
//                           ),
//                         ),
//                       ),
//                       Divider(height: 5, color: Color.fromARGB(255, 4, 40, 69)),
//                       Center(
//                         child: ElevatedButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Forget Password?',
//                             style: TextStyle(color: Colors.black),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             primary: Color.fromARGB(230, 255, 255, 255),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Divider(
//                         height: 10,
//                         color: Color.fromARGB(255, 4, 40, 69),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           height: height * 0.06,
//                           width: width - 150,
//                           child: ElevatedButton(
//                             // color: Color.fromARGB(255, 241, 92, 218),
//                             // shape: RoundedRectangleBorder(
//                             //     borderRadius:
//                             //         BorderRadius.all(Radius.circular(10))),
//                             onPressed: () {
//                               if (formKey.currentState!.validate()) {
//                                 formKey.currentState!.save();
//                                 // if (_email == "test@gamil.com" &&  _password == "root12345678"){

//                               }
//                               ;
//                             },
//                             child: Text("Login to account",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 10,
//                                     letterSpacing: 0.5,
//                                     color: Colors.black)),
//                             style: ElevatedButton.styleFrom(
//                               primary: Color.fromARGB(230, 255, 255, 255),
//                               // side: BorderSide(width: 2),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12.0),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Divider(
//                         height: 10,
//                         color: Color.fromARGB(255, 4, 40, 69),
//                       ),
//                       Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "Dont' have an account?",
//                               style:
//                                   TextStyle(color: Colors.white, fontSize: 20),
//                             ),
//                             Divider(
//                               indent: 10,
//                             ),
//                             Center(
//                                 child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) => grade(),
//                                   ),
//                                 );
//                               },
//                               child: Text(
//                                 "Create Account",
//                                 style: TextStyle(
//                                     color: Colors.black, fontSize: 16),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 primary: Color.fromARGB(230, 255, 255, 255),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(12.0),
//                                 ),
//                               ),
//                             ))
//                           ])
//                     ]))));
//   }
// }
