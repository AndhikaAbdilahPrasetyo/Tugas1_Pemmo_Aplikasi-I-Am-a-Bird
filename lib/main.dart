import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "I Am a Bird",
            style: TextStyle(
              fontFamily: 'ComicSans',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ImageScreen()),
                  );
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withAlpha(128),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/memeburung.jpg',
                        width: 200,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Fakta Kocak Tentang Burung:",
                        style: TextStyle(
                          fontFamily: 'ComicSans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("🕊️ Saya bisa terbang, tapi ga bisa parkir!"),
                      Text("🥜 Diet saya sehat, cuma makan biji-bijian."),
                      Text("🎶 Bangun pagi? Saya alarm alami manusia!"),
                      Text("🏡 Rumah saya pohon, tapi saya ga bayar pajak!"),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Cekidot Lebih Lanjut!"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: TextStyle(
                    fontFamily: 'ComicSans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.lightBlue[100],
                child: Column(
                  children: [
                    Text(
                      "Burung Paling Hits di Dunia",
                      style: TextStyle(
                        fontFamily: 'ComicSans',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.orange),
                      title: Text("🦜 Kakatua: Bisa nyontek suara manusia, cocok buat nge-prank!"),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.orange),
                      title: Text("🦅 Elang: Punya mata yang lebih tajam dari gebetanmu."),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.orange),
                      title: Text("🐦 Kolibri: Kecil-kecil cabe rawit, larinya kenceng banget!"),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.orange),
                      title: Text("🦆 Bebek: Jalan santai tapi suaranya heboh!"),
                    ),
                    ListTile(
                      leading: Icon(Icons.star, color: Colors.orange),
                      title: Text("🦉 Burung Hantu: Master begadang dan penuh misteri."),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meme Burung"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Image.asset('assets/memeburung.jpg'),
      ),
    );
  }
}
