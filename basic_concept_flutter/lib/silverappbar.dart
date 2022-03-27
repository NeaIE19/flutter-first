
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const mybar());
}

// ignore: camel_case_types
class mybar extends StatelessWidget {
  const mybar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: learnAppBar(),
    );
  }
}

// ignore: camel_case_types
class learnAppBar extends StatelessWidget {
  const learnAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBar(
                backgroundColor: Colors.red,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text('Singa Teknik', style: TextStyle(
                      color: Color.fromARGB(26, 247, 207, 195),
                      fontSize: 20.0,
                    )
                  ),
                background: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/image/aufklarung2.jpg')),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.accessibility_new), text: 'About',
                      ),
                      Tab(
                        icon: Icon(Icons.accessible_forward_outlined), text: 'Action',
                      )]
                  ),
                )
              )
            ];
          },
          body: const Center(
            child: Text('Lantang Bicara, Berani Aksi, dan Bertanggung Jawab'),
          ),
        ),
      )
    );
  }
}
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate{

  _SliverAppBarDelegate(this. _tabBar);
  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate){
    return false;
  }
}