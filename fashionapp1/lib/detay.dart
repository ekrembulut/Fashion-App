import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetayPage extends StatefulWidget {
  DetayPage({Key? key, required this.imgPath}) : super(key: key);
  final String imgPath;

  @override
  State<DetayPage> createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width - 50,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 24, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        Positioned(
          left: 15,
          right: 15,
          bottom: 30,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 250,
              width: MediaQuery.of(context).size.width - 30,
              // color: Colors.white,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/dress.jpg"),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      "LAMINATED",
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        color: Colors.black
                      )),
                    SizedBox(height: 5,),
                    Text("Louis Vuitton" , style: GoogleFonts.montserrat(fontSize: 16 ,color: Colors.grey)),
                    SizedBox(height: 10,),
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width-170,
                      child: Text("Gayet güzel siyah V yaka bir bluz" , style: GoogleFonts.montserrat(fontSize: 12 ,color: Colors.grey)))
                      ],
                    )
                    
                  ],
                ),
                Divider(color: Colors.grey,),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$6500" , style: GoogleFonts.lato(fontSize: 24 ,fontWeight: FontWeight.bold),),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: IconButton(onPressed: (() { 
                        }), icon: Icon(Icons.arrow_forward_ios)),
                      )
                
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
