import 'package:debate/api/registerModel.dart';
import 'package:debate/registration/model/registerModel.dart';
import 'package:flutter/material.dart';
import 'package:debate/pages/debate.dart';
import 'networkHandler/network_handler.dart';
import 'package:debate/pages/contest.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  RegisterModel registerModel = RegisterModel();
  // CurrentUserModel currentUserModel = CurrentUserModel();
  NetworkHandler networkHandler = NetworkHandler();
  RegistersModel registersModel = RegistersModel();

  bool isLoaded = true;
  void getCurrentUser() async {
    final currentUser = await networkHandler.get('/api/users/auth');

    setState(() {
      registersModel = RegistersModel.fromJson(currentUser);
      isLoaded = true;
      print(registersModel.id);
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.close, color: Colors.white)),
        title: Text('Account', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF282828),
      ),
      body: isLoaded == true
          ? SingleChildScrollView(
              child: Container(
                color: Color(0xFF282828),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/man-156584__340.webp'),
                              radius: 30),
                          SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(registersModel.name,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0)),
                              SizedBox(height: 5.0),
                              Text(registersModel.email,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0)),
                              SizedBox(height: 5.0),
                              Text('Manage your Google Account',
                                  style: TextStyle(color: Colors.lightBlue))
                            ],
                          )
                        ],
                      ),
                    ),
                    Divider(color: Colors.white),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Contest()));
                      },
                      child: ListTile(
                        leading: Icon(Icons.content_paste_sharp,
                            color: Color(0xFF909090)),
                        title: Text('Contests',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Debate())));
                      },
                      child: ListTile(
                        leading: Icon(Icons.book, color: Color(0xFF909090)),
                        title: Text('Debates',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.article, color: Color(0xFF909090)),
                      title: Text('Articles',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            )
          : Text('Refreshing....'),
    );
  }
}
