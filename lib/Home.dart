import 'package:flutter/material.dart';
import 'header.dart';

void main() => runApp(const Homescreen());

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: header(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              selectedIcon: Icon(Icons.home),
              icon: Icon(
                Icons.home_outlined,
                color: currentPage == 0 ? Colors.lightGreen : Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(
                Icons.search,
                color: currentPage == 1 ? Colors.lightGreen : Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
              selectedIcon: Icon(
                Icons.chat,
                color: Colors.lightBlue,
              ),
              icon: Icon(
                Icons.chat_bubble_outline,
                color: currentPage == 2 ? Colors.lightGreen : Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
              selectedIcon: Icon(
                Icons.people_alt_outlined,
                color: Colors.lightBlue,
              ),
              icon: Icon(
                Icons.people_alt_rounded,
                color: currentPage == 3 ? Colors.lightGreen : Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
              selectedIcon: Icon(Icons.person),
              icon: Icon(
                Icons.person_2_outlined,
                color: currentPage == 4 ? Colors.lightGreen : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
