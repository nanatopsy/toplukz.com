import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // You can add HTTP requests here to send form data to a server or API
      print('Name: $_name, Email: $_email');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Thank you for joining the waiting list!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Row(
            children: [
              Image(
                image: AssetImage('asset/toplukz.png'),
                height: 120,
                width: 120,
              ),
              SizedBox(width: 1000),
              // Padding(
              //   padding: const EdgeInsets.only(left: 50),
              //   child: GestureDetector(
              //     onTap: (){},
              //     child: Container(
              //       height: 50,
              //       width: 100,
              //       color: Colors.amber,
              //       child: const Center(
              //           child: Text('Join US'),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children:[
                  Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.black,
                   child:  const Padding(
                     padding: EdgeInsets.all(20),
                     child: Row(
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'A Warm Welcome',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Come and experience the personal touch at Blume Beauty Lounge. A bright and\n'
                                    'spacious space with relaxing and uplifting environment where you are cared for. We\n'
                                    'believe that everyone deserves to look and feel their best. At our professionally\n'
                                    'designed and elegant beauty lounge in Barrie, we help you Blume into your most\n'
                                    'radiant self. Our experienced and talented stylists will work with you to create a look\n'
                                    'that works for your personality and lifestyle.',style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                              ),
                            ],
                          ),
                         SizedBox(width: 200),
                         Image(
                           image: AssetImage('asset/3535.jpg'),
                         ),
                       ],
                     ),
                   ),
                  ),
                ]
              ),
              const Row(
                children: [
                  Image(
                    image: AssetImage('asset/ml.png'),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text('Time for a Change?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.red,
                          fontWeight:
                          FontWeight.bold,
                          fontSize: 35),
                        ),
                      ),
                      Text('As the premier beauty system that bridge the gab between beauty professionals and the end\n'
                          'users of beauty essentials, we love connecting with new members from our community every day.\n'
                          'With a relaxing atmosphere and exceptional attention to detail, we provide all our clients with\n'
                          'an experience they crave coming back for. Let us create a look to showcase your unique\n'
                          'individuality. We help discover the designs that accentuate your natural features while staying\n'
                          'true to your personal style. If you’re thinking about what style to go for next, speak to your\n'
                          'us, together we can find your perfect new look.',style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,

                      ),),
                       ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                      children:[
                        Container(
                          height: 360,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Our Service',style: TextStyle(
                                color: Colors.yellow[800],
                                fontSize: 30,
                                fontWeight: FontWeight.w400,
                              ),
                              ),
                            ),
                          ),
                        ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 80, left: 50),
                                  child: Center(
                                    child: SingleChildScrollView(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 300,
                                            child: const Image(image: AssetImage('asset/nail tech.png'),)
                                          ),
                                          const SizedBox(width: 15,),
                                          Container(
                                              height: 300,
                                              child: const Image(image: AssetImage('asset/hair stylist.jpg'),)
                                          ),
                                          SizedBox(width: 15,),
                                          Container(
                                              height: 300,
                                              child: const Image(image: AssetImage('asset/hair coloring.png'),)
                                          ),
                                          const SizedBox(width: 15,),
                                          Container(
                                              height: 300,
                                              child: const Image(image: AssetImage('asset/hair styling.png'),)
                                          ),
                                          SizedBox(width: 15,),
                                          Container(
                                              height: 300,
                                              child: const Image(image: AssetImage('asset/bridal.png'),)
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(),
                      ]
                  ),
                ],
              ),

              SizedBox(height: 50),
        Stack(
          children: [
            Container(
              child: const Image(
                  image: AssetImage('asset/gents.png'),),
            ),
            Center(
              child: new ClipRect(
                child: new BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: new BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.5)
                    ),
                    child: new Center(),
                  ),
                ),
              ),
            ),
            Container(
            padding: const EdgeInsets.only(left: 20,right: 800),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Join the Waiting List for Our Mobile App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value ?? '';
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value ?? '';
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Join Waiting List',style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal ,
                      color: Colors.red[300],),
                  ),
                  ),
                ],
              ),
            ),
          ),
    ]
        ),
              SizedBox(height: 20),

              Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Social Media Icons
                          Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 20,
                            children: [
                              IconButton(
                                icon: const Icon(FontAwesomeIcons.facebook, color: Colors.white),
                                onPressed: () => print('Facebook clicked'),
                              ),
                              IconButton(
                                icon: const Icon(FontAwesomeIcons.twitter, color: Colors.white),
                                onPressed: () => print('Twitter clicked'),
                              ),
                              IconButton(
                                icon: const Icon(FontAwesomeIcons.instagram, color: Colors.white),
                                onPressed: () => print('Instagram clicked'),
                              ),
                              IconButton(
                                icon: const Icon(FontAwesomeIcons.linkedin, color: Colors.white),
                                onPressed: () => print('LinkedIn clicked'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          // Contact Information
                          const Text(
                            'Contact Us: toplukz.com\n +233572258441',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(width: 20),
                          // Copyright Information
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 300),
                                child: Column(
                                  children: [
                                    Text(
                                      'About Us',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'At TOPLUKZ we\'re passionate about delivering exceptional beauty experiences.\n Our team carefully vets each beautician to ensure\n quality, reliability, and professionalism. ',
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 80),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Call To Action',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Book Now\nBecome a Beautician\nLearn More',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                      const Padding(
                        padding: EdgeInsets.only(top: 250),
                        child: Center(
                          child: Text(
                            '© 2024 snb i.t solutions. All rights reserved.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
              ),
            ],
          ),

        ),

      ),
    ]
    );
  }
}
