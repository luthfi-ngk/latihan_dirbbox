import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //bakground
          Container(
            width: Get.width,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
          //layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),
                Container(
                  width: 171,
                  height: 189,
                  child: Image.asset(
                    'assets/images/pic-1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 20, color: Color(0xFF22215B)),
                ),
                Text(
                  'Dirbbox',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF22215B)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: Text(
                    'Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.',
                    style: TextStyle(fontSize: 14, color: Color(0xFF7B7F9E)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset('assets/icons/fingr.png'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Smart Id',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF567DF4)),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFFEEF7FE),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign In',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)))),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Text(
                  'Use Social Login',
                  style: TextStyle(fontSize: 12),
                )),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/ig.png'),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset('assets/icons/twitter.png'),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset('assets/icons/fb.png'),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                    child: Text(
                  'Create an Account',
                  style: TextStyle(fontSize: 16),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
