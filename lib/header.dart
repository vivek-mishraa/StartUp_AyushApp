import 'package:flutter/material.dart';

class header extends StatefulWidget {
  const header({super.key});

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/image/ayush.jpeg",
          height: 50,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black87,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.black87,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.black87,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Event's For You",
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20,
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/event.jpeg")),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent),
                  child: Text("event 1"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/event2.png")),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent),
                  child: Text("event 2"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/event3.jpg")),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent),
                  child: Text("event 3"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 400,
                  height: 100,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/event4.jpeg")),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent),
                  child: Text("event 4"),
                )
              ],
            ),
          ),
          Divider(),
          Column(
            children: List.generate(
              2,
              (index) => Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage("assets/image/profile1.jpeg"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
