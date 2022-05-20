import 'package:fashionapp1/detay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Card11 extends StatefulWidget {
  Card11({Key? key}) : super(key: key);

  @override
  State<Card11> createState() => _Card11State();
}

class _Card11State extends State<Card11> {
  int like = 0;
  bool bas = false;
  @override
  Widget build(BuildContext context) {
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
                                incrementNum();
                                bas = !bas;
                              },
                              icon: bas ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 24,
                              ) :
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 24,   
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text("$like", style: GoogleFonts.lato(fontSize: 12)),
                          ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void incrementNum() {
    setState(() {
      like++;
    });
  }
}
