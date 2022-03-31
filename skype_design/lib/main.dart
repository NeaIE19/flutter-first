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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    ' Father', ' Mother', ' Brother ',
    ' Bestie', ' My Crush', ' Steffano',
  ];
  final List<String> chat = <String> [
    'makan nak jangan lupa ', 'kamu dimana??!', 'yahahaha hayuuk',
    'wkwkwkwk', 'iyaa bebp', 'gasss gak nih ?'
  ];
  final List<String> images = <String>[
    'images/images01.jpeg', 'images/images02.jpeg', 'images/images03.jpeg',
    'images/images04.jpeg', 'images/images05.jpeg', 'images/images06.jpeg'
  ];
  Widget listview(BuildContext context){
    return ListView.separated(
        padding: const EdgeInsets.all(0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 100,
            height: 50,
            alignment: FractionalOffset.center,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: [
                  const SizedBox(height: 100, width: 10,),
                  CircleAvatar(
                    radius: 20.5,
                    backgroundImage: AssetImage('${images[index]}'),
                  ),
                  // const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox( height: 5, width: 100,),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('${entries[index]}', 
                          style: const TextStyle(
                          letterSpacing: 0.0,
                          fontSize: 16.5
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '${chat[index]}', 
                          style: const TextStyle(fontSize: 10, color: Colors.black)
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
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Skype'), centerTitle: true,
          backgroundColor: Colors.blueAccent,
          leading: const Icon(Icons.menu),
          automaticallyImplyLeading: false,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs:[
              Container(
                width: 50,
                child: const Icon(Icons.message_outlined),
              ),
              Container(
                width: 50,
                child: const Icon(Icons.call),
              ),
              Container(
                width: 50,
                child: const Icon(Icons.contacts_sharp),
              ),
              Container(
                width: 50,
                child: const Icon(Icons.receipt)
              ),
            ]
          ),
          actions: <Widget>[
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
        ),
        body: TabBarView(
          children: [
            listview(context),
            Center(child: Text('CATS')),
            Center(child: Text('BIRDS')),
            Center(child: Text('BIRDS')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
      )
    );
  }
}
