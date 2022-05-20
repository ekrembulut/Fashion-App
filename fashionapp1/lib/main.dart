import 'package:fashionapp1/card.dart';
import 'package:fashionapp1/detay.dart';
import 'package:fashionapp1/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController myController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    int like = 73;
    return Scaffold(
      drawer: MyDrawer2(),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: myController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 16,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 16,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Fashion App",
            style: GoogleFonts.prozaLibre(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.grey,
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 140,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listeElemanlari(
                        "assets/model1.jpeg", "assets/chanellogo.jpg"),
                    const SizedBox(
                      width: 25,
                    ),
                    listeElemanlari(
                        "assets/model2.jpeg", "assets/chloelogo.png"),
                    const SizedBox(
                      width: 25,
                    ),
                    listeElemanlari(
                        "assets/model3.jpeg", "assets/louisvuitton.jpg"),
                    const SizedBox(
                      width: 25,
                    ),
                    listeElemanlari(
                        "assets/model1.jpeg", "assets/chanellogo.jpg"),
                    const SizedBox(
                      width: 25,
                    ),
                    listeElemanlari(
                        "assets/model2.jpeg", "assets/chloelogo.png"),
                    const SizedBox(
                      width: 25,
                    ),
                    listeElemanlari(
                        "assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  ],
                ),
              ),
            ),
          ),
          cards(context),
          // cards1(context)
          Card11(),
        ],
      ),
    );
  }

  Padding cards(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 6,
        // color: Colors.blueAccent,
        child: Container(
          height: 500,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage("assets/model1.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daisy",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "30 Minutes Ago",
                          style: GoogleFonts.montserrat(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 22,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                style: GoogleFonts.lato(fontSize: 13),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  InkWell(
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => DetayPage(
                                  imgPath: "assets/modelgrid1.jpeg",
                                ))))),
                    child: Hero(
                      tag: "assets/modelgrid1.jpeg",
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/modelgrid1.jpeg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow.shade100),
                        width: (MediaQuery.of(context).size.width - 50) / 2,
                        height: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetayPage(
                                      imgPath: "assets/modelgrid2.jpeg",
                                    ))))),
                        child: Hero(
                          tag: "assets/modelgrid2.jpeg",
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/modelgrid2.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.yellow.shade100),
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            height: 95,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetayPage(
                                      imgPath: "assets/modelgrid3.jpeg",
                                    ))))),
                        child: Hero(
                          tag: "assets/modelgrid3.jpeg",
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/modelgrid3.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.yellow.shade100),
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            height: 95,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.brown.withOpacity(0.2)),
                    height: 30,
                    width: 100,
                    child: Center(
                        child: Text(
                      "# Louis Vuitton",
                      style: GoogleFonts.lato(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.brown.withOpacity(0.2)),
                    child: Center(
                        child: Text(
                      "# Chloe",
                      style: GoogleFonts.lato(fontSize: 12),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.brown,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.reply,
                    color: Colors.brown.withOpacity(0.4),
                    size: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("1.7K", style: GoogleFonts.lato(fontSize: 12)),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.comment,
                    color: Colors.brown.withOpacity(0.4),
                    size: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("325", style: GoogleFonts.lato(fontSize: 12)),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 24,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("73", style: GoogleFonts.lato(fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding cards1(BuildContext context) {
    int like = 73;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 6,
        // color: Colors.blueAccent,
        child: Container(
          height: 500,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          image: AssetImage("assets/model4.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Taylor",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "12 Minutes Ago",
                          style: GoogleFonts.montserrat(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 22,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                style: GoogleFonts.lato(fontSize: 13),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  InkWell(
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => DetayPage(
                                  imgPath: "assets/model4.jpeg",
                                ))))),
                    child: Hero(
                      tag: "assets/model4.jpeg",
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/model4.jpeg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow.shade100),
                        width: (MediaQuery.of(context).size.width - 50) / 2,
                        height: 200,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetayPage(
                                      imgPath: "assets/model5.jpeg",
                                    ))))),
                        child: Hero(
                          tag: "assets/model5.jpeg",
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/model5.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.yellow.shade100),
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            height: 95,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetayPage(
                                      imgPath: "assets/model6.jpeg",
                                    ))))),
                        child: Hero(
                          tag: "assets/model6.jpeg",
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/model6.jpeg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.yellow.shade100),
                            width:
                                (MediaQuery.of(context).size.width - 100) / 2,
                            height: 95,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.brown.withOpacity(0.2)),
                    height: 30,
                    width: 100,
                    child: Center(
                        child: Text(
                      "# Louis Vuitton",
                      style: GoogleFonts.lato(fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.brown.withOpacity(0.2)),
                    child: Center(
                        child: Text(
                      "# Chloe",
                      style: GoogleFonts.lato(fontSize: 12),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.brown,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.reply,
                    color: Colors.brown.withOpacity(0.4),
                    size: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("1.2K", style: GoogleFonts.lato(fontSize: 12)),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.comment,
                    color: Colors.brown.withOpacity(0.4),
                    size: 24,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("112", style: GoogleFonts.lato(fontSize: 12)),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              incrementNum(like);
                              print(like);
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 24,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(like.toString(),
                            style: GoogleFonts.lato(fontSize: 12)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listeElemanlari(String model, String logo) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(model), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(logo), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.brown),
            width: 75,
            height: 30,
            child: Center(
              child: Text(
                "Follow",
                style: GoogleFonts.montserrat(color: Colors.white),
              ),
            ))
      ],
    );
    
  }

  void incrementNum(int sayi) {
    setState(() {
      sayi = sayi++;
    });
  }
}
