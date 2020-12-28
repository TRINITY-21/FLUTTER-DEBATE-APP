import 'package:debate/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:image_picker/image_picker.dart';

class UploadDebate extends StatefulWidget {
  @override
  _UploadDebateState createState() => _UploadDebateState();
}

class _UploadDebateState extends State<UploadDebate>
    with SingleTickerProviderStateMixin {
  bool circular = false;
  bool isLoaded = true;

  TextEditingController _about = TextEditingController();
  TextEditingController _dob = TextEditingController();
  final _globalkey = GlobalKey<FormState>();
  PickedFile _imageFile;
  TextEditingController _name = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  TextEditingController _profession = TextEditingController();
  TextEditingController _title = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height * (10 / 100),
            width: MediaQuery.of(context).size.width * (100 / 100),
            color: Colors.red,
            child: _imageFile == null
                ? Center(
                    child: InkWell(
                        onTap: () async {
                          showModalBottomSheet(
                            context: context,
                            builder: ((builder) => bottomSheet()),
                          );
                        },
                        child: Text("Upload your photo here",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  )
                : FittedBox(
                    fit: BoxFit.cover,
                    // child:
                    // Image(
                    //     image: FileImage(_imageFile),

                    //     fit: BoxFit.fill,
                    //   )
                  )),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.file_upload,
              color: Color(0xFFFFFFFF),
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget pdfUpload() {
    return Center(
      child: Stack(children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height * (10 / 100),
            width: MediaQuery.of(context).size.width * (100 / 100),
            color: Colors.red,
            child: Center(
              child: InkWell(
                  onTap: () async {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => bottomSheet()),
                    );
                  },
                  child: Text("Upload your pdf here",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
            )),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.file_upload,
              color: Color(0xFFFFFFFF),
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget docUpload() {
    return Center(
      child: Stack(children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height * (10 / 100),
            width: MediaQuery.of(context).size.width * (100 / 100),
            color: Colors.red,
            child: Center(
              child: InkWell(
                  onTap: () async {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => bottomSheet()),
                    );
                  },
                  child: Text("Upload your pdf here",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
            )),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.file_upload,
              color: Color(0xFFFFFFFF),
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget videoUpload() {
    return Center(
      child: Stack(children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height * (10 / 100),
            width: MediaQuery.of(context).size.width * (100 / 100),
            color: Colors.red,
            child: Center(
              child: InkWell(
                  onTap: () async {
                    showModalBottomSheet(
                      context: context,
                      builder: ((builder) => bottomSheet()),
                    );
                  },
                  child: Text("Upload your video here",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
            )),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.file_upload,
              color: Color(0xFFFFFFFF),
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose your photo",
            style: TextStyle(fontSize: 20.0, color: Colors.red[500]),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera, color: Colors.red[900]),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text(
                "Camera",
                style: TextStyle(fontSize: 20.0, color: Colors.red[900]),
              ),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image, color: Colors.red[900]),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text(
                "Gallery",
                style: TextStyle(fontSize: 20.0, color: Colors.red[900]),
              ),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget nameTextField() {
    return TextFormField(
      controller: _name,
      validator: (value) {
        if (value.isEmpty) return "Name can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red[900],
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Name",
        helperText: "Name can't be empty",
        hintText: "Dev Stack",
      ),
    );
  }

  Widget professionTextField() {
    return TextFormField(
      controller: _profession,
      validator: (value) {
        if (value.isEmpty) return "Profession can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red[900],
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Profession",
        helperText: "Profession can't be empty",
        hintText: "Full Stack Developer",
      ),
    );
  }

  Widget dobField() {
    return TextFormField(
      controller: _dob,
      validator: (value) {
        if (value.isEmpty) return "DOB can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red[900],
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Date Of Birth",
        helperText: "Provide DOB on dd/mm/yyyy",
        hintText: "01/01/2020",
      ),
    );
  }

  Widget titleTextField() {
    return TextFormField(
      controller: _title,
      validator: (value) {
        if (value.isEmpty) return "Title can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red[900],
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Title",
        helperText: "It can't be empty",
        hintText: "Flutter Developer",
      ),
    );
  }

  Widget aboutTextField() {
    return TextFormField(
      controller: _about,
      validator: (value) {
        if (value.isEmpty) return "About can't be empty";

        return null;
      },
      maxLines: 4,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.red[900],
        )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.orange,
          width: 2,
        )),
        labelText: "About",
        helperText: "Write about your opinion",
        hintText: "I am Dev Stack",
      ),
    );
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
                    "UPLOAD",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w800, fontSize: 27),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    "DEBATE",
                    style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w800, fontSize: 27),
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  height: 500.0,
                  child: Form(
                    key: _globalkey,
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      children: <Widget>[
                        aboutTextField(),
                        SizedBox(
                          height: 20,
                        ),
                        imageProfile(),
                        SizedBox(
                          height: 20,
                        ),
                        pdfUpload(),
                        SizedBox(
                          height: 20,
                        ),
                        docUpload(),
                        SizedBox(
                          height: 20,
                        ),
                        videoUpload(),
                        SizedBox(
                          height: 20,
                        ),
                        // dobField(),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        // titleTextField(),
                        // SizedBox(
                        //   height: 20,
                        // ),

                        InkWell(
                          onTap: () async {
                            setState(() {
                              circular = true;
                            });
                            if (_globalkey.currentState.validate()) {
                              Map<String, String> data = {
                                "name": _name.text,
                                "profession": _profession.text,
                                "DOB": _dob.text,
                                "titleline": _title.text,
                                "about": _about.text,
                              };

                              print(data);

                              // var response =
                              //     // await networkHandler.post("/api/profiles/add", data);

                              // if (response.statusCode == 200 ||
                              //     response.statusCode == 201) {
                              //   if (_imageFile.path != null) {
                              //     var imageResponse = await networkHandler.patchImage(
                              //         "/api/profiles/upload", _imageFile.path);

                              //         print('image response $imageResponse');

                              //     if (imageResponse.statusCode == 200) {
                              //       setState(() {
                              //         circular = false;
                              //       });

                              //     Navigator.of(context).pushAndRemoveUntil(
                              //         MaterialPageRoute(builder: (context) => HomePage()),
                              //         (route) => false);
                              //   }
                              // } else {
                              //   setState(() {
                              //     circular = false;
                              //   });
                              //   Navigator.of(context).pushAndRemoveUntil(
                              //       MaterialPageRoute(builder: (context) => HomePage()),
                              //       (route) => false);
                              // }
                              // }
                            }
                          },
                          child: Center(
                            child: Container(
                              width: 200,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.red[900],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: circular
                                    ? CircularProgressIndicator()
                                    : Text(
                                        "Submit",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]))
          : Center(child: CircularProgressIndicator()),
    );
  }
}
