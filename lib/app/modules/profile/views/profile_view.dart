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
            style: TextStyle(
                color: Color(0xFF22215B),
                fontSize: 16,
                fontWeight: FontWeight.bold),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                    image: Image.asset('assets/icons/folder-415EB6.png'),
                    icon: Image.asset('assets/icons/more-blue.png'),
                    title: 'Mobile Apps',
                    date: 'December 20.2020',
                    color: Color(0xff415EB6),
                  ),
                  CardFolder(
                    image: Image.asset('assets/icons/folder-FFB110.png'),
                    icon: Image.asset('assets/icons/more-yellow.png'),
                    title: 'SVG Icons',
                    date: 'December 20.2020',
                    color: Color(0xffFFB110),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardFolder(
                    image: Image.asset('assets/icons/folder-AC4040.png'),
                    icon: Image.asset('assets/icons/more-red.png'),
                    title: 'Prototypes',
                    date: 'November 22.2020',
                    color: Color(0xffAC4040),
                  ),
                  CardFolder(
                    image: Image.asset('assets/icons/folder-23B0B0.png'),
                    icon: Image.asset('assets/icons/more-green.png'),
                    title: 'Avatars',
                    date: 'November 22.2020',
                    color: Color(0xff23B0B0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Uploads',
                    style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/icons/sort.png'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/icons/word.png',
                      fit: BoxFit.cover,
                    )),
                title: Text(
                  'Projects.docx',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF22215B)),
                ),
                subtitle:
                    Text('November 22.2020', style: TextStyle(fontSize: 11)),
                trailing: Text('300kb'),
              ),
            )
          ],
        ));
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
    required this.icon,
  });

  final String title;
  final String date;
  final Color color;
  final Image image;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 120,
      width: 160,
      decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              icon,
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: color),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, color: color),
          )
        ],
      ),
    );
  }
}
