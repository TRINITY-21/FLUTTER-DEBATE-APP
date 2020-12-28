// import 'package:debate/api/foodModel.dart';
// import 'package:debate/api/listModel.dart';
// import 'package:debate/ui/detailsPage.dart';
// import 'package:debate/ui/foodTabs.dart';
// import 'package:debate/ui/networkHandler/network_handler.dart';
// import 'package:debate/ui/search.dart';
import 'package:debate/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ReadMore extends StatefulWidget {
  @override
  _ReadMoreState createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore>
    with SingleTickerProviderStateMixin {
  // TabController _controller;
  bool isLoaded = true;

  // NetworkHandler networkHandler = NetworkHandler();
  // FoodModel foodModel = FoodModel();
  // ListModel fmodel = ListModel();

  // recommendedFoods() async {
  //   final food = await networkHandler.get('/api/book/books');

  //   setState(() {
  //     fmodel = ListModel.fromJson(food);
  //     isLoaded = true;
  //     print(fmodel.book);
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // recommendedFoods();
    // _controller = TabController(length: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(1),
      body: isLoaded == true
          ? Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(150))),
              child: ListView(children: [
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UserProfilePage()));
                          },
                          child: Icon(Icons.menu, color: Colors.black),
                        ),
                        Container(
                          height: 40.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 6.0,
                                  spreadRadius: 4.0,
                                  offset: Offset(0.0, 3.0),
                                ),
                              ],
                              color: Color(0xFFC6E7FE),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                  fit: BoxFit.contain)),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "DETAILS",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w800, fontSize: 27),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "FUTURE",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w800, fontSize: 27),
                  ),
                ),
                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Latest Debate",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                SizedBox(height: 10.0),
                //     Container(
                //       height: 400.0,

                // ),

                Column(children: [
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Topic:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 5),
                          Text("You have the time",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400)),
                        ]),
                  ),

                  Image(
                    image: AssetImage('assets/21.png'),
                  ),

                  // SizedBox(height:2),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      onTap: () {},
                      child: ReadMoreText(
                        'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                        trimLines: 4,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '...Read more',
                        trimExpandedText: ' Show Less',
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text("By January 2019, that number had grown to 49 out of the 55 AU member states, of w ",
                  //    style:TextStyle(color:Colors.white, fontSize:20, fontWeight: FontWeight.w300)),
                  // ),
                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(children: [
                      Row(
                        children: [
                          Text("Created by:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text("Trinity",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                      SizedBox(width: 50),
                      Row(
                        children: [
                          Text("Created on:",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                          Text("12/12/2020",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ]),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 200.0),
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text("Add Lead Opinion"),
                      hoverColor: Colors.red,
                      highlightColor: Colors.red,
                    ),
                  )
                ])
              ]))
          : Center(child: CircularProgressIndicator()),
    );
  }
}
