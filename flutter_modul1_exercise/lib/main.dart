
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Labit UMM',
      theme: ThemeData(
 
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Labit UMM'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<String> entries = <String>[
    ' Erick Thohir', ' Sandiaga Uno', ' Prabowo Subianto ',
    ' Joe Biden', ' Donald Trump', ' Vladimir Putin',
    ' Luhut Binsar Panjaitan', ' Joko Widodo', ' Megawati',
    ' Ma`ruf Amin', ' Gusdur', ' Wiranto'
  ];
  final List<String> chat = <String> [
    'papapale pale', 'p', 'yahahaha hayuuk',
    'wkwkwkwk', 'assalamualaikum', 'gasss gak nih ?',
    'dimana woy?!', 'ooo yooo ndak tau', 'aku heran sama ibu-ibu, masaknya hanya menggoreng kah?',
    'tugas udah atau belum?', 'To`poasa To`po`oli', 'mbeda na hahaira`a'
  ];
  final List<int> colorCodes = <int>[0, 0, 0];
  final List<String> images = <String>[
    'images/aufklarung.jpg', 'images/01.png', 'images/02.jpg',
    'images/aufklarung.jpg', 'images/01.png', 'images/02.jpg',
    'images/luhut.jpeg', 'images/owi.jpeg', 'images/02.jpg',
    'images/aufklarung.jpg', 'images/01.png', 'images/02.jpg'
  ];
  Widget tabbarViews(BuildContext context){
    return const TabBar(
      tabs: [
        Icon(Icons.message),
        Icon(Icons.call),
        Icon(Icons.contact_phone),
        // Icon(Icons.media_)
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu
        ),
        // title: const Text('Whatsapp'),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          Center(
            child: Container(
              height: 50, width: 50,
              // alignment: Alignment.center,
              margin: const EdgeInsets.all(100.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/aufklarung.jpg')
                )
              ) 
            )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.search
              ),
            )
          ),
        ],
        bottom: tabbarViews(context),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 100,
            height: 50,
            color: Colors.amber[index],
            alignment: FractionalOffset.center,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: [
                  const SizedBox(height: 100, width: 5,),
                  CircleAvatar(
                    radius: 20.5,
                    backgroundImage: AssetImage('${images[index]}'),
                  ),
                  // const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox( height: 10, width: 100,),
                      Text('${entries[index]}', style: const TextStyle(
                        letterSpacing: 0.0,
                        fontSize: 16.5
                      ),),
                      RichText(
                        text: TextSpan(
                          text: '${chat[index]}', style: const TextStyle(fontSize: 10, color: Colors.black)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ), 
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
            backgroundColor: Colors.blueAccent
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone_outlined),
            label: 'Contacts',
          ),
          
        ],
      ),
    );
  }
}
