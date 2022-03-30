import 'package:flutter/material.dart';
import 'settings.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(
      {required this.name,
      required this.email,
      required this.phone,
      required this.gender,
      required this.city,
      required this.country});
  final String name, email, phone, gender, city, country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return settings();
                    }));
                  },
                  child: Text('Go to edit'),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('images/user.png'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Text(
                          '${name}',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return settings();
                            }));
                          },
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
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 7, bottom: 7),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '7',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Hour(s) spent on ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Career learning',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        height: 80,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Career(s) Explored ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Name', style: kTextStyle),
                TextFormField(
                  readOnly: true,
                  initialValue: '${name}',
                ),
                SizedBox(height: 10),
                Text('Email', style: kTextStyle),
                TextFormField(
                  readOnly: true,
                  initialValue: '${email}',
                ),
                SizedBox(height: 10),
                Text('phone', style: kTextStyle),
                TextFormField(
                  readOnly: true,
                  initialValue: '${phone}',
                ),
                SizedBox(height: 10),
                Text('Gender', style: kTextStyle),
                TextFormField(
                  readOnly: true,
                  initialValue: '${gender}',
                ),
                SizedBox(height: 10),
                Text('City', style: kTextStyle),
                TextFormField(
                  readOnly: true,
                  initialValue: '${city}',
                ),
                SizedBox(height: 10),
                Text('Country', style: kTextStyle),
                TextFormField(
                  readOnly: true,
                  initialValue: '${country}',
                ),
                // Text('Name : ${name}'),
                // Text('email : ${email}'),
                // Text('phone : ${phone}'),
                // Text('gender : ${gender}'),
                // Text('city : ${city}'),
                // Text('country : ${country}'),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Update',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.black12, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
