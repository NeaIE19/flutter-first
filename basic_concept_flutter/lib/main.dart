import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(List<String> args) {
  runApp(const myApp());
}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 163, 14, 14),
                Colors.black
              ]
            )
          ),
        ),
        elevation: 0,
        toolbarOpacity: 1,
        leading: const Icon(Icons.home, color: Color.fromARGB(255, 139, 71, 71),),
        title: const Text('Aufklarung',),
        centerTitle: true,
        actions: <Widget>[
          // ignore: avoid_returning_null_for_void
          IconButton(onPressed:() => null, icon: const Icon(Icons.call), color: Color.fromARGB(255, 139, 71, 71),),
          // ignore: avoid_returning_null_for_void
          IconButton(onPressed:() => null, icon: const Icon(Icons.search), color: Color.fromARGB(255, 139, 71, 71),)
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        //color: const Color.fromARGB(255, 165, 20, 44),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 145, 184, 238),
          image: const DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/91/86/6b/91866b918c9cca0747f483a46943e926.jpg'),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: const Color.fromARGB(255, 104, 156, 160),
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        height: 300,
        width: 200,
        margin: const EdgeInsets.all(70),
        child: const Text('Waifu'),
        // margin: const EdgeInsets.all(20),
      ),
      // body: const Center(
      //   child: Text('My Name is Adryan Eka Nanta', style: TextStyle(fontWeight: FontWeight.bold),),
      // ),
    );
  }
}