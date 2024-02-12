import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        appBar: AppBar(
          backgroundColor: Color(0xFFF7F7F7),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              color: Color(0xFF22215B)),
          title: const Text(
            'My Profile',
            style: TextStyle(color: Color(0xFF22215B)),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
                color: Color(0xFF22215B))
          ],
          centerTitle: true,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                          width: 65,
                          height: 65,
                          child: Image.asset(
                            'assets/images/profile.png',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(height: 15),
                      Text('Neelesh Chaudhary',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF22215B))),
                      SizedBox(height: 5),
                      Text('UI / UX Designer', style: TextStyle(fontSize: 13)),
                      SizedBox(height: 15),
                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF22215B).withOpacity(0.6))),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xffFF317B),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'PRO',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Folder',
                    style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
