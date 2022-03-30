import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:profile/HomeScreen.dart';
import 'constants.dart';
import 'dart:io';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  // late File _image;
  // final picker = ImagePicker();
  //
  // Future getImageCamera() async {
  //   final pickedImage = await picker.pickImage(source: ImageSource.camera);
  //
  //   setState(() {
  //     if (pickedImage != null) {
  //       _image = File(pickedImage.path);
  //     } else {
  //       print('No image selected');
  //     }
  //   });
  // }
  //
  // Future getImageGallery() async {
  //   final pickedImage = await picker.pickImage(source: ImageSource.gallery);
  //
  //   setState(() {
  //     if (pickedImage != null) {
  //       _image = File(pickedImage.path);
  //     } else {
  //       print('No image selected');
  //     }
  //   });
  // }

  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _country = TextEditingController();

  List<String> syllabus = ['CBSE', 'ICSE', 'STATE BOARD'];
  String? selectedItem = 'CBSE';

  List<String> grade = ['Grade 10', 'Grade 11', 'Grade 12'];
  String? selectedGrade = 'Grade 10';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text('Edit'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('images/user.png'),
                      // child: ClipOval(
                      //   child: _image == null
                      //       ? Image.asset('images/user.png')
                      //       : Image.file(_image),
                      // ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Upload your image'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Take an image'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'About me',
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(height: 10),
                Text('Name', style: kTextStyle),
                TextField(
                  controller: _name,
                  decoration: InputDecoration(hintText: 'Enter your name'),
                ),
                SizedBox(height: 4),
                Text('Email', style: kTextStyle),
                TextField(
                  controller: _email,
                  decoration: InputDecoration(hintText: 'Enter your email'),
                ),
                SizedBox(height: 4),
                Text('Contact Number', style: kTextStyle),
                TextField(
                  controller: _phone,
                  decoration: InputDecoration(hintText: 'Enter your number'),
                ),
                SizedBox(height: 4),
                Text('Gender', style: kTextStyle),
                TextField(
                  controller: _gender,
                  decoration: InputDecoration(hintText: 'Enter your gender'),
                ),
                SizedBox(height: 4),
                Text(
                  'which school board are you in?',
                  style: kTextStyle,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    value: selectedItem,
                    items: syllabus
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (item) => setState(() => selectedItem = item),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'which grade are you in?',
                  style: kTextStyle,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton<String>(
                    value: selectedGrade,
                    items: grade
                        .map(
                          (item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        )
                        .toList(),
                    onChanged: (item) => setState(() => selectedGrade = item),
                  ),
                ),
                SizedBox(height: 4),
                Text('Country', style: kTextStyle),
                TextField(
                  controller: _country,
                  decoration: InputDecoration(hintText: 'Enter your country'),
                ),
                SizedBox(height: 4),
                Text('City', style: kTextStyle),
                TextField(
                  controller: _city,
                  decoration: InputDecoration(hintText: 'Enter your city'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                name: _name.text,
                                email: _email.text,
                                phone: _phone.text,
                                gender: _gender.text,
                                city: _city.text,
                                country: _country.text)));
                      },
                      child: Text(
                        'Update',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
