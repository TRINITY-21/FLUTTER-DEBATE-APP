import 'dart:io';

// import 'package:debate/api/foodModel.dart';
// import 'package:debate/api/listModel.dart';
// import 'package:debate/ui/detailsPage.dart';
// import 'package:debate/ui/foodTabs.dart';
// import 'package:debate/ui/networkHandler/network_handler.dart';
// import 'package:debate/ui/search.dart';
import 'package:debate/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
                                  image:
                                      AssetImage('assets/logo.png'),
                                  fit: BoxFit.contain)),
                        ),
                        
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "DEBATE ABOUT THE",
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
                // Padding(
                //   padding: EdgeInsets.only(left: 15.0, right: 15.0),
                //   child: Container(
                //     padding: EdgeInsets.all(2),
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.1),
                //           blurRadius: 1.0,
                //           spreadRadius: 1.0,
                //           offset: Offset(0.0, 1.0),
                //         ),
                //       ],
                //       borderRadius: BorderRadius.circular(30),
                //       color: Colors.grey.withOpacity(0.1),
                //     ),
                //     child:Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child:  GestureDetector(
                //           // onTap: () {
                //           //   Navigator.of(context).push(MaterialPageRoute(
                //           //       builder: (context) => SearchFood()));
                //           // },
                //           child: Icon(Icons.search)),

                          
                //         ),

                //     // child: TextFormField(
                //     //   // onTap: () {},
                //     //   // onChanged: (value) {
                //     //   //   SearchFood(searchValue:value);
                //     //   //   print(value);
                //     //   // },
                //     //   decoration: InputDecoration(
                //     //     hintText: "Search Recipes",
                //     //     hintStyle: GoogleFonts.notoSans(
                //     //         fontWeight: FontWeight.w300, fontSize: 14),
                //     //     prefixIcon: Icon(Icons.search,
                //     //         color: Colors.grey.withOpacity(0.5)),
                //     //     border: InputBorder.none,
                //     //     fillColor: Colors.grey.withOpacity(0.5),
                //     //   ),
                //     // ),
                //   ),
                // ),
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
                Container(
                  height: 400.0,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index) {
                        // FoodModel _food = fmodel.book[index];

                        return Padding(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10,),
                            child: InkWell(
                                onTap: () {
                                //   Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //           builder: (context) => DetailsPage(
                                //               imgPath: _food.filePath,
                                //               fid: _food.id,
                                //               foodName: _food.title,
                                //               pricePerItem:
                                //                   _food.price.toString(),
                                //               heroTag: _food.id)));
                                },
                                child: Container(
                                    height: 250.0,
                                    width: 130.0,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.red.withOpacity(0.3),
                                          blurRadius: 6.0,
                                          spreadRadius: 4.0,
                                          offset: Offset(0.0, 3.0),
                                        ),
                                      ],
                                      color: Colors.red[600].withOpacity(1),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      children:[
                                         SizedBox(height:5),
                                         Padding(
                                           padding: const EdgeInsets.only(left:15.0),
                                           child: Row(
                                             mainAxisAlignment:MainAxisAlignment.start,
                                            children:[
                                              Text("Topic:",
                                              style:TextStyle(color:Colors.white, fontSize:24, fontWeight: FontWeight.bold)),

                                              SizedBox(width:5),

                                              Text("You have the time",
                                               style:TextStyle(color:Colors.white, fontSize:20, fontWeight: FontWeight.w400)),
                                            ]
                                           ),
                                         ),

                                        SizedBox(height:5),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("By January 2019, that number had grown to 49 out of the 55 AU member states, of w ",
                                           style:TextStyle(color:Colors.white, fontSize:20, fontWeight: FontWeight.w300)),
                                        ),
                                        SizedBox(height:5),

                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Row(
                                            children:[
                                              
                                                        Row(
                                            children:[
                                              Text("Created by:",
                                              style:TextStyle(color:Colors.white, fontSize:15, fontWeight: FontWeight.bold)),
                                              
                                              Text("Trinity",
                                              style:TextStyle(color:Colors.white, fontSize:15, fontWeight: FontWeight.w400)),

                                              

                                            
                                            ],), 

                                            SizedBox(width:50),  
                                            
                                           Row(
                                            children:[
                                              Text("Created on:",
                                              style:TextStyle(color:Colors.white, fontSize:15, fontWeight: FontWeight.bold)),
                                              
                                              Text("12/12/2020",
                                              style:TextStyle(color:Colors.white, fontSize:15, fontWeight: FontWeight.w400)),

                                            ],),

                                            ]
                                          ),
                                        ),

                                        Padding(
                                          
                                          padding: const EdgeInsets.only(right:200.0),
                                       
                                          child: FlatButton(
                                            onPressed:(){

                                            },
                                            color:Colors.blue,
                                            child:Text("Add Lead Opinion"),
                                            hoverColor: Colors.red, highlightColor: Colors.red,
                                          ),
                                        )

                                      ]
                                    )
                                
                                      
                        )));
                                    
          
                      }),
                ),

                //SizedBox(height: 10.0,),
                // Padding(
                //     padding: EdgeInsets.only(left: 15),
                //     child: TabBar(
                //       controller: _controller,
                //       isScrollable: true,
                //       indicatorColor: Colors.transparent,
                //       labelColor: Colors.black,
                //       unselectedLabelColor: Colors.grey.withOpacity(0.5),
                //       labelStyle: GoogleFonts.notoSans(
                //         fontSize: 16.0,
                //         fontWeight: FontWeight.w700,
                //       ),
                //       unselectedLabelStyle: GoogleFonts.notoSans(
                //         fontSize: 12.0,
                //         fontWeight: FontWeight.w500,
                //       ),
                //       tabs: [
                //         Tab(
                //           child: Text("FEATURED"),
                //         ),
                //         Tab(
                //           child: Text("COMBO"),
                //         ),
                //         Tab(
                //           child: Text("FAVORITES"),
                //         ),
                //         Tab(
                //           child: Text("RECOMMENDED"),
                //         ),
                //       ],
                //     )
                //     ),
                // Container(
                //     height: MediaQuery.of(context).size.height - 450,
                //     child: TabBarView(
                //       controller: _controller,
                //       children: [
                //         // FoodTab(),
                //         // FoodTab(),
                //         // FoodTab(),
                //         // FoodTab(),
                //       ],
                //     )
                //     ),
              ]),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }


}
