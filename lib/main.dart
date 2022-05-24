import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('data:image/png;base64,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'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Song"),
                      new Tab(icon: new Icon(Icons.download), text: "Galery"),
                      new Tab(icon: new Icon(Icons.favorite), text: "Playlist"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            Song(),
            Galery(),
            Playlist(),
          ]),
        ),
      ),
    );
  }
}

class Song extends StatelessWidget {
  final List lagu = [
    "Lyodra Ginting - Dibanding Dia",
    "Tiara Andini - Merasa Indah",
    "Ziva Magnolya - Peri Cintaku",
    "Rizky Febian - Seperti Kisah",
    "Rizky Febian - Hingga Tua Bersama",
    "Tiara Andini - Janji Setia",
    "Mahalini - Kisah Sempurna",
    "Fabio Asher - Rumah Singgah",
    "Fabio Asher - Bertahan Terluka",
    "Glenn Fredly - Januari",
    "Glenn Fredly - Kasih Putih",
    "Glenn Fredly - Sedih Tak Berujung"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(lagu[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + lagu[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: lagu.length,
      ),
    );
  }
}

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.postimg.cc/d3Jhf0Vc/lyodra.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Lyodra Ginting - Dibandingkan Dia',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.postimg.cc/4dxFPfbm/merasa-indah.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Tiara Andini - Merasa Indah',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.postimg.cc/8P6XtnWB/peri-cintaku.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Ziva Magnolya - Peri Cintaku',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.postimg.cc/9fWxXmkJ/seperti-kisah.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Rizky Febian - Seperti Kisah',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.postimg.cc/tghCHHfq/rizky.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Rizky Febian - Hingga Tua Bersama',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://i.postimg.cc/QtKYw6w3/janji-setia.jpg",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Tiara Andini - Janji Setia',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.postimg.cc/wvSxYGBc/kisah-sempurna.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Mahalini - Kisah Sempurna',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.postimg.cc/pLqj8zkb/rumah-singgah.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Fabio Asher - Rumah Singgah',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.postimg.cc/PJckw6cV/fabio.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Fabio Asher - Bertahan Terluka',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.postimg.cc/Gp6HJQyN/januari.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Glenn Fredly- Januari',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.postimg.cc/PJjJ05KQ/kasih-putih.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Glenn Fredly - Kasih Putih',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                'https://i.postimg.cc/6pJkxGNZ/glen.jpg',
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'Glenn Fredly - Sedih Tak Berujung',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class Playlist extends StatelessWidget {
  final List ffv = [
    "Raisa - Kali Kedua",
    "Raisa - Jatuh Hati",
    "Raisa - Mantan Terindah",
    "Raisa - Bahasa Kalbu",
    "Raisa - Usai Disni",
    "Raisa - Apalah",
    "Raisa - Terjebak Nostalgia",
    "Raisa - Serba Salah",
    "Raisa - Love & Let Go",
    "Raisa - Percayalah",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(ffv[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + ffv[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: ffv.length,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
