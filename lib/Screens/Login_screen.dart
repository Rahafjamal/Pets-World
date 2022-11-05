import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Screens/gmail.dart';
import 'package:final_project/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firestore.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  CollectionReference user = FirebaseFirestore.instance.collection('user');

  Future<void> Login() async {
    try {
      var login = FirebaseAuth.instance;
      UserCredential userCredential = await login.signInWithEmailAndPassword(
          email: nameController.text, password: passwordController.text);
      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Firestore()));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      labelText: 'User Name',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                  height: 50,
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 5, right: 15, left: 15),
                        backgroundColor: Color(0xffd7e5ff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        '        Log  in        ',
                        style: TextStyle(
                            color: Color(0xff5674cc),
                            fontSize: 25,
                            fontFamily: "Tajawal-Light",
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        Login();
                      },
                    )),
                SizedBox(height: 20),
                // // TextButton(
                // //   onPressed: () {
                // //     //forgot password screen
                // //   },
                // //   // child: const Text(
                // //   //   'Forgot Password ?',
                // //   //   style: TextStyle(
                // //   //     color: Color(0xff2b5eaf),
                // //   //     fontSize: 18,
                // //   //   ),
                // //   // ),
                // ),
                Container(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Column(
                    children: <Widget>[
                      const Text(
                        'Does not have account?',
                        style: TextStyle(
                          fontFamily: 'Tajawal-Light',
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: TextButton(
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff2b5eaf),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return MyApp();
                                  },
                                ));
                              },
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 60),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginWithGmail();
                                }));
                              },
                              icon: ImageIcon(
                                AssetImage('images/13.png'),
                                size: 100,
                              ),
                              splashColor: Color(0x00000000),
                            ),
                          )
                        ],
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                // Container(
                //   child: Row(
                //     children: <Widget>[
                //       const Text(
                //         'you can Login with ',
                //         style: TextStyle(
                //           fontSize: 20,
                //         ),
                //       ),
                //       TextButton(
                //         child: const Text(
                //           'Gmail',
                //           style: TextStyle(
                //             fontSize: 20,
                //             color: Color(0xff2b5eaf),
                //           ),
                //         ),
                //         onPressed: () {
                //           Navigator.push(context, MaterialPageRoute(
                //             builder: (context) {
                //               return LoginWithGmail();
                //             },
                //           ));
                //         },
                //       )
                //     ],
                //     mainAxisAlignment: MainAxisAlignment.center,
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                  alignment: Alignment.center,
                  child: const Image(
                    image: AssetImage("images/2.jpg"),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
