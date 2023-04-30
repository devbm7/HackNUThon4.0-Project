import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Scan",
      img: "assets/skill.jpg"
  );

  Items item2 = new Items(
    title: "Leads",
    img: "assets/skill.jpg",
  );
  Items item3 = new Items(
    title: "Settings",
    img: "assets/skill.jpg",
  );
  Items item4 = new Items(
    title: "Generate QRCode",
    img: "assets/skill.jpg",
  );
  // Items item5 = new Items(
  //   title: "To do",
  //   img: "assets/skills.jpg",
  // );
  // Items item6 = new Items(
  //   title: "Settings",
  //   img: "assets/skills.jpg",
  // );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    //var color = 0xff453658;
    var color = 0xFFCDDC39;
    return Flexible(
      child: Center
        (child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            );
          }).toList()))

    );
  }
}

class Items {
  String title;
  String img;
  Items({required this.title,required this.img});
}