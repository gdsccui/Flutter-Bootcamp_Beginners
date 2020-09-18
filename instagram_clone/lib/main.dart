import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> myScreens = [
    Home(),
    Search(),
    CameraPost(),
    Notification(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt),
        title: Text(
          "Instagram",
          style: GoogleFonts.pacifico(),
        ),
        actions: [Icon(Icons.send)],
      ),
      body: Container(
        child: ListView(
          children: [myScreens[_selectedIndex]],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[700],
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Camera'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Notification'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ]),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView(
        children: [
          // Stories
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  minRadius: 38.0,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundImage: AssetImage('assets/pic.png'),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
          // Post
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Search"));
  }
}

class CameraPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Camera"));
  }
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Notification"));
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Profile"));
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [UserInfo(), PostImage(), PostOption()],
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/pic.png'),
        ),
        SizedBox(
          width: 10,
        ),
        Text("m_hamzashakeel"),
        SizedBox(
          width: 220,
        ),
        Icon(Icons.more_vert)
      ],
    );
  }
}

class PostImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        child: Image.asset('assets/image.jpg'),
      ),
    );
  }
}

class PostOption extends StatefulWidget {
  @override
  _PostOptionState createState() => _PostOptionState();
}

class _PostOptionState extends State<PostOption> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(
              like ? Icons.favorite_border : Icons.favorite,
              size: 35,
              color: like ? Colors.white : Colors.red,
            ),
            onPressed: () {
              setState(() {
                like = !like;
              });
            }),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(
              Icons.comment,
              size: 35,
            ),
            onPressed: () {}),
        SizedBox(
          width: 10,
        ),
        IconButton(
            icon: Icon(
              Icons.send,
              size: 35,
            ),
            onPressed: () {}),
        SizedBox(
          width: 190,
        ),
        IconButton(
            icon: Icon(
              Icons.bookmark_border,
              size: 35,
            ),
            onPressed: () {}),
      ],
    );
  }
}
